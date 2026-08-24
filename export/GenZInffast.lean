import Clightdefs
open CC

namespace Inffast

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
  def source_file : String := "inffast.c"
  def normalized : Bool := true
end Info

def __1353 : Ident := identOfString "_1353"
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
def ___stringlit_1 : Ident := identOfString "__stringlit_1"
def ___stringlit_2 : Ident := identOfString "__stringlit_2"
def ___stringlit_3 : Ident := identOfString "__stringlit_3"
def _adler : Ident := identOfString "adler"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _back : Ident := identOfString "back"
def _beg : Ident := identOfString "beg"
def _bits : Ident := identOfString "bits"
def _check : Ident := identOfString "check"
def _codes : Ident := identOfString "codes"
def _comm_max : Ident := identOfString "comm_max"
def _comment : Ident := identOfString "comment"
def _data_type : Ident := identOfString "data_type"
def _dcode : Ident := identOfString "dcode"
def _dist : Ident := identOfString "dist"
def _distbits : Ident := identOfString "distbits"
def _distcode : Ident := identOfString "distcode"
def _dmask : Ident := identOfString "dmask"
def _dmax : Ident := identOfString "dmax"
def _dodist : Ident := identOfString "dodist"
def _dolen : Ident := identOfString "dolen"
def _done : Ident := identOfString "done"
def _end : Ident := identOfString "end"
def _extra : Ident := identOfString "extra"
def _extra_len : Ident := identOfString "extra_len"
def _extra_max : Ident := identOfString "extra_max"
def _flags : Ident := identOfString "flags"
def _from : Ident := identOfString "from"
def _gz_header_s : Ident := identOfString "gz_header_s"
def _have : Ident := identOfString "have"
def _havedict : Ident := identOfString "havedict"
def _hcrc : Ident := identOfString "hcrc"
def _head : Ident := identOfString "head"
def _here : Ident := identOfString "here"
def _hold : Ident := identOfString "hold"
def _in : Ident := identOfString "in"
def _inflate_fast : Ident := identOfString "inflate_fast"
def _inflate_state : Ident := identOfString "inflate_state"
def _internal_state : Ident := identOfString "internal_state"
def _last : Ident := identOfString "last"
def _lcode : Ident := identOfString "lcode"
def _len : Ident := identOfString "len"
def _lenbits : Ident := identOfString "lenbits"
def _lencode : Ident := identOfString "lencode"
def _length : Ident := identOfString "length"
def _lens : Ident := identOfString "lens"
def _lmask : Ident := identOfString "lmask"
def _main : Ident := identOfString "main"
def _mode : Ident := identOfString "mode"
def _msg : Ident := identOfString "msg"
def _name : Ident := identOfString "name"
def _name_max : Ident := identOfString "name_max"
def _ncode : Ident := identOfString "ncode"
def _ndist : Ident := identOfString "ndist"
def _next : Ident := identOfString "next"
def _next_in : Ident := identOfString "next_in"
def _next_out : Ident := identOfString "next_out"
def _nlen : Ident := identOfString "nlen"
def _offset : Ident := identOfString "offset"
def _op : Ident := identOfString "op"
def _opaque : Ident := identOfString "opaque"
def _os : Ident := identOfString "os"
def _out : Ident := identOfString "out"
def _reserved : Ident := identOfString "reserved"
def _sane : Ident := identOfString "sane"
def _start : Ident := identOfString "start"
def _state : Ident := identOfString "state"
def _strm : Ident := identOfString "strm"
def _text : Ident := identOfString "text"
def _time : Ident := identOfString "time"
def _total : Ident := identOfString "total"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
def _val : Ident := identOfString "val"
def _was : Ident := identOfString "was"
def _wbits : Ident := identOfString "wbits"
def _whave : Ident := identOfString "whave"
def _window : Ident := identOfString "window"
def _wnext : Ident := identOfString "wnext"
def _work : Ident := identOfString "work"
def _wrap : Ident := identOfString "wrap"
def _wsize : Ident := identOfString "wsize"
def _xflags : Ident := identOfString "xflags"
def _z_stream_s : Ident := identOfString "z_stream_s"
def _zalloc : Ident := identOfString "zalloc"
def _zfree : Ident := identOfString "zfree"
def _t'1 : Ident := (Positive.ofNat 128)
def _t'10 : Ident := (Positive.ofNat 137)
def _t'11 : Ident := (Positive.ofNat 138)
def _t'12 : Ident := (Positive.ofNat 139)
def _t'13 : Ident := (Positive.ofNat 140)
def _t'14 : Ident := (Positive.ofNat 141)
def _t'15 : Ident := (Positive.ofNat 142)
def _t'16 : Ident := (Positive.ofNat 143)
def _t'17 : Ident := (Positive.ofNat 144)
def _t'18 : Ident := (Positive.ofNat 145)
def _t'19 : Ident := (Positive.ofNat 146)
def _t'2 : Ident := (Positive.ofNat 129)
def _t'20 : Ident := (Positive.ofNat 147)
def _t'21 : Ident := (Positive.ofNat 148)
def _t'22 : Ident := (Positive.ofNat 149)
def _t'23 : Ident := (Positive.ofNat 150)
def _t'24 : Ident := (Positive.ofNat 151)
def _t'25 : Ident := (Positive.ofNat 152)
def _t'26 : Ident := (Positive.ofNat 153)
def _t'27 : Ident := (Positive.ofNat 154)
def _t'28 : Ident := (Positive.ofNat 155)
def _t'29 : Ident := (Positive.ofNat 156)
def _t'3 : Ident := (Positive.ofNat 130)
def _t'30 : Ident := (Positive.ofNat 157)
def _t'31 : Ident := (Positive.ofNat 158)
def _t'32 : Ident := (Positive.ofNat 159)
def _t'33 : Ident := (Positive.ofNat 160)
def _t'34 : Ident := (Positive.ofNat 161)
def _t'35 : Ident := (Positive.ofNat 162)
def _t'36 : Ident := (Positive.ofNat 163)
def _t'37 : Ident := (Positive.ofNat 164)
def _t'38 : Ident := (Positive.ofNat 165)
def _t'39 : Ident := (Positive.ofNat 166)
def _t'4 : Ident := (Positive.ofNat 131)
def _t'40 : Ident := (Positive.ofNat 167)
def _t'41 : Ident := (Positive.ofNat 168)
def _t'42 : Ident := (Positive.ofNat 169)
def _t'43 : Ident := (Positive.ofNat 170)
def _t'44 : Ident := (Positive.ofNat 171)
def _t'45 : Ident := (Positive.ofNat 172)
def _t'46 : Ident := (Positive.ofNat 173)
def _t'47 : Ident := (Positive.ofNat 174)
def _t'48 : Ident := (Positive.ofNat 175)
def _t'49 : Ident := (Positive.ofNat 176)
def _t'5 : Ident := (Positive.ofNat 132)
def _t'50 : Ident := (Positive.ofNat 177)
def _t'51 : Ident := (Positive.ofNat 178)
def _t'52 : Ident := (Positive.ofNat 179)
def _t'53 : Ident := (Positive.ofNat 180)
def _t'54 : Ident := (Positive.ofNat 181)
def _t'55 : Ident := (Positive.ofNat 182)
def _t'56 : Ident := (Positive.ofNat 183)
def _t'57 : Ident := (Positive.ofNat 184)
def _t'58 : Ident := (Positive.ofNat 185)
def _t'59 : Ident := (Positive.ofNat 186)
def _t'6 : Ident := (Positive.ofNat 133)
def _t'60 : Ident := (Positive.ofNat 187)
def _t'61 : Ident := (Positive.ofNat 188)
def _t'62 : Ident := (Positive.ofNat 189)
def _t'63 : Ident := (Positive.ofNat 190)
def _t'64 : Ident := (Positive.ofNat 191)
def _t'65 : Ident := (Positive.ofNat 192)
def _t'66 : Ident := (Positive.ofNat 193)
def _t'67 : Ident := (Positive.ofNat 194)
def _t'68 : Ident := (Positive.ofNat 195)
def _t'69 : Ident := (Positive.ofNat 196)
def _t'7 : Ident := (Positive.ofNat 134)
def _t'70 : Ident := (Positive.ofNat 197)
def _t'71 : Ident := (Positive.ofNat 198)
def _t'72 : Ident := (Positive.ofNat 199)
def _t'73 : Ident := (Positive.ofNat 200)
def _t'74 : Ident := (Positive.ofNat 201)
def _t'75 : Ident := (Positive.ofNat 202)
def _t'76 : Ident := (Positive.ofNat 203)
def _t'77 : Ident := (Positive.ofNat 204)
def _t'78 : Ident := (Positive.ofNat 205)
def _t'79 : Ident := (Positive.ofNat 206)
def _t'8 : Ident := (Positive.ofNat 135)
def _t'80 : Ident := (Positive.ofNat 207)
def _t'9 : Ident := (Positive.ofNat 136)

