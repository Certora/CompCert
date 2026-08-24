import Clightdefs
open CC

namespace Treesep

namespace Info
  def version : String := "3.17"
  def build_number : String := ""
  def build_tag : String := ""
  def build_branch : String := ""
  def arch : String := "aarch64"
  def model : String := "default"
  def abi : String := "apple"
  def bitsize : Nat := 64
  def big_endian : Bool := false
  def source_file : String := "treesep.c"
  def normalized : Bool := true
end Info

def __1354 : Ident := identOfString "_1354"
def __1355 : Ident := identOfString "_1355"
def ___builtin_annot : Ident := identOfString "__builtin_annot"
def ___builtin_annot_intval : Ident := identOfString "__builtin_annot_intval"
def ___builtin_bswap : Ident := identOfString "__builtin_bswap"
def ___builtin_bswap16 : Ident := identOfString "__builtin_bswap16"
def ___builtin_bswap32 : Ident := identOfString "__builtin_bswap32"
def ___builtin_bswap64 : Ident := identOfString "__builtin_bswap64"
def ___builtin_cls : Ident := identOfString "__builtin_cls"
def ___builtin_clsl : Ident := identOfString "__builtin_clsl"
def ___builtin_clsll : Ident := identOfString "__builtin_clsll"
def ___builtin_clz : Ident := identOfString "__builtin_clz"
def ___builtin_clzl : Ident := identOfString "__builtin_clzl"
def ___builtin_clzll : Ident := identOfString "__builtin_clzll"
def ___builtin_ctz : Ident := identOfString "__builtin_ctz"
def ___builtin_ctzl : Ident := identOfString "__builtin_ctzl"
def ___builtin_ctzll : Ident := identOfString "__builtin_ctzll"
def ___builtin_debug : Ident := identOfString "__builtin_debug"
def ___builtin_expect : Ident := identOfString "__builtin_expect"
def ___builtin_fabs : Ident := identOfString "__builtin_fabs"
def ___builtin_fabsf : Ident := identOfString "__builtin_fabsf"
def ___builtin_fmadd : Ident := identOfString "__builtin_fmadd"
def ___builtin_fmax : Ident := identOfString "__builtin_fmax"
def ___builtin_fmin : Ident := identOfString "__builtin_fmin"
def ___builtin_fmsub : Ident := identOfString "__builtin_fmsub"
def ___builtin_fnmadd : Ident := identOfString "__builtin_fnmadd"
def ___builtin_fnmsub : Ident := identOfString "__builtin_fnmsub"
def ___builtin_fsqrt : Ident := identOfString "__builtin_fsqrt"
def ___builtin_membar : Ident := identOfString "__builtin_membar"
def ___builtin_memcpy_aligned : Ident := identOfString "__builtin_memcpy_aligned"
def ___builtin_sel : Ident := identOfString "__builtin_sel"
def ___builtin_sqrt : Ident := identOfString "__builtin_sqrt"
def ___builtin_unreachable : Ident := identOfString "__builtin_unreachable"
def ___builtin_va_arg : Ident := identOfString "__builtin_va_arg"
def ___builtin_va_copy : Ident := identOfString "__builtin_va_copy"
def ___builtin_va_end : Ident := identOfString "__builtin_va_end"
def ___builtin_va_start : Ident := identOfString "__builtin_va_start"
def ___compcert_i64_dtos : Ident := identOfString "__compcert_i64_dtos"
def ___compcert_i64_dtou : Ident := identOfString "__compcert_i64_dtou"
def ___compcert_i64_sar : Ident := identOfString "__compcert_i64_sar"
def ___compcert_i64_sdiv : Ident := identOfString "__compcert_i64_sdiv"
def ___compcert_i64_shl : Ident := identOfString "__compcert_i64_shl"
def ___compcert_i64_shr : Ident := identOfString "__compcert_i64_shr"
def ___compcert_i64_smod : Ident := identOfString "__compcert_i64_smod"
def ___compcert_i64_smulh : Ident := identOfString "__compcert_i64_smulh"
def ___compcert_i64_stod : Ident := identOfString "__compcert_i64_stod"
def ___compcert_i64_stof : Ident := identOfString "__compcert_i64_stof"
def ___compcert_i64_udiv : Ident := identOfString "__compcert_i64_udiv"
def ___compcert_i64_umod : Ident := identOfString "__compcert_i64_umod"
def ___compcert_i64_umulh : Ident := identOfString "__compcert_i64_umulh"
def ___compcert_i64_utod : Ident := identOfString "__compcert_i64_utod"
def ___compcert_i64_utof : Ident := identOfString "__compcert_i64_utof"
def ___compcert_va_composite : Ident := identOfString "__compcert_va_composite"
def ___compcert_va_float64 : Ident := identOfString "__compcert_va_float64"
def ___compcert_va_int32 : Ident := identOfString "__compcert_va_int32"
def ___compcert_va_int64 : Ident := identOfString "__compcert_va_int64"
def _adler : Ident := identOfString "adler"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _bi_buf : Ident := identOfString "bi_buf"
def _bi_used : Ident := identOfString "bi_used"
def _bi_valid : Ident := identOfString "bi_valid"
def _bl_count : Ident := identOfString "bl_count"
def _bl_desc : Ident := identOfString "bl_desc"
def _bl_tree : Ident := identOfString "bl_tree"
def _block_start : Ident := identOfString "block_start"
def _code : Ident := identOfString "code"
def _comm_max : Ident := identOfString "comm_max"
def _comment : Ident := identOfString "comment"
def _ct_data_s : Ident := identOfString "ct_data_s"
def _d_desc : Ident := identOfString "d_desc"
def _dad : Ident := identOfString "dad"
def _data_type : Ident := identOfString "data_type"
def _depth : Ident := identOfString "depth"
def _dl : Ident := identOfString "dl"
def _done : Ident := identOfString "done"
def _dyn_dtree : Ident := identOfString "dyn_dtree"
def _dyn_ltree : Ident := identOfString "dyn_ltree"
def _dyn_tree : Ident := identOfString "dyn_tree"
def _extra : Ident := identOfString "extra"
def _extra_len : Ident := identOfString "extra_len"
def _extra_max : Ident := identOfString "extra_max"
def _fc : Ident := identOfString "fc"
def _freq : Ident := identOfString "freq"
def _get_freq : Ident := identOfString "get_freq"
def _good_match : Ident := identOfString "good_match"
def _gz_header_s : Ident := identOfString "gz_header_s"
def _gzhead : Ident := identOfString "gzhead"
def _gzindex : Ident := identOfString "gzindex"
def _hash_bits : Ident := identOfString "hash_bits"
def _hash_mask : Ident := identOfString "hash_mask"
def _hash_shift : Ident := identOfString "hash_shift"
def _hash_size : Ident := identOfString "hash_size"
def _hcrc : Ident := identOfString "hcrc"
def _head : Ident := identOfString "head"
def _heap : Ident := identOfString "heap"
def _heap_len : Ident := identOfString "heap_len"
def _heap_max : Ident := identOfString "heap_max"
def _high_water : Ident := identOfString "high_water"
def _ins_h : Ident := identOfString "ins_h"
def _insert : Ident := identOfString "insert"
def _internal_state : Ident := identOfString "internal_state"
def _k : Ident := identOfString "k"
def _l_desc : Ident := identOfString "l_desc"
def _last_flush : Ident := identOfString "last_flush"
def _len : Ident := identOfString "len"
def _level : Ident := identOfString "level"
def _lit_bufsize : Ident := identOfString "lit_bufsize"
def _lookahead : Ident := identOfString "lookahead"
def _main : Ident := identOfString "main"
def _match_available : Ident := identOfString "match_available"
def _match_length : Ident := identOfString "match_length"
def _match_start : Ident := identOfString "match_start"
def _matches : Ident := identOfString "matches"
def _max_chain_length : Ident := identOfString "max_chain_length"
def _max_code : Ident := identOfString "max_code"
def _max_lazy_match : Ident := identOfString "max_lazy_match"
def _method : Ident := identOfString "method"
def _msg : Ident := identOfString "msg"
def _name : Ident := identOfString "name"
def _name_max : Ident := identOfString "name_max"
def _next_in : Ident := identOfString "next_in"
def _next_out : Ident := identOfString "next_out"
def _nice_match : Ident := identOfString "nice_match"
def _opaque : Ident := identOfString "opaque"
def _opt_len : Ident := identOfString "opt_len"
def _os : Ident := identOfString "os"
def _pending : Ident := identOfString "pending"
def _pending_buf : Ident := identOfString "pending_buf"
def _pending_buf_size : Ident := identOfString "pending_buf_size"
def _pending_out : Ident := identOfString "pending_out"
def _prev : Ident := identOfString "prev"
def _prev_length : Ident := identOfString "prev_length"
def _prev_match : Ident := identOfString "prev_match"
def _reserved : Ident := identOfString "reserved"
def _s : Ident := identOfString "s"
def _set_freq : Ident := identOfString "set_freq"
def _slid : Ident := identOfString "slid"
def _stat_desc : Ident := identOfString "stat_desc"
def _state : Ident := identOfString "state"
def _static_len : Ident := identOfString "static_len"
def _static_tree_desc_s : Ident := identOfString "static_tree_desc_s"
def _status : Ident := identOfString "status"
def _strategy : Ident := identOfString "strategy"
def _strm : Ident := identOfString "strm"
def _strstart : Ident := identOfString "strstart"
def _sym_buf : Ident := identOfString "sym_buf"
def _sym_end : Ident := identOfString "sym_end"
def _sym_next : Ident := identOfString "sym_next"
def _text : Ident := identOfString "text"
def _time : Ident := identOfString "time"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
def _tree_desc_s : Ident := identOfString "tree_desc_s"
def _v : Ident := identOfString "v"
def _w_bits : Ident := identOfString "w_bits"
def _w_mask : Ident := identOfString "w_mask"
def _w_size : Ident := identOfString "w_size"
def _window : Ident := identOfString "window"
def _window_size : Ident := identOfString "window_size"
def _wrap : Ident := identOfString "wrap"
def _xflags : Ident := identOfString "xflags"
def _z_stream_s : Ident := identOfString "z_stream_s"
def _zalloc : Ident := identOfString "zalloc"
def _zfree : Ident := identOfString "zfree"
def _t'1 : Ident := (Positive.ofNat 128)

