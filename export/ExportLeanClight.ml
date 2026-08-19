(* *********************************************************************)
(*                                                                     *)
(*              The Compcert verified compiler                         *)
(*                                                                     *)
(*  Lean 4 backend for clightgen (AST-only, proof-of-concept).         *)
(*  Mirror of export/ExportClight.ml, emitting Lean syntax.            *)
(*                                                                     *)
(* *********************************************************************)

(** Export Clight as a Lean 4 file *)

open Format
open Camlcoq
open AST
open! Ctypes
open Cop
open Clight
open ExportLeanBase
open ExportLeanCtypes

(* Expressions *)

let name_unop = function
  | Onotbool -> "Unop.Onotbool"
  | Onotint -> "Unop.Onotint"
  | Oneg -> "Unop.Oneg"
  | Oabsfloat -> "Unop.Oabsfloat"

let name_binop = function
  | Oadd -> "Binop.Oadd"
  | Osub -> "Binop.Osub"
  | Omul -> "Binop.Omul"
  | Odiv -> "Binop.Odiv"
  | Omod -> "Binop.Omod"
  | Oand -> "Binop.Oand"
  | Oor -> "Binop.Oor"
  | Oxor -> "Binop.Oxor"
  | Oshl -> "Binop.Oshl"
  | Oshr -> "Binop.Oshr"
  | Oeq -> "Binop.Oeq"
  | Cop.One -> "Binop.One"
  | Olt -> "Binop.Olt"
  | Ogt -> "Binop.Ogt"
  | Ole -> "Binop.Ole"
  | Oge -> "Binop.Oge"

let rec expr p = function
  | Evar(id, t) ->
      fprintf p "(Expr.Evar %a %a)" ident id typ t
  | Etempvar(id, t) ->
      fprintf p "(Expr.Etempvar %a %a)" ident id typ t
  | Ederef(a1, t) ->
      fprintf p "@[<hov 2>(Expr.Ederef@ %a@ %a)@]" expr a1 typ t
  | Efield(a1, f, t) ->
      fprintf p "@[<hov 2>(Expr.Efield@ %a@ %a@ %a)@]" expr a1 ident f typ t
  | Econst_int(n, t) ->
      fprintf p "(Expr.Econst_int %a %a)" coqint n typ t
  | Econst_float(n, t) ->
      fprintf p "(Expr.Econst_float %a %a)" coqfloat n typ t
  | Econst_long(n, t) ->
      fprintf p "(Expr.Econst_long %a %a)" coqint64 n typ t
  | Econst_single(n, t) ->
      fprintf p "(Expr.Econst_single %a %a)" coqsingle n typ t
  | Eunop(op, a1, t) ->
      fprintf p "@[<hov 2>(Expr.Eunop %s@ %a@ %a)@]"
         (name_unop op) expr a1 typ t
  | Eaddrof(a1, t) ->
      fprintf p "@[<hov 2>(Expr.Eaddrof@ %a@ %a)@]" expr a1 typ t
  | Ebinop(op, a1, a2, t) ->
      fprintf p "@[<hov 2>(Expr.Ebinop %s@ %a@ %a@ %a)@]"
         (name_binop op) expr a1 expr a2 typ t
  | Ecast(a1, t) ->
      fprintf p "@[<hov 2>(Expr.Ecast@ %a@ %a)@]" expr a1 typ t
  | Esizeof(t1, t) ->
      fprintf p "(Expr.Esizeof %a %a)" typ t1 typ t
  | Ealignof(t1, t) ->
      fprintf p "(Expr.Ealignof %a %a)" typ t1 typ t

(* Statements *)

