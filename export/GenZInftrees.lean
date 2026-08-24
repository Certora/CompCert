import Clightdefs
open CC

namespace Inftrees

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
  def source_file : String := "inftrees.c"
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
def _adler : Ident := identOfString "adler"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _back : Ident := identOfString "back"
def _base : Ident := identOfString "base"
def _bits : Ident := identOfString "bits"
def _check : Ident := identOfString "check"
def _codes : Ident := identOfString "codes"
def _comm_max : Ident := identOfString "comm_max"
def _comment : Ident := identOfString "comment"
def _count : Ident := identOfString "count"
def _curr : Ident := identOfString "curr"
def _data_type : Ident := identOfString "data_type"
def _dbase : Ident := identOfString "dbase"
def _dext : Ident := identOfString "dext"
def _distbits : Ident := identOfString "distbits"
def _distcode : Ident := identOfString "distcode"
def _distfix : Ident := identOfString "distfix"
def _dmax : Ident := identOfString "dmax"
def _done : Ident := identOfString "done"
def _drop : Ident := identOfString "drop"
def _extra : Ident := identOfString "extra"
def _extra_len : Ident := identOfString "extra_len"
def _extra_max : Ident := identOfString "extra_max"
def _fill : Ident := identOfString "fill"
def _flags : Ident := identOfString "flags"
def _gz_header_s : Ident := identOfString "gz_header_s"
def _have : Ident := identOfString "have"
def _havedict : Ident := identOfString "havedict"
def _hcrc : Ident := identOfString "hcrc"
def _head : Ident := identOfString "head"
def _here : Ident := identOfString "here"
def _hold : Ident := identOfString "hold"
def _huff : Ident := identOfString "huff"
def _incr : Ident := identOfString "incr"
def _inflate_copyright : Ident := identOfString "inflate_copyright"
def _inflate_fixed : Ident := identOfString "inflate_fixed"
def _inflate_state : Ident := identOfString "inflate_state"
def _inflate_table : Ident := identOfString "inflate_table"
def _internal_state : Ident := identOfString "internal_state"
def _last : Ident := identOfString "last"
def _lbase : Ident := identOfString "lbase"
def _left : Ident := identOfString "left"
def _len : Ident := identOfString "len"
def _lenbits : Ident := identOfString "lenbits"
def _lencode : Ident := identOfString "lencode"
def _lenfix : Ident := identOfString "lenfix"
def _length : Ident := identOfString "length"
def _lens : Ident := identOfString "lens"
def _lext : Ident := identOfString "lext"
def _low : Ident := identOfString "low"
def _main : Ident := identOfString "main"
def _mask : Ident := identOfString "mask"
def _match : Ident := identOfString "match"
def _max : Ident := identOfString "max"
def _min : Ident := identOfString "min"
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
def _offs : Ident := identOfString "offs"
def _offset : Ident := identOfString "offset"
def _op : Ident := identOfString "op"
def _opaque : Ident := identOfString "opaque"
def _os : Ident := identOfString "os"
def _reserved : Ident := identOfString "reserved"
def _root : Ident := identOfString "root"
def _sane : Ident := identOfString "sane"
def _state : Ident := identOfString "state"
def _strm : Ident := identOfString "strm"
def _sym : Ident := identOfString "sym"
def _table : Ident := identOfString "table"
def _text : Ident := identOfString "text"
def _time : Ident := identOfString "time"
def _total : Ident := identOfString "total"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
def _type : Ident := identOfString "type"
def _used : Ident := identOfString "used"
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
def _t'4 : Ident := (Positive.ofNat 131)
def _t'5 : Ident := (Positive.ofNat 132)
def _t'6 : Ident := (Positive.ofNat 133)
def _t'7 : Ident := (Positive.ofNat 134)
def _t'8 : Ident := (Positive.ofNat 135)
def _t'9 : Ident := (Positive.ofNat 136)