def f_get_freq : Function := {
  fn_return := tushort,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))), (_k, tint)],
  fn_vars := [],
  fn_temps := [(_t'1, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _t'1
    (Expr.Efield
      (Expr.Efield
        (Expr.Ederef
          (Expr.Ebinop Binop.Oadd
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _dyn_ltree
              (tarray (Ty.Tstruct _ct_data_s noattr) 573))
            (Expr.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
          (Ty.Tstruct _ct_data_s noattr)) _fc (Ty.Tunion __1354 noattr))
      _freq tushort))
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tushort))))
}

def f_set_freq : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))), (_k, tint),
                (_v, tushort)],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
(Stmt.Sassign
  (Expr.Efield
    (Expr.Efield
      (Expr.Ederef
        (Expr.Ebinop Binop.Oadd
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _dyn_ltree
            (tarray (Ty.Tstruct _ct_data_s noattr) 573))
          (Expr.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
        (Ty.Tstruct _ct_data_s noattr)) _fc (Ty.Tunion __1354 noattr)) _freq
    tushort) (Expr.Etempvar _v tushort))
}

def composites : List CompositeDef :=
[(CompositeDef.Composite _z_stream_s SU.Struct
   [(Member.Member_plain _next_in (tptr tuchar)),
    (Member.Member_plain _avail_in tuint),
    (Member.Member_plain _total_in tulong),
    (Member.Member_plain _next_out (tptr tuchar)),
    (Member.Member_plain _avail_out tuint),
    (Member.Member_plain _total_out tulong),
    (Member.Member_plain _msg (tptr tschar)),
    (Member.Member_plain _state (tptr (Ty.Tstruct _internal_state noattr))),
    (Member.Member_plain _zalloc
      (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
              cc_default))),
    (Member.Member_plain _zfree
      (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid cc_default))),
    (Member.Member_plain _opaque (tptr tvoid)),
    (Member.Member_plain _data_type tint),
    (Member.Member_plain _adler tulong),
    (Member.Member_plain _reserved tulong)]
   noattr),
 (CompositeDef.Composite _gz_header_s SU.Struct
   [(Member.Member_plain _text tint), (Member.Member_plain _time tulong),
    (Member.Member_plain _xflags tint), (Member.Member_plain _os tint),
    (Member.Member_plain _extra (tptr tuchar)),
    (Member.Member_plain _extra_len tuint),
    (Member.Member_plain _extra_max tuint),
    (Member.Member_plain _name (tptr tuchar)),
    (Member.Member_plain _name_max tuint),
    (Member.Member_plain _comment (tptr tuchar)),
    (Member.Member_plain _comm_max tuint), (Member.Member_plain _hcrc tint),
    (Member.Member_plain _done tint)]
   noattr),
 (CompositeDef.Composite __1354 SU.Union
   [(Member.Member_plain _freq tushort), (Member.Member_plain _code tushort)]
   noattr),
 (CompositeDef.Composite __1355 SU.Union
   [(Member.Member_plain _dad tushort), (Member.Member_plain _len tushort)]
   noattr),
 (CompositeDef.Composite _ct_data_s SU.Struct
   [(Member.Member_plain _fc (Ty.Tunion __1354 noattr)),
    (Member.Member_plain _dl (Ty.Tunion __1355 noattr))]
   noattr),
 (CompositeDef.Composite _tree_desc_s SU.Struct
   [(Member.Member_plain _dyn_tree (tptr (Ty.Tstruct _ct_data_s noattr))),
    (Member.Member_plain _max_code tint),
    (Member.Member_plain _stat_desc
      (tptr (Ty.Tstruct _static_tree_desc_s noattr)))]
   noattr),
 (CompositeDef.Composite _internal_state SU.Struct
   [(Member.Member_plain _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
    (Member.Member_plain _status tint),
    (Member.Member_plain _pending_buf (tptr tuchar)),
    (Member.Member_plain _pending_buf_size tulong),
    (Member.Member_plain _pending_out (tptr tuchar)),
    (Member.Member_plain _pending tulong), (Member.Member_plain _wrap tint),
    (Member.Member_plain _gzhead (tptr (Ty.Tstruct _gz_header_s noattr))),
    (Member.Member_plain _gzindex tulong),
    (Member.Member_plain _method tuchar),
    (Member.Member_plain _last_flush tint),
    (Member.Member_plain _w_size tuint), (Member.Member_plain _w_bits tuint),
    (Member.Member_plain _w_mask tuint),
    (Member.Member_plain _window (tptr tuchar)),
    (Member.Member_plain _window_size tulong),
    (Member.Member_plain _prev (tptr tushort)),
    (Member.Member_plain _head (tptr tushort)),
    (Member.Member_plain _ins_h tuint),
    (Member.Member_plain _hash_size tuint),
    (Member.Member_plain _hash_bits tuint),
    (Member.Member_plain _hash_mask tuint),
    (Member.Member_plain _hash_shift tuint),
    (Member.Member_plain _block_start tlong),
    (Member.Member_plain _match_length tuint),
    (Member.Member_plain _prev_match tuint),
    (Member.Member_plain _match_available tint),
    (Member.Member_plain _strstart tuint),
    (Member.Member_plain _match_start tuint),
    (Member.Member_plain _lookahead tuint),
    (Member.Member_plain _prev_length tuint),
    (Member.Member_plain _max_chain_length tuint),
    (Member.Member_plain _max_lazy_match tuint),
    (Member.Member_plain _level tint), (Member.Member_plain _strategy tint),
    (Member.Member_plain _good_match tuint),
    (Member.Member_plain _nice_match tint),
    (Member.Member_plain _dyn_ltree
      (tarray (Ty.Tstruct _ct_data_s noattr) 573)),
    (Member.Member_plain _dyn_dtree
      (tarray (Ty.Tstruct _ct_data_s noattr) 61)),
    (Member.Member_plain _bl_tree (tarray (Ty.Tstruct _ct_data_s noattr) 39)),
    (Member.Member_plain _l_desc (Ty.Tstruct _tree_desc_s noattr)),
    (Member.Member_plain _d_desc (Ty.Tstruct _tree_desc_s noattr)),
    (Member.Member_plain _bl_desc (Ty.Tstruct _tree_desc_s noattr)),
    (Member.Member_plain _bl_count (tarray tushort 16)),
    (Member.Member_plain _heap (tarray tint 573)),
    (Member.Member_plain _heap_len tint),
    (Member.Member_plain _heap_max tint),
    (Member.Member_plain _depth (tarray tuchar 573)),
    (Member.Member_plain _sym_buf (tptr tuchar)),
    (Member.Member_plain _lit_bufsize tuint),
    (Member.Member_plain _sym_next tuint),
    (Member.Member_plain _sym_end tuint),
    (Member.Member_plain _opt_len tulong),
    (Member.Member_plain _static_len tulong),
    (Member.Member_plain _matches tuint),
    (Member.Member_plain _insert tuint),
    (Member.Member_plain _bi_buf tushort),
    (Member.Member_plain _bi_valid tint),
    (Member.Member_plain _bi_used tint),
    (Member.Member_plain _high_water tulong),
    (Member.Member_plain _slid tint)]
   noattr)]