let rec stmt p = function
  | Sskip ->
      fprintf p "Stmt.Sskip"
  | Sassign(e1, e2) ->
      fprintf p "@[<hov 2>(Stmt.Sassign@ %a@ %a)@]" expr e1 expr e2
  | Sset(id, e2) ->
      fprintf p "@[<hov 2>(Stmt.Sset %a@ %a)@]" ident id expr e2
  | Scall(optid, e1, el) ->
      fprintf p "@[<hov 2>(Stmt.Scall %a@ %a@ %a)@]"
        (print_option ident) optid expr e1 (print_list expr) el
  | Sbuiltin(optid, ef, tyl, el) ->
      fprintf p "@[<hov 2>(Stmt.Sbuiltin %a@ %a@ %a@ %a)@]"
        (print_option ident) optid
        external_function ef
        typlist tyl
        (print_list expr) el
  | Ssequence(Sskip, s2) ->
      stmt p s2
  | Ssequence(s1, Sskip) ->
      stmt p s1
  | Ssequence(s1, s2) ->
      fprintf p "@[<hv 2>(Stmt.Ssequence@ %a@ %a)@]" stmt s1 stmt s2
  | Sifthenelse(e, s1, s2) ->
      fprintf p "@[<hv 2>(Stmt.Sifthenelse %a@ %a@ %a)@]" expr e stmt s1 stmt s2
  | Sloop (Ssequence (Sifthenelse(e, Sskip, Sbreak), s), Sskip) ->
      fprintf p "@[<hv 2>(swhile@ %a@ %a)@]" expr e stmt s
  | Sloop (Ssequence (Ssequence(Sskip, Sifthenelse(e, Sskip, Sbreak)), s), Sskip) ->
      fprintf p "@[<hv 2>(swhile@ %a@ %a)@]" expr e stmt s
  | Sloop(s1, s2) ->
      fprintf p "@[<hv 2>(Stmt.Sloop@ %a@ %a)@]" stmt s1 stmt s2
  | Sbreak ->
      fprintf p "Stmt.Sbreak"
  | Scontinue ->
      fprintf p "Stmt.Scontinue"
  | Sswitch(e, cases) ->
      fprintf p "@[<hv 2>(Stmt.Sswitch %a@ %a)@]" expr e lblstmts cases
  | Sreturn e ->
      fprintf p "@[<hv 2>(Stmt.Sreturn %a)@]" (print_option expr) e
  | Slabel(lbl, s1) ->
      fprintf p "@[<hv 2>(Stmt.Slabel %a@ %a)@]" ident lbl stmt s1
  | Sgoto lbl ->
      fprintf p "(Stmt.Sgoto %a)" ident lbl

and lblstmts p = function
  | LSnil ->
      (fprintf p "LStmts.LSnil")
  | LScons(lbl, s, ls) ->
      fprintf p "@[<hv 2>(LStmts.LScons %a@ %a@ %a)@]"
              (print_option coqZ) lbl stmt s lblstmts ls

(* Global definitions *)

let print_function p (id, f) =
  fprintf p "def f%s : Function := {@ " (sanitize (extern_atom id));
  fprintf p "  fn_return := %a,@ " typ f.fn_return;
  fprintf p "  fn_callconv := %a,@ " callconv f.fn_callconv;
  fprintf p "  fn_params := %a,@ " (print_list (print_pair ident typ)) f.fn_params;
  fprintf p "  fn_vars := %a,@ " (print_list (print_pair ident typ)) f.fn_vars;
  fprintf p "  fn_temps := %a,@ " (print_list (print_pair ident typ)) f.fn_temps;
  fprintf p "  fn_body :=@ ";
  stmt p f.fn_body;
  fprintf p "@ }@ @ "

let print_globdef p (id, gd) =
  match gd with
  | Gfun(Ctypes.Internal f) -> print_function p (id, f)
  | Gfun(Ctypes.External _) -> ()
  | Gvar v -> print_variable typ p (id, v)