def v_inflate_copyright : GlobVar Ty := {
  gvar_info := (tarray tschar 47),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 57)),
                (InitData.Init_int8 (Integers.Int.repr 57)),
                (InitData.Init_int8 (Integers.Int.repr 53)),
                (InitData.Init_int8 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 48)),
                (InitData.Init_int8 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 54)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 77)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 65)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_lbase : GlobVar Ty := {
  gvar_info := (tarray tushort 31),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int16 (Integers.Int.repr 163)),
                (InitData.Init_int16 (Integers.Int.repr 195)),
                (InitData.Init_int16 (Integers.Int.repr 227)),
                (InitData.Init_int16 (Integers.Int.repr 258)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int16 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_lext : GlobVar Ty := {
  gvar_info := (tarray tushort 31),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 199)),
                (InitData.Init_int16 (Integers.Int.repr 75))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_dbase : GlobVar Ty := {
  gvar_info := (tarray tushort 32),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int16 (Integers.Int.repr 33)),
                (InitData.Init_int16 (Integers.Int.repr 49)),
                (InitData.Init_int16 (Integers.Int.repr 65)),
                (InitData.Init_int16 (Integers.Int.repr 97)),
                (InitData.Init_int16 (Integers.Int.repr 129)),
                (InitData.Init_int16 (Integers.Int.repr 193)),
                (InitData.Init_int16 (Integers.Int.repr 257)),
                (InitData.Init_int16 (Integers.Int.repr 385)),
                (InitData.Init_int16 (Integers.Int.repr 513)),
                (InitData.Init_int16 (Integers.Int.repr 769)),
                (InitData.Init_int16 (Integers.Int.repr 1025)),
                (InitData.Init_int16 (Integers.Int.repr 1537)),
                (InitData.Init_int16 (Integers.Int.repr 2049)),
                (InitData.Init_int16 (Integers.Int.repr 3073)),
                (InitData.Init_int16 (Integers.Int.repr 4097)),
                (InitData.Init_int16 (Integers.Int.repr 6145)),
                (InitData.Init_int16 (Integers.Int.repr 8193)),
                (InitData.Init_int16 (Integers.Int.repr 12289)),
                (InitData.Init_int16 (Integers.Int.repr 16385)),
                (InitData.Init_int16 (Integers.Int.repr 24577)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int16 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_dext : GlobVar Ty := {
  gvar_info := (tarray tushort 32),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int16 (Integers.Int.repr 64)),
                (InitData.Init_int16 (Integers.Int.repr 64))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_inflate_table : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_type, tint), (_lens, (tptr tushort)), (_codes, tuint),
                (_table, (tptr (tptr (Ty.Tstruct __1353 noattr)))),
                (_bits, (tptr tuint)), (_work, (tptr tushort))],
  fn_vars := [(_here, (Ty.Tstruct __1353 noattr)),
              (_count, (tarray tushort 16)), (_offs, (tarray tushort 16))],
  fn_temps := [(_len, tuint), (_sym, tuint), (_min, tuint), (_max, tuint),
               (_root, tuint), (_curr, tuint), (_drop, tuint), (_left, tint),
               (_used, tuint), (_huff, tuint), (_incr, tuint),
               (_fill, tuint), (_low, tuint), (_mask, tuint),
               (_next, (tptr (Ty.Tstruct __1353 noattr))),
               (_base, (tptr tushort)), (_extra, (tptr tushort)),
               (_match, tuint), (_t'10, tint), (_t'9, tint), (_t'8, tint),
               (_t'7, tushort), (_t'6, tint), (_t'5, tint), (_t'4, tushort),
               (_t'3, tint), (_t'2, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'1, (tptr (Ty.Tstruct __1353 noattr))), (_t'36, tushort),
               (_t'35, tushort), (_t'34, tushort), (_t'33, tushort),
               (_t'32, tushort), (_t'31, tushort), (_t'30, tushort),
               (_t'29, tushort), (_t'28, tushort), (_t'27, tushort),
               (_t'26, tushort), (_t'25, tushort), (_t'24, tushort),
               (_t'23, tushort), (_t'22, tushort), (_t'21, tushort),
               (_t'20, tushort), (_t'19, tushort), (_t'18, tushort),
               (_t'17, tushort), (_t'16, tushort),
               (_t'15, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'14, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'13, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'12, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'11, (tptr (Ty.Tstruct __1353 noattr)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _base
    (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint) (tptr tvoid)))
  (Stmt.Ssequence
    (Stmt.Sset _extra
      (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint) (tptr tvoid)))
    (Stmt.Ssequence
      (Stmt.Sset _match (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _len (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Sloop
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                  (Expr.Etempvar _len tuint)
                                  (Expr.Econst_int (Integers.Int.repr 15) tint)
                                  tint)
                Stmt.Sskip
                Stmt.Sbreak)
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd
                    (Expr.Evar _count (tarray tushort 16))
                    (Expr.Etempvar _len tuint) (tptr tushort)) tushort)
                (Expr.Econst_int (Integers.Int.repr 0) tint)))
            (Stmt.Sset _len
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _len tuint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _sym (Expr.Econst_int (Integers.Int.repr 0) tint))
            (Stmt.Sloop
              (Stmt.Ssequence
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                    (Expr.Etempvar _sym tuint)
                                    (Expr.Etempvar _codes tuint) tint)
                  Stmt.Sskip
                  Stmt.Sbreak)
                (Stmt.Ssequence
                  (Stmt.Sset _t'34
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Etempvar _lens (tptr tushort))
                        (Expr.Etempvar _sym tuint) (tptr tushort)) tushort))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'35
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _lens (tptr tushort))
                          (Expr.Etempvar _sym tuint) (tptr tushort)) tushort))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'36
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Evar _count (tarray tushort 16))
                            (Expr.Etempvar _t'35 tushort) (tptr tushort))
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Evar _count (tarray tushort 16))
                            (Expr.Etempvar _t'34 tushort) (tptr tushort))
                          tushort)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'36 tushort)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))))
              (Stmt.Sset _sym
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sym tuint)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))))
          (Stmt.Ssequence
            (Stmt.Sset _root
              (Expr.Ederef (Expr.Etempvar _bits (tptr tuint)) tuint))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _max
                  (Expr.Econst_int (Integers.Int.repr 15) tint))
                (Stmt.Sloop
                  (Stmt.Ssequence
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                        (Expr.Etempvar _max tuint)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tint)
                      Stmt.Sskip
                      Stmt.Sbreak)
                    (Stmt.Ssequence
                      (Stmt.Sset _t'33
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Evar _count (tarray tushort 16))
                            (Expr.Etempvar _max tuint) (tptr tushort))
                          tushort))
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                          (Expr.Etempvar _t'33 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                          tint)
                        Stmt.Sbreak
                        Stmt.Sskip)))
                  (Stmt.Sset _max
                    (Expr.Ebinop Binop.Osub (Expr.Etempvar _max tuint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))))
              (Stmt.Ssequence
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                    (Expr.Etempvar _root tuint)
                                    (Expr.Etempvar _max tuint) tint)
                  (Stmt.Sset _root (Expr.Etempvar _max tuint))
                  Stmt.Sskip)
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                      (Expr.Etempvar _max tuint)
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      tint)
                    (Stmt.Ssequence
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Evar _here (Ty.Tstruct __1353 noattr)) _op
                          tuchar)
                        (Expr.Ecast
                          (Expr.Econst_int (Integers.Int.repr 64) tint)
                          tuchar))
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                            _bits tuchar)
                          (Expr.Ecast
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tuchar))
                        (Stmt.Ssequence
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                              _val tushort)
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              tushort))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'1
                                  (Expr.Ederef
                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                    (tptr (Ty.Tstruct __1353 noattr))))
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                    (tptr (Ty.Tstruct __1353 noattr)))
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'1 (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    (tptr (Ty.Tstruct __1353 noattr)))))
                              (Stmt.Sassign
                                (Expr.Ederef
                                  (Expr.Etempvar _t'1 (tptr (Ty.Tstruct __1353 noattr)))
                                  (Ty.Tstruct __1353 noattr))
                                (Expr.Evar _here (Ty.Tstruct __1353 noattr))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'2
                                    (Expr.Ederef
                                      (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                      (tptr (Ty.Tstruct __1353 noattr))))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                      (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'2 (tptr (Ty.Tstruct __1353 noattr)))
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      (tptr (Ty.Tstruct __1353 noattr)))))
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Etempvar _t'2 (tptr (Ty.Tstruct __1353 noattr)))
                                    (Ty.Tstruct __1353 noattr))
                                  (Expr.Evar _here (Ty.Tstruct __1353 noattr))))
                              (Stmt.Ssequence
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Etempvar _bits (tptr tuint)) tuint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint))
                                (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))))
                    Stmt.Sskip)
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _min
                        (Expr.Econst_int (Integers.Int.repr 1) tint))
                      (Stmt.Sloop
                        (Stmt.Ssequence
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                              (Expr.Etempvar _min tuint)
                                              (Expr.Etempvar _max tuint)
                                              tint)
                            Stmt.Sskip
                            Stmt.Sbreak)
                          (Stmt.Ssequence
                            (Stmt.Sset _t'32
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Evar _count (tarray tushort 16))
                                  (Expr.Etempvar _min tuint) (tptr tushort))
                                tushort))
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                (Expr.Etempvar _t'32 tushort)
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                tint)
                              Stmt.Sbreak
                              Stmt.Sskip)))
                        (Stmt.Sset _min
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _min tuint)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tuint))))
                    (Stmt.Ssequence
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                          (Expr.Etempvar _root tuint)
                                          (Expr.Etempvar _min tuint) tint)
                        (Stmt.Sset _root (Expr.Etempvar _min tuint))
                        Stmt.Sskip)
                      (Stmt.Ssequence
                        (Stmt.Sset _left
                          (Expr.Econst_int (Integers.Int.repr 1) tint))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _len
                              (Expr.Econst_int (Integers.Int.repr 1) tint))
                            (Stmt.Sloop
                              (Stmt.Ssequence
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                                    (Expr.Etempvar _len tuint)
                                                    (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                    tint)
                                  Stmt.Sskip
                                  Stmt.Sbreak)
                                (Stmt.Ssequence
                                  (Stmt.Sset _left
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Etempvar _left tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'31
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Evar _count (tarray tushort 16))
                                            (Expr.Etempvar _len tuint)
                                            (tptr tushort)) tushort))
                                      (Stmt.Sset _left
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _left tint)
                                          (Expr.Etempvar _t'31 tushort) tint)))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                        (Expr.Etempvar _left tint)
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                        tint)
                                      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tint)))
                                      Stmt.Sskip))))
                              (Stmt.Sset _len
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _len tuint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  tuint))))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                  (Expr.Etempvar _left tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                    (Expr.Etempvar _type tint)
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                    tint)
                                  (Stmt.Sset _t'3
                                    (Expr.Ecast
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tbool))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'3
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.One
                                          (Expr.Etempvar _max tuint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint) tbool))
                                    (Stmt.Sset _t'3
                                      (Expr.Ecast (Expr.Etempvar _t'3 tint)
                                        tbool))))
                                (Stmt.Sset _t'3
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)))
                              (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
                                (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint)))
                                Stmt.Sskip))
                            (Stmt.Ssequence
                              (Stmt.Sassign
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Evar _offs (tarray tushort 16))
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    (tptr tushort)) tushort)
                                (Expr.Econst_int (Integers.Int.repr 0) tint))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _len
                                    (Expr.Econst_int (Integers.Int.repr 1) tint))
                                  (Stmt.Sloop
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                          (Expr.Etempvar _len tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                          tint)
                                        Stmt.Sskip
                                        Stmt.Sbreak)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'29
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Evar _offs (tarray tushort 16))
                                              (Expr.Etempvar _len tuint)
                                              (tptr tushort)) tushort))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'30
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Evar _count (tarray tushort 16))
                                                (Expr.Etempvar _len tuint)
                                                (tptr tushort)) tushort))
                                          (Stmt.Sassign
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Evar _offs (tarray tushort 16))
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _len tuint)
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  tuint) (tptr tushort))
                                              tushort)
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _t'29 tushort)
                                              (Expr.Etempvar _t'30 tushort)
                                              tint)))))
                                    (Stmt.Sset _len
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _len tuint)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tuint))))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _sym
                                      (Expr.Econst_int (Integers.Int.repr 0) tint))
                                    (Stmt.Sloop
                                      (Stmt.Ssequence
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                            (Expr.Etempvar _sym tuint)
                                                            (Expr.Etempvar _codes tuint)
                                                            tint)
                                          Stmt.Sskip
                                          Stmt.Sbreak)
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'26
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _lens (tptr tushort))
                                                (Expr.Etempvar _sym tuint)
                                                (tptr tushort)) tushort))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                              (Expr.Etempvar _t'26 tushort)
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              tint)
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'28
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _lens (tptr tushort))
                                                        (Expr.Etempvar _sym tuint)
                                                        (tptr tushort))
                                                      tushort))
                                                  (Stmt.Sset _t'4
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Evar _offs (tarray tushort 16))
                                                        (Expr.Etempvar _t'28 tushort)
                                                        (tptr tushort))
                                                      tushort)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'27
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _lens (tptr tushort))
                                                        (Expr.Etempvar _sym tuint)
                                                        (tptr tushort))
                                                      tushort))
                                                  (Stmt.Sassign
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Evar _offs (tarray tushort 16))
                                                        (Expr.Etempvar _t'27 tushort)
                                                        (tptr tushort))
                                                      tushort)
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'4 tushort)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint))))
                                              (Stmt.Sassign
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _work (tptr tushort))
                                                    (Expr.Etempvar _t'4 tushort)
                                                    (tptr tushort)) tushort)
                                                (Expr.Ecast
                                                  (Expr.Etempvar _sym tuint)
                                                  tushort)))
                                            Stmt.Sskip)))
                                      (Stmt.Sset _sym
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _sym tuint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tuint))))
                                  (Stmt.Ssequence
                                    (Stmt.Sswitch (Expr.Etempvar _type tint)
                                      (LStmts.LScons (some 0)
                                        (Stmt.Ssequence
                                          (Stmt.Sset _match
                                            (Expr.Econst_int (Integers.Int.repr 20) tint))
                                          Stmt.Sbreak)
                                        (LStmts.LScons (some 1)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _base
                                              (Expr.Evar _lbase (tarray tushort 31)))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _extra
                                                (Expr.Evar _lext (tarray tushort 31)))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _match
                                                  (Expr.Econst_int (Integers.Int.repr 257) tint))
                                                Stmt.Sbreak)))
                                          (LStmts.LScons (some 2)
                                            (Stmt.Ssequence
                                              (Stmt.Sset _base
                                                (Expr.Evar _dbase (tarray tushort 32)))
                                              (Stmt.Sset _extra
                                                (Expr.Evar _dext (tarray tushort 32))))
                                            LStmts.LSnil))))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _huff
                                        (Expr.Econst_int (Integers.Int.repr 0) tint))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _sym
                                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _len
                                            (Expr.Etempvar _min tuint))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _next
                                              (Expr.Ederef
                                                (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                (tptr (Ty.Tstruct __1353 noattr))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _curr
                                                (Expr.Etempvar _root tuint))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _drop
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _low
                                                    (Expr.Ecast
                                                      (Expr.Eunop Unop.Oneg
                                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                        tint) tuint))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _used
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                        (Expr.Etempvar _root tuint)
                                                        tuint))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _mask
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _used tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tuint))
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Sifthenelse 
                                                              (Expr.Ebinop Binop.Oeq
                                                                (Expr.Etempvar _type tint)
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                tint)
                                                              (Stmt.Sset _t'5
                                                                (Expr.Ecast
                                                                  (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _used tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 852) tint)
                                                                    tint)
                                                                  tbool))
                                                              (Stmt.Sset _t'5
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                            (Stmt.Sifthenelse (Expr.Etempvar _t'5 tint)
                                                              (Stmt.Sset _t'6
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                              (Stmt.Sifthenelse 
                                                                (Expr.Ebinop Binop.Oeq
                                                                  (Expr.Etempvar _type tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                  tint)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'6
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _used tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 592) tint)
                                                                    tint)
                                                                    tbool))
                                                                  (Stmt.Sset _t'6
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'6 tint)
                                                                    tbool)))
                                                                (Stmt.Sset _t'6
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tbool)))))
                                                          (Stmt.Sifthenelse (Expr.Etempvar _t'6 tint)
                                                            (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
                                                            Stmt.Sskip))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sloop
                                                            (Stmt.Ssequence
                                                              Stmt.Sskip
                                                              (Stmt.Ssequence
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar)
                                                                  (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    tuchar))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'19
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'19 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _match tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'25
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort)
                                                                    (Expr.Etempvar _t'25 tushort))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'20
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oge
                                                                    (Expr.Etempvar _t'20 tushort)
                                                                    (Expr.Etempvar _match tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'23
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'24
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _extra (tptr tushort))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'23 tushort)
                                                                    (Expr.Etempvar _match tuint)
                                                                    tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'24 tushort)
                                                                    tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'21
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'22
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _base (tptr tushort))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'21 tushort)
                                                                    (Expr.Etempvar _match tuint)
                                                                    tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort)
                                                                    (Expr.Etempvar _t'22 tushort)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                                    tint)
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))))))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _incr
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _fill
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _curr tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _min
                                                                    (Expr.Etempvar _fill tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _fill
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _fill tuint)
                                                                    (Expr.Etempvar _incr tuint)
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _next (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _fill tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _fill tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _incr
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Etempvar _incr tuint)
                                                                    tuint)
                                                                    (Stmt.Sset _incr
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _incr tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _incr tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _huff
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _incr tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _huff
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Etempvar _incr tuint)
                                                                    tuint)))
                                                                    (Stmt.Sset _huff
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _sym
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'18
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Evar _count (tarray tushort 16))
                                                                    (Expr.Etempvar _len tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sset _t'7
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'18 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint)
                                                                    tushort)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Evar _count (tarray tushort 16))
                                                                    (Expr.Etempvar _len tuint)
                                                                    (tptr tushort))
                                                                    tushort)
                                                                    (Expr.Etempvar _t'7 tushort)))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'7 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _max tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'17
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _work (tptr tushort))
                                                                    (Expr.Etempvar _sym tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _lens (tptr tushort))
                                                                    (Expr.Etempvar _t'17 tushort)
                                                                    (tptr tushort))
                                                                    tushort))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _root tuint)
                                                                    tint)
                                                                    (Stmt.Sset _t'10
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Etempvar _mask tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _low tuint)
                                                                    tint)
                                                                    tbool))
                                                                    (Stmt.Sset _t'10
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'10 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _drop tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sset _drop
                                                                    (Expr.Etempvar _root tuint))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _next (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _min tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _curr
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (Expr.Etempvar _curr tuint)
                                                                    tint)
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _curr tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _max tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'16
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Evar _count (tarray tushort 16))
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _curr tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _left tint)
                                                                    (Expr.Etempvar _t'16 tushort)
                                                                    tint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Etempvar _left tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _curr
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _curr tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Etempvar _left tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _used
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _used tuint)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _curr tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _type tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint)
                                                                    (Stmt.Sset _t'8
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _used tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 852) tint)
                                                                    tint)
                                                                    tbool))
                                                                    (Stmt.Sset _t'8
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'8 tint)
                                                                    (Stmt.Sset _t'9
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _type tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'9
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _used tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 592) tint)
                                                                    tint)
                                                                    tbool))
                                                                    (Stmt.Sset _t'9
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'9 tint)
                                                                    tbool)))
                                                                    (Stmt.Sset _t'9
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tbool)))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'9 tint)
                                                                    (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _low
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (Expr.Etempvar _mask tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'15
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'15 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _low tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _curr tuint)
                                                                    tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'14
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'14 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _low tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _root tuint)
                                                                    tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'12
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'13
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'12 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _low tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _next (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _t'13 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    tlong)
                                                                    tushort))))))))))))))
                                                                    Stmt.Sskip))))))))))))))
                                                            Stmt.Sskip)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sifthenelse 
                                                              (Expr.Ebinop Binop.One
                                                                (Expr.Etempvar _huff tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                tint)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar)
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                                    tuchar))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _drop tuint)
                                                                    tuint)
                                                                    tuchar))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _next (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _huff tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))))))
                                                              Stmt.Sskip)
                                                            (Stmt.Ssequence
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'11
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                (Stmt.Sassign
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _table (tptr (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'11 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _used tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sassign
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _bits (tptr tuint))
                                                                    tuint)
                                                                  (Expr.Etempvar _root tuint))
                                                                (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))))))))))))))))))))))))))))))
}