def global_definitions : List (Ident × GlobDef FunDef Ty) :=
[(___compcert_va_int32,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_va_int32"
                                   (mksignature [XType.Xptr] XType.Xint
                                     cc_default)) [(tptr tvoid)] tuint
     cc_default)),
 (___compcert_va_int64,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_va_int64"
                                   (mksignature [XType.Xptr] XType.Xlong
                                     cc_default)) [(tptr tvoid)] tulong
     cc_default)),
 (___compcert_va_float64,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_va_float64"
                                   (mksignature [XType.Xptr] XType.Xfloat
                                     cc_default)) [(tptr tvoid)] tdouble
     cc_default)),
 (___compcert_va_composite,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_va_composite"
                                   (mksignature [XType.Xptr, XType.Xlong]
                                     XType.Xptr cc_default))
     [(tptr tvoid), tulong] (tptr tvoid) cc_default)),
 (___compcert_i64_dtos,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_dtos"
                                   (mksignature [XType.Xfloat] XType.Xlong
                                     cc_default)) [tdouble] tlong
     cc_default)),
 (___compcert_i64_dtou,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_dtou"
                                   (mksignature [XType.Xfloat] XType.Xlong
                                     cc_default)) [tdouble] tulong
     cc_default)),
 (___compcert_i64_stod,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_stod"
                                   (mksignature [XType.Xlong] XType.Xfloat
                                     cc_default)) [tlong] tdouble
     cc_default)),
 (___compcert_i64_utod,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_utod"
                                   (mksignature [XType.Xlong] XType.Xfloat
                                     cc_default)) [tulong] tdouble
     cc_default)),
 (___compcert_i64_stof,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_stof"
                                   (mksignature [XType.Xlong] XType.Xsingle
                                     cc_default)) [tlong] tfloat cc_default)),
 (___compcert_i64_utof,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_utof"
                                   (mksignature [XType.Xlong] XType.Xsingle
                                     cc_default)) [tulong] tfloat
     cc_default)),
 (___compcert_i64_sdiv,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_sdiv"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default)) [tlong, tlong]
     tlong cc_default)),
 (___compcert_i64_udiv,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_udiv"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default))
     [tulong, tulong] tulong cc_default)),
 (___compcert_i64_smod,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_smod"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default)) [tlong, tlong]
     tlong cc_default)),
 (___compcert_i64_umod,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_umod"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default))
     [tulong, tulong] tulong cc_default)),
 (___compcert_i64_shl,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_shl"
                                   (mksignature [XType.Xlong, XType.Xint]
                                     XType.Xlong cc_default)) [tlong, tint]
     tlong cc_default)),
 (___compcert_i64_shr,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_shr"
                                   (mksignature [XType.Xlong, XType.Xint]
                                     XType.Xlong cc_default)) [tulong, tint]
     tulong cc_default)),
 (___compcert_i64_sar,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_sar"
                                   (mksignature [XType.Xlong, XType.Xint]
                                     XType.Xlong cc_default)) [tlong, tint]
     tlong cc_default)),
 (___compcert_i64_smulh,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_smulh"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default)) [tlong, tlong]
     tlong cc_default)),
 (___compcert_i64_umulh,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_runtime "__compcert_i64_umulh"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default))
     [tulong, tulong] tulong cc_default)),
 (___builtin_bswap64,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_bswap64"
                                   (mksignature [XType.Xlong] XType.Xlong
                                     cc_default)) [tulong] tulong
     cc_default)),
 (___builtin_bswap,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_bswap"
                                   (mksignature [XType.Xint] XType.Xint
                                     cc_default)) [tuint] tuint cc_default)),
 (___builtin_bswap32,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_bswap32"
                                   (mksignature [XType.Xint] XType.Xint
                                     cc_default)) [tuint] tuint cc_default)),
 (___builtin_bswap16,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_bswap16"
                                   (mksignature [XType.Xint16unsigned]
                                     XType.Xint16unsigned cc_default))
     [tushort] tushort cc_default)),
 (___builtin_clz,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_clz"
                                   (mksignature [XType.Xint] XType.Xint
                                     cc_default)) [tuint] tint cc_default)),
 (___builtin_clzl,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_clzl"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tulong] tint cc_default)),
 (___builtin_clzll,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_clzll"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tulong] tint cc_default)),
 (___builtin_ctz,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_ctz"
                                   (mksignature [XType.Xint] XType.Xint
                                     cc_default)) [tuint] tint cc_default)),
 (___builtin_ctzl,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_ctzl"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tulong] tint cc_default)),
 (___builtin_ctzll,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_ctzll"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tulong] tint cc_default)),
 (___builtin_fabs,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fabs"
                                   (mksignature [XType.Xfloat] XType.Xfloat
                                     cc_default)) [tdouble] tdouble
     cc_default)),
 (___builtin_fabsf,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fabsf"
                                   (mksignature [XType.Xsingle] XType.Xsingle
                                     cc_default)) [tfloat] tfloat
     cc_default)),
 (___builtin_fsqrt,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fsqrt"
                                   (mksignature [XType.Xfloat] XType.Xfloat
                                     cc_default)) [tdouble] tdouble
     cc_default)),
 (___builtin_sqrt,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_sqrt"
                                   (mksignature [XType.Xfloat] XType.Xfloat
                                     cc_default)) [tdouble] tdouble
     cc_default)),
 (___builtin_memcpy_aligned,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_memcpy_aligned"
                                   (mksignature
                                     [XType.Xptr, XType.Xptr, XType.Xlong,
                                      XType.Xlong] XType.Xvoid cc_default))
     [(tptr tvoid), (tptr tvoid), tulong, tulong] tvoid cc_default)),
 (___builtin_sel,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_sel"
                                   (mksignature [XType.Xbool] XType.Xvoid
                                     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false }))
     [tbool] tvoid
     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false })),
 (___builtin_annot,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_annot"
                                   (mksignature [XType.Xptr] XType.Xvoid
                                     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false }))
     [(tptr tschar)] tvoid
     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false })),
 (___builtin_annot_intval,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_annot_intval"
                                   (mksignature [XType.Xptr, XType.Xint]
                                     XType.Xint cc_default))
     [(tptr tschar), tint] tint cc_default)),
 (___builtin_membar,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_membar"
                                   (mksignature [] XType.Xvoid cc_default))
     [] tvoid cc_default)),
 (___builtin_va_start,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_va_start"
                                   (mksignature [XType.Xptr] XType.Xvoid
                                     cc_default)) [(tptr tvoid)] tvoid
     cc_default)),
 (___builtin_va_arg,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_va_arg"
                                   (mksignature [XType.Xptr, XType.Xint]
                                     XType.Xvoid cc_default))
     [(tptr tvoid), tuint] tvoid cc_default)),
 (___builtin_va_copy,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_va_copy"
                                   (mksignature [XType.Xptr, XType.Xptr]
                                     XType.Xvoid cc_default))
     [(tptr tvoid), (tptr tvoid)] tvoid cc_default)),
 (___builtin_va_end,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_va_end"
                                   (mksignature [XType.Xptr] XType.Xvoid
                                     cc_default)) [(tptr tvoid)] tvoid
     cc_default)),
 (___builtin_unreachable,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_unreachable"
                                   (mksignature [] XType.Xvoid cc_default))
     [] tvoid cc_default)),
 (___builtin_expect,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_expect"
                                   (mksignature [XType.Xlong, XType.Xlong]
                                     XType.Xlong cc_default)) [tlong, tlong]
     tlong cc_default)),
 (___builtin_cls,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_cls"
                                   (mksignature [XType.Xint] XType.Xint
                                     cc_default)) [tint] tint cc_default)),
 (___builtin_clsl,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_clsl"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tlong] tint cc_default)),
 (___builtin_clsll,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_clsll"
                                   (mksignature [XType.Xlong] XType.Xint
                                     cc_default)) [tlong] tint cc_default)),
 (___builtin_fmadd,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fmadd"
                                   (mksignature
                                     [XType.Xfloat, XType.Xfloat,
                                      XType.Xfloat] XType.Xfloat cc_default))
     [tdouble, tdouble, tdouble] tdouble cc_default)),
 (___builtin_fmsub,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fmsub"
                                   (mksignature
                                     [XType.Xfloat, XType.Xfloat,
                                      XType.Xfloat] XType.Xfloat cc_default))
     [tdouble, tdouble, tdouble] tdouble cc_default)),
 (___builtin_fnmadd,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fnmadd"
                                   (mksignature
                                     [XType.Xfloat, XType.Xfloat,
                                      XType.Xfloat] XType.Xfloat cc_default))
     [tdouble, tdouble, tdouble] tdouble cc_default)),
 (___builtin_fnmsub,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fnmsub"
                                   (mksignature
                                     [XType.Xfloat, XType.Xfloat,
                                      XType.Xfloat] XType.Xfloat cc_default))
     [tdouble, tdouble, tdouble] tdouble cc_default)),
 (___builtin_fmax,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fmax"
                                   (mksignature [XType.Xfloat, XType.Xfloat]
                                     XType.Xfloat cc_default))
     [tdouble, tdouble] tdouble cc_default)),
 (___builtin_fmin,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_builtin "__builtin_fmin"
                                   (mksignature [XType.Xfloat, XType.Xfloat]
                                     XType.Xfloat cc_default))
     [tdouble, tdouble] tdouble cc_default)),
 (___builtin_debug,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "__builtin_debug"
                                   (mksignature [XType.Xint] XType.Xvoid
                                     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false }))
     [tint] tvoid
     { cc_vararg := (some 1), cc_unproto := false, cc_structret := false })),
 (_get_freq, GlobDef.Gfun (FunDef.Internal f_get_freq)),
 (_set_freq, GlobDef.Gfun (FunDef.Internal f_set_freq))]