let print_ident_globdef p = function
  | (id, Gfun(Ctypes.Internal f)) ->
      fprintf p "(%a, GlobDef.Gfun (FunDef.Internal f%s))"
        ident id (sanitize (extern_atom id))
  | (id, Gfun(Ctypes.External(ef, targs, tres, cc))) ->
      fprintf p "@[<hov 2>(%a,@ @[<hov 2>GlobDef.Gfun (FunDef.External %a@ %a@ %a@ %a))@]@]"
        ident id external_function ef typlist targs typ tres callconv cc
  | (id, Gvar v) ->
      fprintf p "(%a, GlobDef.Gvar v%s)" ident id (sanitize (extern_atom id))

(* The prologue *)

let prologue = "\
import Clightdefs\n\
open CC\n"

(* Naming the compiler-generated temporaries occurring in the program *)

let rec name_expr = function
  | Evar(id, t) -> ()
  | Etempvar(id, t) -> name_temporary id
  | Ederef(a1, t) -> name_expr a1
  | Efield(a1, f, t) -> name_expr a1
  | Econst_int(n, t) -> ()
  | Econst_float(n, t) -> ()
  | Econst_long(n, t) -> ()
  | Econst_single(n, t) -> ()
  | Eunop(op, a1, t) -> name_expr a1
  | Eaddrof(a1, t) -> name_expr a1
  | Ebinop(op, a1, a2, t) -> name_expr a1; name_expr a2
  | Ecast(a1, t) -> name_expr a1
  | Esizeof(t1, t) -> ()
  | Ealignof(t1, t) -> ()

let rec name_stmt = function
  | Sskip -> ()
  | Sassign(e1, e2) -> name_expr e1; name_expr e2
  | Sset(id, e2) -> name_temporary id; name_expr e2
  | Scall(optid, e1, el) ->
      name_opt_temporary optid; name_expr e1; List.iter name_expr el
  | Sbuiltin(optid, ef, tyl, el) ->
      name_opt_temporary optid; List.iter name_expr el
  | Ssequence(s1, s2) -> name_stmt s1; name_stmt s2
  | Sifthenelse(e, s1, s2) -> name_expr e; name_stmt s1; name_stmt s2
  | Sloop(s1, s2) -> name_stmt s1; name_stmt s2
  | Sbreak -> ()
  | Scontinue -> ()
  | Sswitch(e, cases) -> name_expr e; name_lblstmts cases
  | Sreturn (Some e) -> name_expr e
  | Sreturn None -> ()
  | Slabel(lbl, s1) -> name_stmt s1
  | Sgoto lbl -> ()

and name_lblstmts = function
  | LSnil -> ()
  | LScons(lbl, s, ls) -> name_stmt s; name_lblstmts ls

let name_function f =
  List.iter (fun (id, ty) -> name_temporary id) f.fn_temps;
  name_stmt f.fn_body

let name_globdef (id, g) =
  match g with
  | Gfun(Ctypes.Internal f) -> name_function f
  | _ -> ()

let name_program p =
  List.iter name_globdef p.Ctypes.prog_defs

(* All together *)

let print_program p prog sourcefile normalized =
  Hashtbl.clear temp_names;
  name_program prog;
  fprintf p "@[<v 0>";
  fprintf p "%s" prologue;
  fprintf p "@ ";
  print_gen_info ~sourcefile ~normalized p;
  define_idents p;
  List.iter (print_globdef p) prog.Ctypes.prog_defs;
  fprintf p "def composites : List CompositeDef :=@ ";
  print_list print_composite_definition p prog.prog_types;
  fprintf p "@ @ ";
  fprintf p "def global_definitions : List (Ident × GlobDef FunDef Ty) :=@ ";
  print_list print_ident_globdef p prog.Ctypes.prog_defs;
  fprintf p "@ @ ";
  fprintf p "def public_idents : List Ident :=@ ";
  print_list ident p prog.Ctypes.prog_public;
  fprintf p "@ @ ";
  fprintf p "def prog : Program :=@ ";
  fprintf p "  mkprogram composites global_definitions public_idents %a@ @ "
            ident prog.Ctypes.prog_main;
  fprintf p "@]@."