def v_lenfix : GlobVar Ty := {
  gvar_info := (tarray (Ty.Tstruct __1353 noattr) 512),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 80)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 48)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 192)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 160)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 128)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 224)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 88)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 144)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 120)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 56)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 208)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 40)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 176)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 136)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 72)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 240)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 84)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 227)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 52)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 200)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 36)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 168)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 132)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 68)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 232)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 92)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 152)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 124)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 60)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 216)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 44)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 184)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 140)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 76)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 248)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 82)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 163)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 196)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 34)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 164)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 130)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 66)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 228)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 90)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 148)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 122)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 58)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 212)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 106)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 42)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 180)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 138)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 74)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 244)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 86)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 54)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 204)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 38)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 172)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 134)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 70)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 236)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 94)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 30)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 156)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 126)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 62)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 220)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 188)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 142)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 78)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 252)),
                (InitData.Init_int8 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 81)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 113)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 194)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 33)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 162)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 129)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 65)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 226)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 89)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 146)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 57)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 210)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 41)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 178)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 137)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 73)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 242)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 85)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 258)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 117)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 53)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 202)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 37)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 170)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 133)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 69)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 234)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 93)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 154)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 125)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 61)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 218)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 186)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 141)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 77)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 250)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 195)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 198)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 166)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 230)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 91)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 150)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 123)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 214)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 182)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 139)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 75)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 246)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 87)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 55)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 206)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 39)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 174)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 135)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 71)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 238)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 95)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 158)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 127)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 63)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 222)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 47)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 190)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 143)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 79)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 254)),
                (InitData.Init_int8 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 80)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 48)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 193)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 161)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 128)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 225)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 88)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 145)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 120)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 56)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 209)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 40)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 177)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 136)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 72)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 241)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 84)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 227)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 52)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 201)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 36)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 169)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 132)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 68)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 233)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 92)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 153)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 124)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 60)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 217)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 44)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 185)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 140)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 76)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 249)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 82)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 163)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 197)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 34)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 165)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 130)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 66)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 229)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 90)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 149)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 122)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 58)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 213)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 106)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 42)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 181)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 138)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 74)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 245)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 86)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 54)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 205)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 38)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 173)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 134)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 70)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 237)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 94)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 30)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 157)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 126)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 62)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 221)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 189)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 142)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 78)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 253)),
                (InitData.Init_int8 (Integers.Int.repr 96)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 81)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 113)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 195)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 33)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 163)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 129)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 65)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 227)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 89)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 147)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 57)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 211)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 41)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 179)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 137)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 73)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 243)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 85)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 258)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 117)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 53)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 203)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 37)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 171)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 133)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 69)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 235)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 93)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 155)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 125)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 61)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 219)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 187)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 141)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 77)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 251)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 195)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 199)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 167)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 231)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 91)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 151)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 123)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 215)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 183)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 139)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 75)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 247)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 87)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 55)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 207)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 39)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 175)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 135)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 71)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 239)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 95)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 159)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 127)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 63)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 223)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 47)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 191)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 143)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 79)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 255))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_distfix : GlobVar Ty := {
  gvar_info := (tarray (Ty.Tstruct __1353 noattr) 32),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 257)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 4097)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 1025)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 65)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 16385)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 513)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 33)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 8193)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 2049)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 129)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 385)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 6145)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 1537)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 24577)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 769)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 12289)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 3073)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 193)),
                (InitData.Init_int8 (Integers.Int.repr 64)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_inflate_fixed : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_state, (tptr (Ty.Tstruct _inflate_state noattr)))],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sassign
    (Expr.Efield
      (Expr.Ederef
        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
        (Ty.Tstruct _inflate_state noattr)) _lencode
      (tptr (Ty.Tstruct __1353 noattr)))
    (Expr.Evar _lenfix (tarray (Ty.Tstruct __1353 noattr) 512)))
  (Stmt.Ssequence
    (Stmt.Sassign
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
          (Ty.Tstruct _inflate_state noattr)) _lenbits tuint)
      (Expr.Econst_int (Integers.Int.repr 9) tint))
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _distcode
          (tptr (Ty.Tstruct __1353 noattr)))
        (Expr.Evar _distfix (tarray (Ty.Tstruct __1353 noattr) 32)))
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _distbits tuint)
        (Expr.Econst_int (Integers.Int.repr 5) tint)))))
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
 (_inflate_copyright, GlobDef.Gvar v_inflate_copyright),
 (_lbase, GlobDef.Gvar v_lbase), (_lext, GlobDef.Gvar v_lext),
 (_dbase, GlobDef.Gvar v_dbase), (_dext, GlobDef.Gvar v_dext),
 (_inflate_table, GlobDef.Gfun (FunDef.Internal f_inflate_table)),
 (_lenfix, GlobDef.Gvar v_lenfix), (_distfix, GlobDef.Gvar v_distfix),
 (_inflate_fixed, GlobDef.Gfun (FunDef.Internal f_inflate_fixed))]