def public_idents : List Ident :=
[_set_freq, _get_freq, ___builtin_debug, ___builtin_fmin, ___builtin_fmax,
 ___builtin_fnmsub, ___builtin_fnmadd, ___builtin_fmsub, ___builtin_fmadd,
 ___builtin_clsll, ___builtin_clsl, ___builtin_cls, ___builtin_expect,
 ___builtin_unreachable, ___builtin_va_end, ___builtin_va_copy,
 ___builtin_va_arg, ___builtin_va_start, ___builtin_membar,
 ___builtin_annot_intval, ___builtin_annot, ___builtin_sel,
 ___builtin_memcpy_aligned, ___builtin_sqrt, ___builtin_fsqrt,
 ___builtin_fabsf, ___builtin_fabs, ___builtin_ctzll, ___builtin_ctzl,
 ___builtin_ctz, ___builtin_clzll, ___builtin_clzl, ___builtin_clz,
 ___builtin_bswap16, ___builtin_bswap32, ___builtin_bswap,
 ___builtin_bswap64, ___compcert_i64_umulh, ___compcert_i64_smulh,
 ___compcert_i64_sar, ___compcert_i64_shr, ___compcert_i64_shl,
 ___compcert_i64_umod, ___compcert_i64_smod, ___compcert_i64_udiv,
 ___compcert_i64_sdiv, ___compcert_i64_utof, ___compcert_i64_stof,
 ___compcert_i64_utod, ___compcert_i64_stod, ___compcert_i64_dtou,
 ___compcert_i64_dtos, ___compcert_va_composite, ___compcert_va_float64,
 ___compcert_va_int64, ___compcert_va_int32]

def prog : Program :=
  mkprogram composites global_definitions public_idents _main

end Treesep

