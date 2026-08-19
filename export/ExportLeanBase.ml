(* *********************************************************************)
(*                                                                     *)
(*              The Compcert verified compiler                         *)
(*                                                                     *)
(*  Lean 4 backend for clightgen (AST-only, proof-of-concept).         *)
(*  Mirror of export/ExportBase.ml, emitting Lean syntax instead of    *)
(*  Rocq/Coq syntax.  See export/Clightdefs.lean for the support       *)
(*  library the generated files rely on.                               *)
(*                                                                     *)
(* *********************************************************************)

open Format
open Camlcoq
open AST

(* Options, lists, pairs *)

let print_option fn p = function
  | None -> fprintf p "none"
  | Some x -> fprintf p "(some %a)" fn x

let print_pair fn1 fn2 p (x1, x2) =
  fprintf p "@[<hov 1>(%a,@ %a)@]" fn1 x1 fn2 x2

let print_list fn p l =
  match l with
  | [] ->
      fprintf p "[]"
  | _ ->
      fprintf p "@[<hov 1>[";
      let rec plist = function
      | [] -> ()
      | [x] -> fn p x
      | hd :: tl -> fprintf p "%a,@ " fn hd; plist tl
      in plist l;
      fprintf p "]@]"

(* Numbers *)

let coqint p n =
  let n = camlint_of_coqint n in
  if n >= 0l
  then fprintf p "(Integers.Int.repr %ld)" n
  else fprintf p "(Integers.Int.repr (%ld))" n

let coqptrofs p n =
  let s = Z.to_string n in
  if Z.ge n Z.zero
  then fprintf p "(Integers.Ptrofs.repr %s)" s
  else fprintf p "(Integers.Ptrofs.repr (%s))" s

let coqint64 p n =
  let n = camlint64_of_coqint n in
  if n >= 0L
  then fprintf p "(Integers.Int64.repr %Ld)" n
  else fprintf p "(Integers.Int64.repr (%Ld))" n

let coqfloat p n =
  fprintf p "(Floats.Float.ofBits %a)" coqint64 (Floats.Float.to_bits n)

let coqsingle p n =
  fprintf p "(Floats.Float32.ofBits %a)" coqint (Floats.Float32.to_bits n)

let positive p n =
  fprintf p "(Positive.ofNat %s)" (Z.to_string (Z.Zpos n))

let coqN p n =
  fprintf p "%s" (Z.to_string (Z.of_N n))

let coqZ p n =
  if Z.ge n Z.zero
  then fprintf p "%s" (Z.to_string n)
  else fprintf p "(%s)" (Z.to_string n)

(* Lean strings *)

let coqstring p s =
  fprintf p "\"%s\"" s

(* Identifiers *)

exception Not_an_identifier

let sanitize_char = function
  | 'A'..'Z' | 'a'..'z' | '0'..'9' | '_' as c -> c
  | ' ' | '$' -> '_'
  | _ -> raise Not_an_identifier

let sanitize s =
  if s <> ""
  then "_" ^ String.map sanitize_char s
  else "empty_ident"

let temp_names : (ident, string) Hashtbl.t = Hashtbl.create 17

let ident p id =
  try
    let s = Hashtbl.find string_of_atom id in
    fprintf p "%s" (sanitize s)
  with Not_found | Not_an_identifier ->
  try
    let s = Hashtbl.find temp_names id in
    fprintf p "%s" s
  with Not_found ->
    positive p id