def public_idents : List Ident :=
[_inflate_fixed, _inflate_table, _inflate_copyright, ___builtin_debug,
 ___builtin_fmin, ___builtin_fmax, ___builtin_fnmsub, ___builtin_fnmadd,
 ___builtin_fmsub, ___builtin_fmadd, ___builtin_clsll, ___builtin_clsl,
 ___builtin_cls, ___builtin_expect, ___builtin_unreachable,
 ___builtin_va_end, ___builtin_va_copy, ___builtin_va_arg,
 ___builtin_va_start, ___builtin_membar, ___builtin_annot_intval,
 ___builtin_annot, ___builtin_sel, ___builtin_memcpy_aligned,
 ___builtin_sqrt, ___builtin_fsqrt, ___builtin_fabsf, ___builtin_fabs,
 ___builtin_ctzll, ___builtin_ctzl, ___builtin_ctz, ___builtin_clzll,
 ___builtin_clzl, ___builtin_clz, ___builtin_bswap16, ___builtin_bswap32,
 ___builtin_bswap, ___builtin_bswap64, ___compcert_i64_umulh,
 ___compcert_i64_smulh, ___compcert_i64_sar, ___compcert_i64_shr,
 ___compcert_i64_shl, ___compcert_i64_umod, ___compcert_i64_smod,
 ___compcert_i64_udiv, ___compcert_i64_sdiv, ___compcert_i64_utof,
 ___compcert_i64_stof, ___compcert_i64_utod, ___compcert_i64_stod,
 ___compcert_i64_dtou, ___compcert_i64_dtos, ___compcert_va_composite,
 ___compcert_va_float64, ___compcert_va_int64, ___compcert_va_int32]

def prog : Program :=
  mkprogram composites global_definitions public_idents _main

end Inftrees