def v___stringlit_2 : GlobVar Ty := {
  gvar_info := (tarray tschar 22),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_1 : GlobVar Ty := {
  gvar_info := (tarray tschar 28),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 47)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_3 : GlobVar Ty := {
  gvar_info := (tarray tschar 30),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_inflate_fast : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_start, tuint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_in, (tptr tuchar)), (_last, (tptr tuchar)),
               (_out, (tptr tuchar)), (_beg, (tptr tuchar)),
               (_end, (tptr tuchar)), (_wsize, tuint), (_whave, tuint),
               (_wnext, tuint), (_window, (tptr tuchar)), (_hold, tulong),
               (_bits, tuint), (_lcode, (tptr (Ty.Tstruct __1353 noattr))),
               (_dcode, (tptr (Ty.Tstruct __1353 noattr))), (_lmask, tuint),
               (_dmask, tuint), (_here, (tptr (Ty.Tstruct __1353 noattr))),
               (_op, tuint), (_len, tuint), (_dist, tuint),
               (_from, (tptr tuchar)), (_t'43, tlong), (_t'42, tlong),
               (_t'41, (tptr tuchar)), (_t'40, (tptr tuchar)),
               (_t'39, (tptr tuchar)), (_t'38, (tptr tuchar)),
               (_t'37, (tptr tuchar)), (_t'36, (tptr tuchar)),
               (_t'35, (tptr tuchar)), (_t'34, (tptr tuchar)),
               (_t'33, (tptr tuchar)), (_t'32, (tptr tuchar)),
               (_t'31, (tptr tuchar)), (_t'30, (tptr tuchar)),
               (_t'29, (tptr tuchar)), (_t'28, (tptr tuchar)),
               (_t'27, (tptr tuchar)), (_t'26, (tptr tuchar)),
               (_t'25, (tptr tuchar)), (_t'24, (tptr tuchar)),
               (_t'23, (tptr tuchar)), (_t'22, (tptr tuchar)),
               (_t'21, (tptr tuchar)), (_t'20, (tptr tuchar)),
               (_t'19, tuint), (_t'18, (tptr tuchar)),
               (_t'17, (tptr tuchar)), (_t'16, tuint),
               (_t'15, (tptr tuchar)), (_t'14, (tptr tuchar)),
               (_t'13, tuint), (_t'12, (tptr tuchar)),
               (_t'11, (tptr tuchar)), (_t'10, tuint), (_t'9, (tptr tuchar)),
               (_t'8, (tptr tuchar)), (_t'7, (tptr tuchar)),
               (_t'6, (tptr tuchar)), (_t'5, (tptr tuchar)),
               (_t'4, (tptr tuchar)), (_t'3, (tptr tuchar)),
               (_t'2, (tptr tuchar)), (_t'1, tint),
               (_t'80, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'79, tuint), (_t'78, tuint), (_t'77, tuint),
               (_t'76, tuint), (_t'75, tuint), (_t'74, tuchar),
               (_t'73, tuchar), (_t'72, tuchar), (_t'71, tuchar),
               (_t'70, tushort), (_t'69, tushort), (_t'68, tuchar),
               (_t'67, tuchar), (_t'66, tuchar), (_t'65, tuchar),
               (_t'64, tuchar), (_t'63, tushort), (_t'62, tuchar),
               (_t'61, tuchar), (_t'60, tint), (_t'59, tuchar),
               (_t'58, tuchar), (_t'57, tuchar), (_t'56, tuchar),
               (_t'55, tuchar), (_t'54, tuchar), (_t'53, tuchar),
               (_t'52, tuchar), (_t'51, tuchar), (_t'50, tuchar),
               (_t'49, tuchar), (_t'48, tuchar), (_t'47, tuchar),
               (_t'46, tuchar), (_t'45, tushort), (_t'44, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _t'80
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
          (Ty.Tstruct _z_stream_s noattr)) _state
        (tptr (Ty.Tstruct _internal_state noattr))))
    (Stmt.Sset _state
      (Expr.Ecast
        (Expr.Etempvar _t'80 (tptr (Ty.Tstruct _internal_state noattr)))
        (tptr (Ty.Tstruct _inflate_state noattr)))))
  (Stmt.Ssequence
    (Stmt.Sset _in
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
          (Ty.Tstruct _z_stream_s noattr)) _next_in (tptr tuchar)))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'79
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
        (Stmt.Sset _last
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _in (tptr tuchar))
            (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'79 tuint)
              (Expr.Econst_int (Integers.Int.repr 5) tint) tuint)
            (tptr tuchar))))
      (Stmt.Ssequence
        (Stmt.Sset _out
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Ty.Tstruct _z_stream_s noattr)) _next_out (tptr tuchar)))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'78
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _avail_out tuint))
            (Stmt.Sset _beg
              (Expr.Ebinop Binop.Osub (Expr.Etempvar _out (tptr tuchar))
                (Expr.Ebinop Binop.Osub (Expr.Etempvar _start tuint)
                  (Expr.Etempvar _t'78 tuint) tuint) (tptr tuchar))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'77
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _avail_out tuint))
              (Stmt.Sset _end
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _out (tptr tuchar))
                  (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'77 tuint)
                    (Expr.Econst_int (Integers.Int.repr 257) tint) tuint)
                  (tptr tuchar))))
            (Stmt.Ssequence
              (Stmt.Sset _wsize
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
              (Stmt.Ssequence
                (Stmt.Sset _whave
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _whave tuint))
                (Stmt.Ssequence
                  (Stmt.Sset _wnext
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _window
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _window
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _hold
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _hold tulong))
                      (Stmt.Ssequence
                        (Stmt.Sset _bits
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _bits
                            tuint))
                        (Stmt.Ssequence
                          (Stmt.Sset _lcode
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _lencode
                              (tptr (Ty.Tstruct __1353 noattr))))
                          (Stmt.Ssequence
                            (Stmt.Sset _dcode
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr))
                                _distcode (tptr (Ty.Tstruct __1353 noattr))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'76
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _lenbits tuint))
                                (Stmt.Sset _lmask
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                      (Expr.Etempvar _t'76 tuint) tuint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tuint)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'75
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _distbits tuint))
                                  (Stmt.Sset _dmask
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Ebinop Binop.Oshl
                                        (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                        (Expr.Etempvar _t'75 tuint) tuint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tuint)))
                                (Stmt.Ssequence
                                  (Stmt.Sloop
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                          (Expr.Etempvar _bits tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                          tint)
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'2
                                                (Expr.Etempvar _in (tptr tuchar)))
                                              (Stmt.Sset _in
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'2 (tptr tuchar))
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  (tptr tuchar))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'74
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'2 (tptr tuchar))
                                                  tuchar))
                                              (Stmt.Sset _hold
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _hold tulong)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'74 tuchar)
                                                      tulong)
                                                    (Expr.Etempvar _bits tuint)
                                                    tulong) tulong))))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _bits
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _bits tuint)
                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                tuint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'3
                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                  (Stmt.Sset _in
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'3 (tptr tuchar))
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      (tptr tuchar))))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'73
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _t'3 (tptr tuchar))
                                                      tuchar))
                                                  (Stmt.Sset _hold
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _hold tulong)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'73 tuchar)
                                                          tulong)
                                                        (Expr.Etempvar _bits tuint)
                                                        tulong) tulong))))
                                              (Stmt.Sset _bits
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _bits tuint)
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  tuint)))))
                                        Stmt.Sskip)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _here
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _lcode (tptr (Ty.Tstruct __1353 noattr)))
                                            (Expr.Ebinop Binop.Oand
                                              (Expr.Etempvar _hold tulong)
                                              (Expr.Etempvar _lmask tuint)
                                              tulong)
                                            (tptr (Ty.Tstruct __1353 noattr))))
                                        (Stmt.Ssequence
                                          (Stmt.Slabel _dolen
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'72
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                    (Ty.Tstruct __1353 noattr))
                                                  _bits tuchar))
                                              (Stmt.Sset _op
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'72 tuchar)
                                                  tuint))))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _hold
                                              (Expr.Ebinop Binop.Oshr
                                                (Expr.Etempvar _hold tulong)
                                                (Expr.Etempvar _op tuint)
                                                tulong))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _bits
                                                (Expr.Ebinop Binop.Osub
                                                  (Expr.Etempvar _bits tuint)
                                                  (Expr.Etempvar _op tuint)
                                                  tuint))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'71
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                        (Ty.Tstruct __1353 noattr))
                                                      _op tuchar))
                                                  (Stmt.Sset _op
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'71 tuchar)
                                                      tuint)))
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'4
                                                        (Expr.Etempvar _out (tptr tuchar)))
                                                      (Stmt.Sset _out
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'4 (tptr tuchar))
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          (tptr tuchar))))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'70
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                            (Ty.Tstruct __1353 noattr))
                                                          _val tushort))
                                                      (Stmt.Sassign
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _t'4 (tptr tuchar))
                                                          tuchar)
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'70 tushort)
                                                          tuchar))))
                                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                    tuint)
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'69
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                              (Ty.Tstruct __1353 noattr))
                                                            _val tushort))
                                                        (Stmt.Sset _len
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _t'69 tushort)
                                                            tuint)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _op
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _op tuint)
                                                            (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                            tuint))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sifthenelse (Expr.Etempvar _op tuint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sifthenelse 
                                                                (Expr.Ebinop Binop.Olt
                                                                  (Expr.Etempvar _bits tuint)
                                                                  (Expr.Etempvar _op tuint)
                                                                  tint)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'5
                                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                                    (Stmt.Sset _in
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'5 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'68
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'5 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'68 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))
                                                                Stmt.Sskip)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _len
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tulong))
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)))))
                                                            Stmt.Sskip)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sifthenelse 
                                                              (Expr.Ebinop Binop.Olt
                                                                (Expr.Etempvar _bits tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                                tint)
                                                              (Stmt.Ssequence
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'6
                                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                                    (Stmt.Sset _in
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'6 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'67
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'6 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'67 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'7
                                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                                    (Stmt.Sset _in
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'7 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'66
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'7 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'66 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                              Stmt.Sskip)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _here
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _dcode (tptr (Ty.Tstruct __1353 noattr)))
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _dmask tuint)
                                                                    tulong)
                                                                  (tptr (Ty.Tstruct __1353 noattr))))
                                                              (Stmt.Ssequence
                                                                (Stmt.Slabel _dodist
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'65
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'65 tuchar)
                                                                    tuint))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tulong))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'64
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'64 tuchar)
                                                                    tuint)))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                    tuint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'63
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sset _dist
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'63 tushort)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'8
                                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                                    (Stmt.Sset _in
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'8 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'62
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'8 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'62 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'9
                                                                    (Expr.Etempvar _in (tptr tuchar)))
                                                                    (Stmt.Sset _in
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'9 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'61
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'9 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'61 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))
                                                                    Stmt.Sskip)))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _dist
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tulong))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out (tptr tuchar))
                                                                    (Expr.Etempvar _beg (tptr tuchar))
                                                                    tlong)
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Etempvar _whave tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'60
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _sane
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'60 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_3 (tarray tschar 30))
                                                                    (tptr tschar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Etempvar _window (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _from (tptr tuchar))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _wsize tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Etempvar _len tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'11
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'11 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'12
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'12 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'59
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'12 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'11 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'59 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'10
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Etempvar _t'10 tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'10 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out (tptr tuchar))
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (tptr tuchar)))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _from (tptr tuchar))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _wsize tuint)
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _op
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Etempvar _len tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'14
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'14 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'15
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'15 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'58
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'15 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'14 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'58 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'13
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Etempvar _t'13 tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'13 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Etempvar _window (tptr tuchar)))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    (Expr.Etempvar _len tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _op
                                                                    (Expr.Etempvar _wnext tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'17
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'17 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'18
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'18 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'57
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'18 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'17 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'57 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'16
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Etempvar _t'16 tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'16 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out (tptr tuchar))
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (tptr tuchar))))))
                                                                    Stmt.Sskip))))
                                                                    Stmt.Sskip)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _from (tptr tuchar))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _wnext tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Etempvar _len tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'20
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'20 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'21
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'21 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'56
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'21 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'20 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'56 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'19
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _op
                                                                    (Expr.Etempvar _t'19 tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'19 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out (tptr tuchar))
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (tptr tuchar)))))
                                                                    Stmt.Sskip))))
                                                                    (Stmt.Ssequence
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'22
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'22 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'23
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'23 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'55
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'23 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'22 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'55 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'24
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'24 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'25
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'25 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'54
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'25 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'24 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'54 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'26
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'26 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'27
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'27 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'53
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'27 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'26 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'53 tuchar))))
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint))))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'28
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'28 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'29
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'29 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'52
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'29 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'28 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'52 tuchar))))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'30
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'30 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'31
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'31 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'51
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'31 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'30 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'51 tuchar))))
                                                                    Stmt.Sskip))
                                                                    Stmt.Sskip))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out (tptr tuchar))
                                                                    (Expr.Etempvar _dist tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'32
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'32 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'33
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'33 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'50
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'33 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'32 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'50 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'34
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'34 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'35
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'35 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'49
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'35 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'34 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'49 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'36
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'36 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'37
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'37 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'48
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'37 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'36 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'48 tuchar))))
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)))))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'38
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'38 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'39
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'39 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'47
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'39 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'38 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'47 tuchar))))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'40
                                                                    (Expr.Etempvar _out (tptr tuchar)))
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'40 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'41
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'41 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'46
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'41 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'40 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'46 tuchar))))
                                                                    Stmt.Sskip))
                                                                    Stmt.Sskip)))))))))))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _op tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'45
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sset _here
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _dcode (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _t'45 tushort)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tulong)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Sgoto _dodist))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_2 (tarray tschar 22))
                                                                    (tptr tschar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                                                    Stmt.Sbreak)))))))))))))
                                                    (Stmt.Sifthenelse 
                                                      (Expr.Ebinop Binop.Oeq
                                                        (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _op tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                          tuint)
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                        tint)
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'44
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _here (tptr (Ty.Tstruct __1353 noattr)))
                                                                (Ty.Tstruct __1353 noattr))
                                                              _val tushort))
                                                          (Stmt.Sset _here
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _lcode (tptr (Ty.Tstruct __1353 noattr)))
                                                                (Expr.Etempvar _t'44 tushort)
                                                                (tptr (Ty.Tstruct __1353 noattr)))
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _hold tulong)
                                                                (Expr.Ebinop Binop.Osub
                                                                  (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _op tuint)
                                                                    tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tuint)
                                                                tulong)
                                                              (tptr (Ty.Tstruct __1353 noattr)))))
                                                        (Stmt.Sgoto _dolen))
                                                      (Stmt.Sifthenelse 
                                                        (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _op tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                          tuint)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sassign
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _mode tint)
                                                            (Expr.Econst_int (Integers.Int.repr 16191) tint))
                                                          Stmt.Sbreak)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sassign
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                (Ty.Tstruct _z_stream_s noattr))
                                                              _msg
                                                              (tptr tschar))
                                                            (Expr.Ecast
                                                              (Expr.Evar ___stringlit_1 (tarray tschar 28))
                                                              (tptr tschar)))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _mode tint)
                                                              (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                                            Stmt.Sbreak))))))))))))
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                          (Expr.Etempvar _in (tptr tuchar))
                                                          (Expr.Etempvar _last (tptr tuchar))
                                                          tint)
                                        (Stmt.Sset _t'1
                                          (Expr.Ecast
                                            (Expr.Ebinop Binop.Olt
                                              (Expr.Etempvar _out (tptr tuchar))
                                              (Expr.Etempvar _end (tptr tuchar))
                                              tint) tbool))
                                        (Stmt.Sset _t'1
                                          (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                      (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
                                        Stmt.Sskip
                                        Stmt.Sbreak)))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _len
                                      (Expr.Ebinop Binop.Oshr
                                        (Expr.Etempvar _bits tuint)
                                        (Expr.Econst_int (Integers.Int.repr 3) tint)
                                        tuint))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _in
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _in (tptr tuchar))
                                          (Expr.Etempvar _len tuint)
                                          (tptr tuchar)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _bits
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _bits tuint)
                                            (Expr.Ebinop Binop.Oshl
                                              (Expr.Etempvar _len tuint)
                                              (Expr.Econst_int (Integers.Int.repr 3) tint)
                                              tuint) tuint))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _hold
                                            (Expr.Ebinop Binop.Oand
                                              (Expr.Etempvar _hold tulong)
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Ebinop Binop.Oshl
                                                  (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                  (Expr.Etempvar _bits tuint)
                                                  tuint)
                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                tuint) tulong))
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                  (Ty.Tstruct _z_stream_s noattr))
                                                _next_in (tptr tuchar))
                                              (Expr.Etempvar _in (tptr tuchar)))
                                            (Stmt.Ssequence
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                    (Ty.Tstruct _z_stream_s noattr))
                                                  _next_out (tptr tuchar))
                                                (Expr.Etempvar _out (tptr tuchar)))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _in (tptr tuchar))
                                                                    (Expr.Etempvar _last (tptr tuchar))
                                                                    tint)
                                                    (Stmt.Sset _t'42
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _last (tptr tuchar))
                                                            (Expr.Etempvar _in (tptr tuchar))
                                                            tlong) tlong)
                                                        tlong))
                                                    (Stmt.Sset _t'42
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _in (tptr tuchar))
                                                            (Expr.Etempvar _last (tptr tuchar))
                                                            tlong) tlong)
                                                        tlong)))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                        (Ty.Tstruct _z_stream_s noattr))
                                                      _avail_in tuint)
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'42 tlong)
                                                      tuint)))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sifthenelse 
                                                      (Expr.Ebinop Binop.Olt
                                                        (Expr.Etempvar _out (tptr tuchar))
                                                        (Expr.Etempvar _end (tptr tuchar))
                                                        tint)
                                                      (Stmt.Sset _t'43
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Econst_int (Integers.Int.repr 257) tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Etempvar _end (tptr tuchar))
                                                              (Expr.Etempvar _out (tptr tuchar))
                                                              tlong) tlong)
                                                          tlong))
                                                      (Stmt.Sset _t'43
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Econst_int (Integers.Int.repr 257) tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Etempvar _out (tptr tuchar))
                                                              (Expr.Etempvar _end (tptr tuchar))
                                                              tlong) tlong)
                                                          tlong)))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                          (Ty.Tstruct _z_stream_s noattr))
                                                        _avail_out tuint)
                                                      (Expr.Ecast
                                                        (Expr.Etempvar _t'43 tlong)
                                                        tuint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _hold tulong)
                                                      (Expr.Etempvar _hold tulong))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _bits tuint)
                                                        (Expr.Etempvar _bits tuint))
                                                      (Stmt.Sreturn none))))))))))))))))))))))))))))
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
 (CompositeDef.Composite __1353 SU.Struct
   [(Member.Member_plain _op tuchar), (Member.Member_plain _bits tuchar),
    (Member.Member_plain _val tushort)]
   noattr),
 (CompositeDef.Composite _inflate_state SU.Struct
   [(Member.Member_plain _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
    (Member.Member_plain _mode tint), (Member.Member_plain _last tint),
    (Member.Member_plain _wrap tint), (Member.Member_plain _havedict tint),
    (Member.Member_plain _flags tint), (Member.Member_plain _dmax tuint),
    (Member.Member_plain _check tulong), (Member.Member_plain _total tulong),
    (Member.Member_plain _head (tptr (Ty.Tstruct _gz_header_s noattr))),
    (Member.Member_plain _wbits tuint), (Member.Member_plain _wsize tuint),
    (Member.Member_plain _whave tuint), (Member.Member_plain _wnext tuint),
    (Member.Member_plain _window (tptr tuchar)),
    (Member.Member_plain _hold tulong), (Member.Member_plain _bits tuint),
    (Member.Member_plain _length tuint), (Member.Member_plain _offset tuint),
    (Member.Member_plain _extra tuint),
    (Member.Member_plain _lencode (tptr (Ty.Tstruct __1353 noattr))),
    (Member.Member_plain _distcode (tptr (Ty.Tstruct __1353 noattr))),
    (Member.Member_plain _lenbits tuint),
    (Member.Member_plain _distbits tuint),
    (Member.Member_plain _ncode tuint), (Member.Member_plain _nlen tuint),
    (Member.Member_plain _ndist tuint), (Member.Member_plain _have tuint),
    (Member.Member_plain _next (tptr (Ty.Tstruct __1353 noattr))),
    (Member.Member_plain _lens (tarray tushort 320)),
    (Member.Member_plain _work (tarray tushort 288)),
    (Member.Member_plain _codes (tarray (Ty.Tstruct __1353 noattr) 1444)),
    (Member.Member_plain _sane tint), (Member.Member_plain _back tint),
    (Member.Member_plain _was tuint)]
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
 (___stringlit_2, GlobDef.Gvar v___stringlit_2),
 (___stringlit_1, GlobDef.Gvar v___stringlit_1),
 (___stringlit_3, GlobDef.Gvar v___stringlit_3),
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
 (_inflate_fast, GlobDef.Gfun (FunDef.Internal f_inflate_fast))]

def public_idents : List Ident :=
[_inflate_fast, ___builtin_debug, ___builtin_fmin, ___builtin_fmax,
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

end Inffast

