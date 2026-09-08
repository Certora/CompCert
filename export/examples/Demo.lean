/-
  Representative `clightgen -lean` output, hand-authored to reproduce EXACTLY the
  surface syntax the ExportLean*.ml printers emit, for every AST construct.
  Typechecking this against Clightdefs.lean validates both the support library
  and the emitted syntax.  (Not a faithful compile of any specific C file.)
-/
import Clightdefs
open CC

namespace Demo

namespace Info
def version : String := "3.17"
def build_number : String := ""
def bitsize : Nat := 64
def big_endian : Bool := false
def source_file : String := "demo.c"
def normalized : Bool := true
end Info

def _acc : Ident := identOfString "acc"
def _add : Ident := identOfString "add"
def _ext : Ident := identOfString "ext"
def _g : Ident := identOfString "g"
def _lbl : Ident := identOfString "lbl"
def _main : Ident := identOfString "main"
def _p : Ident := identOfString "p"
def _point : Ident := identOfString "point"
def _x : Ident := identOfString "x"
def _y : Ident := identOfString "y"
def _t'1 : Ident := Positive.ofNat 12

def v_g : GlobVar Ty := {
  gvar_info := tint,
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 42))],
  gvar_readonly := false,
  gvar_volatile := false
}

def v_arr : GlobVar Ty := {
  gvar_info := (tarray tint 3),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 1)), (InitData.Init_space 8), (InitData.Init_addrof _g (Integers.Ptrofs.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_add : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_x, tint), (_y, tint)],
  fn_vars := [],
  fn_temps := [(_acc, tint), (_t'1, tint)],
  fn_body :=
  (Stmt.Ssequence
    (Stmt.Sset _acc (Expr.Ebinop Binop.Oadd (Expr.Etempvar _x tint) (Expr.Etempvar _y tint) tint))
    (Stmt.Ssequence
      (swhile (Expr.Ebinop Binop.Olt (Expr.Etempvar _acc tint) (Expr.Econst_int (Integers.Int.repr 100) tint) tint)
        (Stmt.Sset _acc (Expr.Ebinop Binop.Oadd (Expr.Etempvar _acc tint) (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Etempvar _acc tint)
          (Stmt.Sswitch (Expr.Etempvar _acc tint)
            (LStmts.LScons (some 0) (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))
              (LStmts.LScons none Stmt.Sbreak LStmts.LSnil)))
          Stmt.Sskip)
        (Stmt.Ssequence
          (Stmt.Scall (some _t'1) (Expr.Evar _ext (Ty.Tfunction [tint] tint cc_default)) [(Expr.Etempvar _acc tint)])
          (Stmt.Sreturn (some (Expr.Etempvar _t'1 tint)))))))
}

def f_misc : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_p, (tptr (Ty.Tstruct _point noattr)))],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
  (Stmt.Ssequence
    (Stmt.Sassign (Expr.Efield (Expr.Ederef (Expr.Etempvar _p (tptr (Ty.Tstruct _point noattr))) (Ty.Tstruct _point noattr)) _x tint)
                  (Expr.Ecast (Expr.Econst_float (Floats.Float.ofBits (Integers.Int64.repr 0)) tdouble) tint))
    (Stmt.Ssequence
      (Stmt.Sbuiltin none (ExtFun.EF_memcpy 8 4) [] [])
      (Stmt.Ssequence
        (Stmt.Slabel _lbl (Stmt.Sloop Stmt.Scontinue (Stmt.Sgoto _lbl)))
        (Stmt.Sreturn none))))
}

def composites : List CompositeDef :=
[(CompositeDef.Composite _point SU.Struct [(Member.Member_plain _x tint), (Member.Member_plain _y tint)] noattr)]

def global_definitions : List (Ident × GlobDef FunDef Ty) :=
[(_g, GlobDef.Gvar v_g), (_add, GlobDef.Gfun (FunDef.Internal f_add)), (_ext, GlobDef.Gfun (FunDef.External (ExtFun.EF_external "ext" (mksignature [XType.Xint] XType.Xint cc_default)) [tint] tint cc_default))]

def public_idents : List Ident :=
[_add, _g, _ext]

def prog : Program :=
  mkprogram composites global_definitions public_idents _main

-- Coverage of the remaining constructors the program above did not use.
section Coverage
#check (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
#check (Expr.Eaddrof (Expr.Evar _g tint) (tptr tint))
#check (Expr.Esizeof tint tuint)
#check (Expr.Ealignof tint tuint)
#check (Expr.Econst_long (Integers.Int64.repr 5) tlong)
#check (Expr.Econst_single (Floats.Float32.ofBits (Integers.Int.repr 0)) tfloat)
#check (InitData.Init_int8 (Integers.Int.repr 1))
#check (InitData.Init_float64 (Floats.Float.ofBits (Integers.Int64.repr 0)))
#check (ExtFun.EF_vload Chunk.Mint32)
#check (ExtFun.EF_annot (Positive.ofNat 1) "note" [ATyp.Tint])
#check (tvolatile_alignas 3 tint)
#check (tvolatile tuchar)
end Coverage

end Demo