let iter_hashtbl_sorted (h: ('a, string) Hashtbl.t) (f: 'a * string -> unit) =
  List.iter f
    (List.fast_sort (fun (k1, d1) (k2, d2) -> String.compare d1 d2)
      (Hashtbl.fold (fun k d accu -> (k, d) :: accu) h []))

let define_idents p =
  iter_hashtbl_sorted
    string_of_atom
    (fun (id, name) ->
      try
        if !use_canonical_atoms && id = pos_of_string name then
          fprintf p "def %s : Ident := identOfString \"%s\"@ "
                    (sanitize name) name
        else
          fprintf p "def %s : Ident := %a@ "
                    (sanitize name) positive id
      with Not_an_identifier ->
        ());
  iter_hashtbl_sorted
    temp_names
    (fun (id, name) ->
      fprintf p "def %s : Ident := %a@ "
                name positive id);
  fprintf p "@ "

let name_temporary t =
  if not (Hashtbl.mem string_of_atom t) && not (Hashtbl.mem temp_names t)
  then begin
    let t0 = first_unused_ident () in
    let d = Z.succ (Z.sub (Z.Zpos t) (Z.Zpos t0)) in
    Hashtbl.add temp_names t ("_t'" ^ Z.to_string d)
  end

let name_opt_temporary = function
  | None -> ()
  | Some id -> name_temporary id

(* External functions *)

let asttype p t =
  fprintf p "%s"
     (match t with
      | AST.Tint -> "ATyp.Tint"
      | AST.Tfloat -> "ATyp.Tfloat"
      | AST.Tlong -> "ATyp.Tlong"
      | AST.Tsingle -> "ATyp.Tsingle"
      | AST.Tany32 -> "ATyp.Tany32"
      | AST.Tany64 -> "ATyp.Tany64")

let astxtype p t =
  fprintf p "%s"
     (match t with
      | AST.Xbool -> "XType.Xbool"
      | AST.Xint8signed -> "XType.Xint8signed"
      | AST.Xint8unsigned -> "XType.Xint8unsigned"
      | AST.Xint16signed -> "XType.Xint16signed"
      | AST.Xint16unsigned -> "XType.Xint16unsigned"
      | AST.Xint -> "XType.Xint"
      | AST.Xfloat -> "XType.Xfloat"
      | AST.Xlong -> "XType.Xlong"
      | AST.Xsingle -> "XType.Xsingle"
      | AST.Xptr -> "XType.Xptr"
      | AST.Xany32 -> "XType.Xany32"
      | AST.Xany64 -> "XType.Xany64"
      | AST.Xvoid -> "XType.Xvoid")

let name_of_chunk = function
  | Mbool -> "Chunk.Mbool"
  | Mint8signed -> "Chunk.Mint8signed"
  | Mint8unsigned -> "Chunk.Mint8unsigned"
  | Mint16signed -> "Chunk.Mint16signed"
  | Mint16unsigned -> "Chunk.Mint16unsigned"
  | Mint32 -> "Chunk.Mint32"
  | Mint64 -> "Chunk.Mint64"
  | Mfloat32 -> "Chunk.Mfloat32"
  | Mfloat64 -> "Chunk.Mfloat64"
  | Many32 -> "Chunk.Many32"
  | Many64 -> "Chunk.Many64"

let callconv p cc =
  if cc = cc_default
  then fprintf p "cc_default"
  else fprintf p "{ cc_vararg := %a, cc_unproto := %b, cc_structret := %b }"
                  (print_option coqZ) cc.cc_vararg cc.cc_unproto cc.cc_structret

let signatur p sg =
  fprintf p "@[<hov 2>(mksignature@ %a@ %a@ %a)@]"
     (print_list astxtype) sg.sig_args
     astxtype sg.sig_res
     callconv sg.sig_cc

let external_function p = function
  | EF_external(name, sg) ->
      fprintf p "@[<hov 2>(ExtFun.EF_external %a@ %a)@]" coqstring name signatur sg
  | EF_builtin(name, sg) ->
      fprintf p "@[<hov 2>(ExtFun.EF_builtin %a@ %a)@]" coqstring name signatur sg
  | EF_runtime(name, sg) ->
      fprintf p "@[<hov 2>(ExtFun.EF_runtime %a@ %a)@]" coqstring name signatur sg
  | EF_vload chunk ->
      fprintf p "(ExtFun.EF_vload %s)" (name_of_chunk chunk)
  | EF_vstore chunk ->
      fprintf p "(ExtFun.EF_vstore %s)" (name_of_chunk chunk)
  | EF_malloc -> fprintf p "ExtFun.EF_malloc"
  | EF_free -> fprintf p "ExtFun.EF_free"
  | EF_memcpy(sz, al) ->
      fprintf p "(ExtFun.EF_memcpy %ld %ld)" (Z.to_int32 sz) (Z.to_int32 al)
  | EF_annot(kind, text, targs) ->
      fprintf p "(ExtFun.EF_annot %a %a %a)"
                positive kind coqstring text (print_list asttype) targs
  | EF_annot_val(kind, text, targ) ->
      fprintf p "(ExtFun.EF_annot_val %a %a %a)"
                positive kind coqstring text asttype targ
  | EF_debug(kind, text, targs) ->
      fprintf p "(ExtFun.EF_debug %a %a %a)"
                positive kind positive text (print_list asttype) targs
  | EF_inline_asm(text, sg, clob) ->
      fprintf p "@[<hov 2>(ExtFun.EF_inline_asm %a@ %a@ %a)@]"
              coqstring text
              signatur sg
              (print_list coqstring) clob

(* Variables *)

let init_data p = function
  | Init_int8 n -> fprintf p "(InitData.Init_int8 %a)" coqint n
  | Init_int16 n -> fprintf p "(InitData.Init_int16 %a)" coqint n
  | Init_int32 n -> fprintf p "(InitData.Init_int32 %a)" coqint n
  | Init_int64 n -> fprintf p "(InitData.Init_int64 %a)" coqint64 n
  | Init_float32 n -> fprintf p "(InitData.Init_float32 %a)" coqsingle n
  | Init_float64 n -> fprintf p "(InitData.Init_float64 %a)" coqfloat n
  | Init_space n -> fprintf p "(InitData.Init_space %a)" coqZ n
  | Init_addrof(id,ofs) -> fprintf p "(InitData.Init_addrof %a %a)" ident id coqptrofs ofs

let print_variable print_info p (id, v) =
  fprintf p "def v%s : GlobVar Ty := {@ " (sanitize (extern_atom id));
  fprintf p "  gvar_info := %a,@ " print_info v.gvar_info;
  fprintf p "  gvar_init := %a,@ " (print_list init_data) v.gvar_init;
  fprintf p "  gvar_readonly := %B,@ " v.gvar_readonly;
  fprintf p "  gvar_volatile := %B@ " v.gvar_volatile;
  fprintf p "}@ @ "

(* Information about this run of clightgen *)

let print_gen_info ~sourcefile ?normalized p =
  fprintf p "@[<v 2>namespace Info";
  fprintf p "@ def version : String := %S" Version.version;
  fprintf p "@ def build_number : String := %S" Version.buildnr;
  fprintf p "@ def build_tag : String := %S" Version.tag;
  fprintf p "@ def build_branch : String := %S" Version.branch;
  fprintf p "@ def arch : String := %S" Configuration.arch;
  fprintf p "@ def model : String := %S" Configuration.model;
  fprintf p "@ def abi : String := %S" Configuration.abi;
  fprintf p "@ def bitsize : Nat := %d" (if Archi.ptr64 then 64 else 32);
  fprintf p "@ def big_endian : Bool := %B" Archi.big_endian;
  fprintf p "@ def source_file : String := %S" sourcefile;
  begin match normalized with
  | None -> ()
  | Some b -> fprintf p "@ def normalized : Bool := %B" b
  end;
  fprintf p "@]@ end Info@ @ "
