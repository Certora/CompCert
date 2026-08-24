import Clightdefs
open CC

namespace Inflate

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
  def source_file : String := "inflate.c"
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
def ___stringlit_10 : Ident := identOfString "__stringlit_10"
def ___stringlit_11 : Ident := identOfString "__stringlit_11"
def ___stringlit_12 : Ident := identOfString "__stringlit_12"
def ___stringlit_13 : Ident := identOfString "__stringlit_13"
def ___stringlit_14 : Ident := identOfString "__stringlit_14"
def ___stringlit_15 : Ident := identOfString "__stringlit_15"
def ___stringlit_16 : Ident := identOfString "__stringlit_16"
def ___stringlit_17 : Ident := identOfString "__stringlit_17"
def ___stringlit_18 : Ident := identOfString "__stringlit_18"
def ___stringlit_19 : Ident := identOfString "__stringlit_19"
def ___stringlit_2 : Ident := identOfString "__stringlit_2"
def ___stringlit_3 : Ident := identOfString "__stringlit_3"
def ___stringlit_4 : Ident := identOfString "__stringlit_4"
def ___stringlit_5 : Ident := identOfString "__stringlit_5"
def ___stringlit_6 : Ident := identOfString "__stringlit_6"
def ___stringlit_7 : Ident := identOfString "__stringlit_7"
def ___stringlit_8 : Ident := identOfString "__stringlit_8"
def ___stringlit_9 : Ident := identOfString "__stringlit_9"
def _adler : Ident := identOfString "adler"
def _adler32 : Ident := identOfString "adler32"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _back : Ident := identOfString "back"
def _bits : Ident := identOfString "bits"
def _buf : Ident := identOfString "buf"
def _check : Ident := identOfString "check"
def _codes : Ident := identOfString "codes"
def _comm_max : Ident := identOfString "comm_max"
def _comment : Ident := identOfString "comment"
def _copy : Ident := identOfString "copy"
def _crc32 : Ident := identOfString "crc32"
def _data_type : Ident := identOfString "data_type"
def _dest : Ident := identOfString "dest"
def _dictLength : Ident := identOfString "dictLength"
def _dictid : Ident := identOfString "dictid"
def _dictionary : Ident := identOfString "dictionary"
def _dist : Ident := identOfString "dist"
def _distbits : Ident := identOfString "distbits"
def _distcode : Ident := identOfString "distcode"
def _dmax : Ident := identOfString "dmax"
def _done : Ident := identOfString "done"
def _end : Ident := identOfString "end"
def _extra : Ident := identOfString "extra"
def _extra_len : Ident := identOfString "extra_len"
def _extra_max : Ident := identOfString "extra_max"
def _flags : Ident := identOfString "flags"
def _flush : Ident := identOfString "flush"
def _from : Ident := identOfString "from"
def _got : Ident := identOfString "got"
def _gz_header_s : Ident := identOfString "gz_header_s"
def _have : Ident := identOfString "have"
def _havedict : Ident := identOfString "havedict"
def _hbuf : Ident := identOfString "hbuf"
def _hcrc : Ident := identOfString "hcrc"
def _head : Ident := identOfString "head"
def _here : Ident := identOfString "here"
def _hold : Ident := identOfString "hold"
def _in : Ident := identOfString "in"
def _inf_leave : Ident := identOfString "inf_leave"
def _inflate : Ident := identOfString "inflate"
def _inflateCodesUsed : Ident := identOfString "inflateCodesUsed"
def _inflateCopy : Ident := identOfString "inflateCopy"
def _inflateEnd : Ident := identOfString "inflateEnd"
def _inflateGetDictionary : Ident := identOfString "inflateGetDictionary"
def _inflateGetHeader : Ident := identOfString "inflateGetHeader"
def _inflateInit2_ : Ident := identOfString "inflateInit2_"
def _inflateInit_ : Ident := identOfString "inflateInit_"
def _inflateMark : Ident := identOfString "inflateMark"
def _inflatePrime : Ident := identOfString "inflatePrime"
def _inflateReset : Ident := identOfString "inflateReset"
def _inflateReset2 : Ident := identOfString "inflateReset2"
def _inflateResetKeep : Ident := identOfString "inflateResetKeep"
def _inflateSetDictionary : Ident := identOfString "inflateSetDictionary"
def _inflateStateCheck : Ident := identOfString "inflateStateCheck"
def _inflateSync : Ident := identOfString "inflateSync"
def _inflateSyncPoint : Ident := identOfString "inflateSyncPoint"
def _inflateUndermine : Ident := identOfString "inflateUndermine"
def _inflateValidate : Ident := identOfString "inflateValidate"
def _inflate_fast : Ident := identOfString "inflate_fast"
def _inflate_fixed : Ident := identOfString "inflate_fixed"
def _inflate_state : Ident := identOfString "inflate_state"
def _inflate_table : Ident := identOfString "inflate_table"
def _internal_state : Ident := identOfString "internal_state"
def _last : Ident := identOfString "last"
def _left : Ident := identOfString "left"
def _len : Ident := identOfString "len"
def _lenbits : Ident := identOfString "lenbits"
def _lencode : Ident := identOfString "lencode"
def _length : Ident := identOfString "length"
def _lens : Ident := identOfString "lens"
def _main : Ident := identOfString "main"
def _memcpy : Ident := identOfString "memcpy"
def _memset : Ident := identOfString "memset"
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
def _order : Ident := identOfString "order"
def _os : Ident := identOfString "os"
def _out : Ident := identOfString "out"
def _put : Ident := identOfString "put"
def _reserved : Ident := identOfString "reserved"
def _ret : Ident := identOfString "ret"
def _sane : Ident := identOfString "sane"
def _source : Ident := identOfString "source"
def _state : Ident := identOfString "state"
def _stream_size : Ident := identOfString "stream_size"
def _strm : Ident := identOfString "strm"
def _subvert : Ident := identOfString "subvert"
def _syncsearch : Ident := identOfString "syncsearch"
def _text : Ident := identOfString "text"
def _time : Ident := identOfString "time"
def _total : Ident := identOfString "total"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
def _updatewindow : Ident := identOfString "updatewindow"
def _val : Ident := identOfString "val"
def _value : Ident := identOfString "value"
def _version : Ident := identOfString "version"
def _was : Ident := identOfString "was"
def _wbits : Ident := identOfString "wbits"
def _whave : Ident := identOfString "whave"
def _window : Ident := identOfString "window"
def _windowBits : Ident := identOfString "windowBits"
def _wnext : Ident := identOfString "wnext"
def _work : Ident := identOfString "work"
def _wrap : Ident := identOfString "wrap"
def _wsize : Ident := identOfString "wsize"
def _xflags : Ident := identOfString "xflags"
def _z_stream_s : Ident := identOfString "z_stream_s"
def _zalloc : Ident := identOfString "zalloc"
def _zcalloc : Ident := identOfString "zcalloc"
def _zcfree : Ident := identOfString "zcfree"
def _zfree : Ident := identOfString "zfree"
def _t'1 : Ident := (Positive.ofNat 128)
def _t'10 : Ident := (Positive.ofNat 137)
def _t'100 : Ident := (Positive.ofNat 227)
def _t'101 : Ident := (Positive.ofNat 228)
def _t'102 : Ident := (Positive.ofNat 229)
def _t'103 : Ident := (Positive.ofNat 230)
def _t'104 : Ident := (Positive.ofNat 231)
def _t'105 : Ident := (Positive.ofNat 232)
def _t'106 : Ident := (Positive.ofNat 233)
def _t'107 : Ident := (Positive.ofNat 234)
def _t'108 : Ident := (Positive.ofNat 235)
def _t'109 : Ident := (Positive.ofNat 236)
def _t'11 : Ident := (Positive.ofNat 138)
def _t'110 : Ident := (Positive.ofNat 237)
def _t'111 : Ident := (Positive.ofNat 238)
def _t'112 : Ident := (Positive.ofNat 239)
def _t'113 : Ident := (Positive.ofNat 240)
def _t'114 : Ident := (Positive.ofNat 241)
def _t'115 : Ident := (Positive.ofNat 242)
def _t'116 : Ident := (Positive.ofNat 243)
def _t'117 : Ident := (Positive.ofNat 244)
def _t'118 : Ident := (Positive.ofNat 245)
def _t'119 : Ident := (Positive.ofNat 246)
def _t'12 : Ident := (Positive.ofNat 139)
def _t'120 : Ident := (Positive.ofNat 247)
def _t'121 : Ident := (Positive.ofNat 248)
def _t'122 : Ident := (Positive.ofNat 249)
def _t'123 : Ident := (Positive.ofNat 250)
def _t'124 : Ident := (Positive.ofNat 251)
def _t'125 : Ident := (Positive.ofNat 252)
def _t'126 : Ident := (Positive.ofNat 253)
def _t'127 : Ident := (Positive.ofNat 254)
def _t'128 : Ident := (Positive.ofNat 255)
def _t'129 : Ident := (Positive.ofNat 256)
def _t'13 : Ident := (Positive.ofNat 140)
def _t'130 : Ident := (Positive.ofNat 257)
def _t'131 : Ident := (Positive.ofNat 258)
def _t'132 : Ident := (Positive.ofNat 259)
def _t'133 : Ident := (Positive.ofNat 260)
def _t'134 : Ident := (Positive.ofNat 261)
def _t'135 : Ident := (Positive.ofNat 262)
def _t'136 : Ident := (Positive.ofNat 263)
def _t'137 : Ident := (Positive.ofNat 264)
def _t'138 : Ident := (Positive.ofNat 265)
def _t'139 : Ident := (Positive.ofNat 266)
def _t'14 : Ident := (Positive.ofNat 141)
def _t'140 : Ident := (Positive.ofNat 267)
def _t'141 : Ident := (Positive.ofNat 268)
def _t'142 : Ident := (Positive.ofNat 269)
def _t'143 : Ident := (Positive.ofNat 270)
def _t'144 : Ident := (Positive.ofNat 271)
def _t'145 : Ident := (Positive.ofNat 272)
def _t'146 : Ident := (Positive.ofNat 273)
def _t'147 : Ident := (Positive.ofNat 274)
def _t'148 : Ident := (Positive.ofNat 275)
def _t'149 : Ident := (Positive.ofNat 276)
def _t'15 : Ident := (Positive.ofNat 142)
def _t'150 : Ident := (Positive.ofNat 277)
def _t'151 : Ident := (Positive.ofNat 278)
def _t'152 : Ident := (Positive.ofNat 279)
def _t'153 : Ident := (Positive.ofNat 280)
def _t'154 : Ident := (Positive.ofNat 281)
def _t'155 : Ident := (Positive.ofNat 282)
def _t'156 : Ident := (Positive.ofNat 283)
def _t'157 : Ident := (Positive.ofNat 284)
def _t'158 : Ident := (Positive.ofNat 285)
def _t'159 : Ident := (Positive.ofNat 286)
def _t'16 : Ident := (Positive.ofNat 143)
def _t'160 : Ident := (Positive.ofNat 287)
def _t'161 : Ident := (Positive.ofNat 288)
def _t'162 : Ident := (Positive.ofNat 289)
def _t'163 : Ident := (Positive.ofNat 290)
def _t'164 : Ident := (Positive.ofNat 291)
def _t'165 : Ident := (Positive.ofNat 292)
def _t'166 : Ident := (Positive.ofNat 293)
def _t'167 : Ident := (Positive.ofNat 294)
def _t'168 : Ident := (Positive.ofNat 295)
def _t'169 : Ident := (Positive.ofNat 296)
def _t'17 : Ident := (Positive.ofNat 144)
def _t'170 : Ident := (Positive.ofNat 297)
def _t'171 : Ident := (Positive.ofNat 298)
def _t'172 : Ident := (Positive.ofNat 299)
def _t'173 : Ident := (Positive.ofNat 300)
def _t'174 : Ident := (Positive.ofNat 301)
def _t'175 : Ident := (Positive.ofNat 302)
def _t'176 : Ident := (Positive.ofNat 303)
def _t'177 : Ident := (Positive.ofNat 304)
def _t'178 : Ident := (Positive.ofNat 305)
def _t'179 : Ident := (Positive.ofNat 306)
def _t'18 : Ident := (Positive.ofNat 145)
def _t'180 : Ident := (Positive.ofNat 307)
def _t'181 : Ident := (Positive.ofNat 308)
def _t'182 : Ident := (Positive.ofNat 309)
def _t'183 : Ident := (Positive.ofNat 310)
def _t'184 : Ident := (Positive.ofNat 311)
def _t'185 : Ident := (Positive.ofNat 312)
def _t'186 : Ident := (Positive.ofNat 313)
def _t'187 : Ident := (Positive.ofNat 314)
def _t'188 : Ident := (Positive.ofNat 315)
def _t'189 : Ident := (Positive.ofNat 316)
def _t'19 : Ident := (Positive.ofNat 146)
def _t'190 : Ident := (Positive.ofNat 317)
def _t'191 : Ident := (Positive.ofNat 318)
def _t'192 : Ident := (Positive.ofNat 319)
def _t'193 : Ident := (Positive.ofNat 320)
def _t'194 : Ident := (Positive.ofNat 321)
def _t'195 : Ident := (Positive.ofNat 322)
def _t'196 : Ident := (Positive.ofNat 323)
def _t'197 : Ident := (Positive.ofNat 324)
def _t'198 : Ident := (Positive.ofNat 325)
def _t'199 : Ident := (Positive.ofNat 326)
def _t'2 : Ident := (Positive.ofNat 129)
def _t'20 : Ident := (Positive.ofNat 147)
def _t'200 : Ident := (Positive.ofNat 327)
def _t'201 : Ident := (Positive.ofNat 328)
def _t'202 : Ident := (Positive.ofNat 329)
def _t'203 : Ident := (Positive.ofNat 330)
def _t'204 : Ident := (Positive.ofNat 331)
def _t'205 : Ident := (Positive.ofNat 332)
def _t'206 : Ident := (Positive.ofNat 333)
def _t'207 : Ident := (Positive.ofNat 334)
def _t'208 : Ident := (Positive.ofNat 335)
def _t'209 : Ident := (Positive.ofNat 336)
def _t'21 : Ident := (Positive.ofNat 148)
def _t'210 : Ident := (Positive.ofNat 337)
def _t'211 : Ident := (Positive.ofNat 338)
def _t'212 : Ident := (Positive.ofNat 339)
def _t'213 : Ident := (Positive.ofNat 340)
def _t'214 : Ident := (Positive.ofNat 341)
def _t'215 : Ident := (Positive.ofNat 342)
def _t'216 : Ident := (Positive.ofNat 343)
def _t'217 : Ident := (Positive.ofNat 344)
def _t'218 : Ident := (Positive.ofNat 345)
def _t'219 : Ident := (Positive.ofNat 346)
def _t'22 : Ident := (Positive.ofNat 149)
def _t'220 : Ident := (Positive.ofNat 347)
def _t'221 : Ident := (Positive.ofNat 348)
def _t'222 : Ident := (Positive.ofNat 349)
def _t'223 : Ident := (Positive.ofNat 350)
def _t'224 : Ident := (Positive.ofNat 351)
def _t'225 : Ident := (Positive.ofNat 352)
def _t'226 : Ident := (Positive.ofNat 353)
def _t'227 : Ident := (Positive.ofNat 354)
def _t'228 : Ident := (Positive.ofNat 355)
def _t'229 : Ident := (Positive.ofNat 356)
def _t'23 : Ident := (Positive.ofNat 150)
def _t'230 : Ident := (Positive.ofNat 357)
def _t'231 : Ident := (Positive.ofNat 358)
def _t'232 : Ident := (Positive.ofNat 359)
def _t'233 : Ident := (Positive.ofNat 360)
def _t'234 : Ident := (Positive.ofNat 361)
def _t'235 : Ident := (Positive.ofNat 362)
def _t'236 : Ident := (Positive.ofNat 363)
def _t'237 : Ident := (Positive.ofNat 364)
def _t'238 : Ident := (Positive.ofNat 365)
def _t'239 : Ident := (Positive.ofNat 366)
def _t'24 : Ident := (Positive.ofNat 151)
def _t'240 : Ident := (Positive.ofNat 367)
def _t'241 : Ident := (Positive.ofNat 368)
def _t'242 : Ident := (Positive.ofNat 369)
def _t'243 : Ident := (Positive.ofNat 370)
def _t'244 : Ident := (Positive.ofNat 371)
def _t'245 : Ident := (Positive.ofNat 372)
def _t'246 : Ident := (Positive.ofNat 373)
def _t'247 : Ident := (Positive.ofNat 374)
def _t'248 : Ident := (Positive.ofNat 375)
def _t'249 : Ident := (Positive.ofNat 376)
def _t'25 : Ident := (Positive.ofNat 152)
def _t'250 : Ident := (Positive.ofNat 377)
def _t'251 : Ident := (Positive.ofNat 378)
def _t'252 : Ident := (Positive.ofNat 379)
def _t'253 : Ident := (Positive.ofNat 380)
def _t'254 : Ident := (Positive.ofNat 381)
def _t'255 : Ident := (Positive.ofNat 382)
def _t'256 : Ident := (Positive.ofNat 383)
def _t'257 : Ident := (Positive.ofNat 384)
def _t'258 : Ident := (Positive.ofNat 385)
def _t'259 : Ident := (Positive.ofNat 386)
def _t'26 : Ident := (Positive.ofNat 153)
def _t'260 : Ident := (Positive.ofNat 387)
def _t'261 : Ident := (Positive.ofNat 388)
def _t'262 : Ident := (Positive.ofNat 389)
def _t'263 : Ident := (Positive.ofNat 390)
def _t'264 : Ident := (Positive.ofNat 391)
def _t'265 : Ident := (Positive.ofNat 392)
def _t'266 : Ident := (Positive.ofNat 393)
def _t'267 : Ident := (Positive.ofNat 394)
def _t'268 : Ident := (Positive.ofNat 395)
def _t'269 : Ident := (Positive.ofNat 396)
def _t'27 : Ident := (Positive.ofNat 154)
def _t'270 : Ident := (Positive.ofNat 397)
def _t'271 : Ident := (Positive.ofNat 398)
def _t'272 : Ident := (Positive.ofNat 399)
def _t'273 : Ident := (Positive.ofNat 400)
def _t'274 : Ident := (Positive.ofNat 401)
def _t'275 : Ident := (Positive.ofNat 402)
def _t'276 : Ident := (Positive.ofNat 403)
def _t'277 : Ident := (Positive.ofNat 404)
def _t'278 : Ident := (Positive.ofNat 405)
def _t'279 : Ident := (Positive.ofNat 406)
def _t'28 : Ident := (Positive.ofNat 155)
def _t'280 : Ident := (Positive.ofNat 407)
def _t'281 : Ident := (Positive.ofNat 408)
def _t'282 : Ident := (Positive.ofNat 409)
def _t'283 : Ident := (Positive.ofNat 410)
def _t'284 : Ident := (Positive.ofNat 411)
def _t'285 : Ident := (Positive.ofNat 412)
def _t'286 : Ident := (Positive.ofNat 413)
def _t'287 : Ident := (Positive.ofNat 414)
def _t'288 : Ident := (Positive.ofNat 415)
def _t'289 : Ident := (Positive.ofNat 416)
def _t'29 : Ident := (Positive.ofNat 156)
def _t'290 : Ident := (Positive.ofNat 417)
def _t'291 : Ident := (Positive.ofNat 418)
def _t'292 : Ident := (Positive.ofNat 419)
def _t'293 : Ident := (Positive.ofNat 420)
def _t'294 : Ident := (Positive.ofNat 421)
def _t'295 : Ident := (Positive.ofNat 422)
def _t'296 : Ident := (Positive.ofNat 423)
def _t'297 : Ident := (Positive.ofNat 424)
def _t'298 : Ident := (Positive.ofNat 425)
def _t'299 : Ident := (Positive.ofNat 426)
def _t'3 : Ident := (Positive.ofNat 130)
def _t'30 : Ident := (Positive.ofNat 157)
def _t'300 : Ident := (Positive.ofNat 427)
def _t'301 : Ident := (Positive.ofNat 428)
def _t'302 : Ident := (Positive.ofNat 429)
def _t'303 : Ident := (Positive.ofNat 430)
def _t'304 : Ident := (Positive.ofNat 431)
def _t'305 : Ident := (Positive.ofNat 432)
def _t'306 : Ident := (Positive.ofNat 433)
def _t'307 : Ident := (Positive.ofNat 434)
def _t'308 : Ident := (Positive.ofNat 435)
def _t'309 : Ident := (Positive.ofNat 436)
def _t'31 : Ident := (Positive.ofNat 158)
def _t'310 : Ident := (Positive.ofNat 437)
def _t'311 : Ident := (Positive.ofNat 438)
def _t'312 : Ident := (Positive.ofNat 439)
def _t'313 : Ident := (Positive.ofNat 440)
def _t'314 : Ident := (Positive.ofNat 441)
def _t'315 : Ident := (Positive.ofNat 442)
def _t'316 : Ident := (Positive.ofNat 443)
def _t'317 : Ident := (Positive.ofNat 444)
def _t'318 : Ident := (Positive.ofNat 445)
def _t'319 : Ident := (Positive.ofNat 446)
def _t'32 : Ident := (Positive.ofNat 159)
def _t'320 : Ident := (Positive.ofNat 447)
def _t'321 : Ident := (Positive.ofNat 448)
def _t'322 : Ident := (Positive.ofNat 449)
def _t'323 : Ident := (Positive.ofNat 450)
def _t'324 : Ident := (Positive.ofNat 451)
def _t'325 : Ident := (Positive.ofNat 452)
def _t'326 : Ident := (Positive.ofNat 453)
def _t'327 : Ident := (Positive.ofNat 454)
def _t'328 : Ident := (Positive.ofNat 455)
def _t'329 : Ident := (Positive.ofNat 456)
def _t'33 : Ident := (Positive.ofNat 160)
def _t'330 : Ident := (Positive.ofNat 457)
def _t'331 : Ident := (Positive.ofNat 458)
def _t'332 : Ident := (Positive.ofNat 459)
def _t'333 : Ident := (Positive.ofNat 460)
def _t'334 : Ident := (Positive.ofNat 461)
def _t'335 : Ident := (Positive.ofNat 462)
def _t'336 : Ident := (Positive.ofNat 463)
def _t'337 : Ident := (Positive.ofNat 464)
def _t'338 : Ident := (Positive.ofNat 465)
def _t'339 : Ident := (Positive.ofNat 466)
def _t'34 : Ident := (Positive.ofNat 161)
def _t'340 : Ident := (Positive.ofNat 467)
def _t'341 : Ident := (Positive.ofNat 468)
def _t'342 : Ident := (Positive.ofNat 469)
def _t'343 : Ident := (Positive.ofNat 470)
def _t'344 : Ident := (Positive.ofNat 471)
def _t'345 : Ident := (Positive.ofNat 472)
def _t'346 : Ident := (Positive.ofNat 473)
def _t'347 : Ident := (Positive.ofNat 474)
def _t'348 : Ident := (Positive.ofNat 475)
def _t'349 : Ident := (Positive.ofNat 476)
def _t'35 : Ident := (Positive.ofNat 162)
def _t'350 : Ident := (Positive.ofNat 477)
def _t'351 : Ident := (Positive.ofNat 478)
def _t'352 : Ident := (Positive.ofNat 479)
def _t'353 : Ident := (Positive.ofNat 480)
def _t'354 : Ident := (Positive.ofNat 481)
def _t'355 : Ident := (Positive.ofNat 482)
def _t'356 : Ident := (Positive.ofNat 483)
def _t'357 : Ident := (Positive.ofNat 484)
def _t'358 : Ident := (Positive.ofNat 485)
def _t'359 : Ident := (Positive.ofNat 486)
def _t'36 : Ident := (Positive.ofNat 163)
def _t'360 : Ident := (Positive.ofNat 487)
def _t'361 : Ident := (Positive.ofNat 488)
def _t'362 : Ident := (Positive.ofNat 489)
def _t'363 : Ident := (Positive.ofNat 490)
def _t'364 : Ident := (Positive.ofNat 491)
def _t'365 : Ident := (Positive.ofNat 492)
def _t'366 : Ident := (Positive.ofNat 493)
def _t'367 : Ident := (Positive.ofNat 494)
def _t'368 : Ident := (Positive.ofNat 495)
def _t'369 : Ident := (Positive.ofNat 496)
def _t'37 : Ident := (Positive.ofNat 164)
def _t'370 : Ident := (Positive.ofNat 497)
def _t'371 : Ident := (Positive.ofNat 498)
def _t'372 : Ident := (Positive.ofNat 499)
def _t'373 : Ident := (Positive.ofNat 500)
def _t'374 : Ident := (Positive.ofNat 501)
def _t'375 : Ident := (Positive.ofNat 502)
def _t'376 : Ident := (Positive.ofNat 503)
def _t'377 : Ident := (Positive.ofNat 504)
def _t'378 : Ident := (Positive.ofNat 505)
def _t'379 : Ident := (Positive.ofNat 506)
def _t'38 : Ident := (Positive.ofNat 165)
def _t'380 : Ident := (Positive.ofNat 507)
def _t'381 : Ident := (Positive.ofNat 508)
def _t'382 : Ident := (Positive.ofNat 509)
def _t'383 : Ident := (Positive.ofNat 510)
def _t'384 : Ident := (Positive.ofNat 511)
def _t'385 : Ident := (Positive.ofNat 512)
def _t'386 : Ident := (Positive.ofNat 513)
def _t'387 : Ident := (Positive.ofNat 514)
def _t'388 : Ident := (Positive.ofNat 515)
def _t'389 : Ident := (Positive.ofNat 516)
def _t'39 : Ident := (Positive.ofNat 166)
def _t'390 : Ident := (Positive.ofNat 517)
def _t'391 : Ident := (Positive.ofNat 518)
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
def _t'81 : Ident := (Positive.ofNat 208)
def _t'82 : Ident := (Positive.ofNat 209)
def _t'83 : Ident := (Positive.ofNat 210)
def _t'84 : Ident := (Positive.ofNat 211)
def _t'85 : Ident := (Positive.ofNat 212)
def _t'86 : Ident := (Positive.ofNat 213)
def _t'87 : Ident := (Positive.ofNat 214)
def _t'88 : Ident := (Positive.ofNat 215)
def _t'89 : Ident := (Positive.ofNat 216)
def _t'9 : Ident := (Positive.ofNat 136)
def _t'90 : Ident := (Positive.ofNat 217)
def _t'91 : Ident := (Positive.ofNat 218)
def _t'92 : Ident := (Positive.ofNat 219)
def _t'93 : Ident := (Positive.ofNat 220)
def _t'94 : Ident := (Positive.ofNat 221)
def _t'95 : Ident := (Positive.ofNat 222)
def _t'96 : Ident := (Positive.ofNat 223)
def _t'97 : Ident := (Positive.ofNat 224)
def _t'98 : Ident := (Positive.ofNat 225)
def _t'99 : Ident := (Positive.ofNat 226)

def v___stringlit_5 : GlobVar Ty := {
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

def v___stringlit_10 : GlobVar Ty := {
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
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_15 : GlobVar Ty := {
  gvar_info := (tarray tschar 20),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_7 : GlobVar Ty := {
  gvar_info := (tarray tschar 26),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_14 : GlobVar Ty := {
  gvar_info := (tarray tschar 19),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_6 : GlobVar Ty := {
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

def v___stringlit_8 : GlobVar Ty := {
  gvar_info := (tarray tschar 37),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 45)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_2 : GlobVar Ty := {
  gvar_info := (tarray tschar 23),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_13 : GlobVar Ty := {
  gvar_info := (tarray tschar 29),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_17 : GlobVar Ty := {
  gvar_info := (tarray tschar 25),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 117)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 102)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_12 : GlobVar Ty := {
  gvar_info := (tarray tschar 36),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
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
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 121)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 98)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_18 : GlobVar Ty := {
  gvar_info := (tarray tschar 23),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_3 : GlobVar Ty := {
  gvar_info := (tarray tschar 21),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_9 : GlobVar Ty := {
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
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_16 : GlobVar Ty := {
  gvar_info := (tarray tschar 27),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 117)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 107)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 112)),
                (InitData.Init_int8 (Integers.Int.repr 114)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 109)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_4 : GlobVar Ty := {
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

def v___stringlit_19 : GlobVar Ty := {
  gvar_info := (tarray tschar 20),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 119)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 122)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_1 : GlobVar Ty := {
  gvar_info := (tarray tschar 6),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 49)),
                (InitData.Init_int8 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 51)),
                (InitData.Init_int8 (Integers.Int.repr 46)),
                (InitData.Init_int8 (Integers.Int.repr 50)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v___stringlit_11 : GlobVar Ty := {
  gvar_info := (tarray tschar 25),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 118)),
                (InitData.Init_int8 (Integers.Int.repr 97)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 105)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 99)),
                (InitData.Init_int8 (Integers.Int.repr 111)),
                (InitData.Init_int8 (Integers.Int.repr 100)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 108)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 110)),
                (InitData.Init_int8 (Integers.Int.repr 103)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 104)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 32)),
                (InitData.Init_int8 (Integers.Int.repr 115)),
                (InitData.Init_int8 (Integers.Int.repr 101)),
                (InitData.Init_int8 (Integers.Int.repr 116)),
                (InitData.Init_int8 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_inflateStateCheck : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'5, tint), (_t'4, tint), (_t'3, tint), (_t'2, tint),
               (_t'1, tint),
               (_t'11,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))),
               (_t'10,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))),
               (_t'9, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'8, (tptr (Ty.Tstruct _z_stream_s noattr))), (_t'7, tint),
               (_t'6, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                          (Expr.Ecast
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            (tptr tvoid)) tint)
        (Stmt.Sset _t'1 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Ssequence
          (Stmt.Sset _t'11
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _zalloc
              (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                      cc_default))))
          (Stmt.Sset _t'1
            (Expr.Ecast
              (Expr.Ebinop Binop.Oeq
                (Expr.Etempvar _t'11 (tptr (Ty.Tfunction
                                             [(tptr tvoid), tuint, tuint]
                                             (tptr tvoid) cc_default)))
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                          (tptr tvoid) cc_default))) tint) tbool))))
      (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
        (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Ssequence
          (Stmt.Sset _t'10
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _zfree
              (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                      cc_default))))
          (Stmt.Sset _t'2
            (Expr.Ecast
              (Expr.Ebinop Binop.Oeq
                (Expr.Etempvar _t'10 (tptr (Ty.Tfunction
                                             [(tptr tvoid), (tptr tvoid)]
                                             tvoid cc_default)))
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                          cc_default))) tint) tbool)))))
    (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
      (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'9
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'9 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  (tptr tvoid)) tint)
              (Stmt.Sset _t'3 (Expr.Econst_int (Integers.Int.repr 1) tint))
              (Stmt.Ssequence
                (Stmt.Sset _t'8
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _strm
                    (tptr (Ty.Tstruct _z_stream_s noattr))))
                (Stmt.Sset _t'3
                  (Expr.Ecast
                    (Expr.Ebinop Binop.One
                      (Expr.Etempvar _t'8 (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      tint) tbool))))
            (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
              (Stmt.Sset _t'4 (Expr.Econst_int (Integers.Int.repr 1) tint))
              (Stmt.Ssequence
                (Stmt.Sset _t'7
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _mode tint))
                (Stmt.Sset _t'4
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Olt (Expr.Etempvar _t'7 tint)
                      (Expr.Econst_int (Integers.Int.repr 16180) tint) tint)
                    tbool)))))
          (Stmt.Sifthenelse (Expr.Etempvar _t'4 tint)
            (Stmt.Sset _t'5 (Expr.Econst_int (Integers.Int.repr 1) tint))
            (Stmt.Ssequence
              (Stmt.Sset _t'6
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _mode tint))
              (Stmt.Sset _t'5
                (Expr.Ecast
                  (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'6 tint)
                    (Expr.Econst_int (Integers.Int.repr 16211) tint) tint)
                  tbool)))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'5 tint)
          (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
          Stmt.Sskip))
      (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))
}

def f_inflateResetKeep : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'5, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'4, (tptr (Ty.Tstruct __1353 noattr))), (_t'3, tulong),
               (_t'2, tulong), (_t'1, tint),
               (_t'8, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'7, tint), (_t'6, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'8
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'8 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'2
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _total tulong)
                (Expr.Etempvar _t'2 tulong)))
            (Stmt.Sset _t'3 (Expr.Ecast (Expr.Etempvar _t'2 tulong) tulong)))
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _total_out tulong)
            (Expr.Etempvar _t'3 tulong)))
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Ty.Tstruct _z_stream_s noattr)) _total_in tulong)
          (Expr.Etempvar _t'3 tulong)))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Ty.Tstruct _z_stream_s noattr)) _msg (tptr tschar))
          (Expr.Econst_int (Integers.Int.repr 0) tint))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _data_type tint)
            (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'6
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wrap tint))
              (Stmt.Sifthenelse (Expr.Etempvar _t'6 tint)
                (Stmt.Ssequence
                  (Stmt.Sset _t'7
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wrap tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _adler tulong)
                    (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'7 tint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
                Stmt.Sskip))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _mode tint)
                (Expr.Econst_int (Integers.Int.repr 16180) tint))
              (Stmt.Ssequence
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _last tint)
                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                (Stmt.Ssequence
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _havedict tint)
                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                  (Stmt.Ssequence
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _flags tint)
                      (Expr.Eunop Unop.Oneg
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
                    (Stmt.Ssequence
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _dmax tuint)
                        (Expr.Econst_int (Integers.Int.repr 32768) tuint))
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _head
                            (tptr (Ty.Tstruct _gz_header_s noattr)))
                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                        (Stmt.Ssequence
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _hold
                              tulong)
                            (Expr.Econst_int (Integers.Int.repr 0) tint))
                          (Stmt.Ssequence
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _bits
                                tuint)
                              (Expr.Econst_int (Integers.Int.repr 0) tint))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'4
                                        (Expr.Ecast
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _codes
                                            (tarray (Ty.Tstruct __1353 noattr) 1444))
                                          (tptr (Ty.Tstruct __1353 noattr))))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _next
                                          (tptr (Ty.Tstruct __1353 noattr)))
                                        (Expr.Etempvar _t'4 (tptr (Ty.Tstruct __1353 noattr)))))
                                    (Stmt.Sset _t'5
                                      (Expr.Ecast
                                        (Expr.Etempvar _t'4 (tptr (Ty.Tstruct __1353 noattr)))
                                        (tptr (Ty.Tstruct __1353 noattr)))))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _distcode
                                      (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Etempvar _t'5 (tptr (Ty.Tstruct __1353 noattr)))))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _lencode
                                    (tptr (Ty.Tstruct __1353 noattr)))
                                  (Expr.Etempvar _t'5 (tptr (Ty.Tstruct __1353 noattr)))))
                              (Stmt.Ssequence
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _sane tint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint))
                                (Stmt.Ssequence
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _back tint)
                                    (Expr.Eunop Unop.Oneg
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint))
                                  (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))))))))))))))))
}

def f_inflateReset : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tint), (_t'1, tint),
               (_t'3, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'3
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'3 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _wsize tuint)
        (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _whave tuint)
          (Expr.Econst_int (Integers.Int.repr 0) tint))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _wnext tuint)
            (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Ssequence
            (Stmt.Scall (some _t'2)
              (Expr.Evar _inflateResetKeep (Ty.Tfunction
                                             [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                             tint cc_default))
              [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
            (Stmt.Sreturn (some (Expr.Etempvar _t'2 tint)))))))))
}

def f_inflateReset2 : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_windowBits, tint)],
  fn_vars := [],
  fn_temps := [(_wrap, tint),
               (_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'4, tint), (_t'3, tint), (_t'2, tint), (_t'1, tint),
               (_t'10, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'9, tuint), (_t'8, (tptr tuchar)), (_t'7, (tptr tuchar)),
               (_t'6, (tptr tvoid)),
               (_t'5,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'10
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'10 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                          (Expr.Etempvar _windowBits tint)
                          (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                              (Expr.Etempvar _windowBits tint)
                              (Expr.Eunop Unop.Oneg
                                (Expr.Econst_int (Integers.Int.repr 15) tint)
                                tint) tint)
            (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                  tint)))
            Stmt.Sskip)
          (Stmt.Ssequence
            (Stmt.Sset _wrap (Expr.Econst_int (Integers.Int.repr 0) tint))
            (Stmt.Sset _windowBits
              (Expr.Eunop Unop.Oneg (Expr.Etempvar _windowBits tint) tint))))
        (Stmt.Ssequence
          (Stmt.Sset _wrap
            (Expr.Ebinop Binop.Oadd
              (Expr.Ebinop Binop.Oshr (Expr.Etempvar _windowBits tint)
                (Expr.Econst_int (Integers.Int.repr 4) tint) tint)
              (Expr.Econst_int (Integers.Int.repr 5) tint) tint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                              (Expr.Etempvar _windowBits tint)
                              (Expr.Econst_int (Integers.Int.repr 48) tint)
                              tint)
            (Stmt.Sset _windowBits
              (Expr.Ebinop Binop.Oand (Expr.Etempvar _windowBits tint)
                (Expr.Econst_int (Integers.Int.repr 15) tint) tint))
            Stmt.Sskip)))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Etempvar _windowBits tint)
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                (Expr.Etempvar _windowBits tint)
                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                tint)
              (Stmt.Sset _t'2
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 1) tint)
                  tbool))
              (Stmt.Ssequence
                (Stmt.Sset _t'2
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Ogt (Expr.Etempvar _windowBits tint)
                      (Expr.Econst_int (Integers.Int.repr 15) tint) tint)
                    tbool))
                (Stmt.Sset _t'2 (Expr.Ecast (Expr.Etempvar _t'2 tint) tbool))))
            (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint)))
          (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
            (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                  tint)))
            Stmt.Sskip))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'8
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _window
                  (tptr tuchar)))
              (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                  (Expr.Etempvar _t'8 (tptr tuchar))
                                  (Expr.Ecast
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    (tptr tvoid)) tint)
                (Stmt.Ssequence
                  (Stmt.Sset _t'9
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wbits tuint))
                  (Stmt.Sset _t'3
                    (Expr.Ecast
                      (Expr.Ebinop Binop.One (Expr.Etempvar _t'9 tuint)
                        (Expr.Ecast (Expr.Etempvar _windowBits tint) tuint)
                        tint) tbool)))
                (Stmt.Sset _t'3 (Expr.Econst_int (Integers.Int.repr 0) tint))))
            (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'5
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _zfree
                      (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                              cc_default))))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'6
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                          (Ty.Tstruct _z_stream_s noattr)) _opaque
                        (tptr tvoid)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'7
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _window
                          (tptr tuchar)))
                      (Stmt.Scall none
                        (Expr.Ederef
                          (Expr.Etempvar _t'5 (tptr (Ty.Tfunction
                                                      [(tptr tvoid),
                                                       (tptr tvoid)] tvoid
                                                      cc_default)))
                          (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                            cc_default))
                        [(Expr.Etempvar _t'6 (tptr tvoid)),
                         (Expr.Ecast (Expr.Etempvar _t'7 (tptr tuchar))
                           (tptr tvoid))]))))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _window
                    (tptr tuchar))
                  (Expr.Econst_int (Integers.Int.repr 0) tint)))
              Stmt.Sskip))
          (Stmt.Ssequence
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint)
              (Expr.Etempvar _wrap tint))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wbits tuint)
                (Expr.Ecast (Expr.Etempvar _windowBits tint) tuint))
              (Stmt.Ssequence
                (Stmt.Scall (some _t'4)
                  (Expr.Evar _inflateReset (Ty.Tfunction
                                             [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                             tint cc_default))
                  [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
                (Stmt.Sreturn (some (Expr.Etempvar _t'4 tint)))))))))))
}

def f_inflateInit2_ : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_windowBits, tint), (_version, (tptr tschar)),
                (_stream_size, tint)],
  fn_vars := [],
  fn_temps := [(_ret, tint),
               (_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'4, tint), (_t'3, (tptr tvoid)), (_t'2, tint),
               (_t'1, tint), (_t'12, tschar), (_t'11, tschar),
               (_t'10,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))),
               (_t'9,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))), (_t'8, (tptr tvoid)),
               (_t'7,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))), (_t'6, (tptr tvoid)),
               (_t'5,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                          (Expr.Etempvar _version (tptr tschar))
                          (Expr.Ecast
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            (tptr tvoid)) tint)
        (Stmt.Sset _t'1 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Ssequence
          (Stmt.Sset _t'11
            (Expr.Ederef
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _version (tptr tschar))
                (Expr.Econst_int (Integers.Int.repr 0) tint) (tptr tschar))
              tschar))
          (Stmt.Ssequence
            (Stmt.Sset _t'12
              (Expr.Ederef
                (Expr.Ebinop Binop.Oadd
                  (Expr.Evar ___stringlit_1 (tarray tschar 6))
                  (Expr.Econst_int (Integers.Int.repr 0) tint) (tptr tschar))
                tschar))
            (Stmt.Sset _t'1
              (Expr.Ecast
                (Expr.Ebinop Binop.One (Expr.Etempvar _t'11 tschar)
                  (Expr.Etempvar _t'12 tschar) tint) tbool)))))
      (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
        (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Sset _t'2
          (Expr.Ecast
            (Expr.Ebinop Binop.One (Expr.Etempvar _stream_size tint)
              (Expr.Ecast
                (Expr.Esizeof (Ty.Tstruct _z_stream_s noattr) tulong) tint)
              tint) tbool))))
    (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 6) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Expr.Ecast
                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                          (tptr tvoid)) tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip)
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _msg (tptr tschar))
        (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'10
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _zalloc
              (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                      cc_default))))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                              (Expr.Etempvar _t'10 (tptr (Ty.Tfunction
                                                           [(tptr tvoid),
                                                            tuint, tuint]
                                                           (tptr tvoid)
                                                           cc_default)))
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                (tptr (Ty.Tfunction
                                        [(tptr tvoid), tuint, tuint]
                                        (tptr tvoid) cc_default))) tint)
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _zalloc
                  (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                          (tptr tvoid) cc_default)))
                (Expr.Evar _zcalloc (Ty.Tfunction
                                      [(tptr tvoid), tuint, tuint]
                                      (tptr tvoid) cc_default)))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _opaque (tptr tvoid))
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (tptr tvoid))))
            Stmt.Sskip))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'9
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _zfree
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _t'9 (tptr (Ty.Tfunction
                                                            [(tptr tvoid),
                                                             (tptr tvoid)]
                                                            tvoid cc_default)))
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  (tptr (Ty.Tfunction
                                          [(tptr tvoid), (tptr tvoid)] tvoid
                                          cc_default))) tint)
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _zfree
                  (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                          cc_default)))
                (Expr.Evar _zcfree (Ty.Tfunction [(tptr tvoid), (tptr tvoid)]
                                     tvoid cc_default)))
              Stmt.Sskip))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'7
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _zalloc
                    (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                            (tptr tvoid) cc_default))))
                (Stmt.Ssequence
                  (Stmt.Sset _t'8
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _opaque
                      (tptr tvoid)))
                  (Stmt.Scall (some _t'3)
                    (Expr.Ederef
                      (Expr.Etempvar _t'7 (tptr (Ty.Tfunction
                                                  [(tptr tvoid), tuint,
                                                   tuint] (tptr tvoid)
                                                  cc_default)))
                      (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))
                    [(Expr.Etempvar _t'8 (tptr tvoid)),
                     (Expr.Econst_int (Integers.Int.repr 1) tint),
                     (Expr.Esizeof (Ty.Tstruct _inflate_state noattr) tulong)])))
              (Stmt.Sset _state
                (Expr.Ecast (Expr.Etempvar _t'3 (tptr tvoid))
                  (tptr (Ty.Tstruct _inflate_state noattr)))))
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Expr.Ecast
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    (tptr tvoid)) tint)
                (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                      (Expr.Econst_int (Integers.Int.repr 4) tint)
                                      tint)))
                Stmt.Sskip)
              (Stmt.Ssequence
                (Stmt.Scall none
                  (Expr.Evar _memset (Ty.Tfunction
                                       [(tptr tvoid), tint, tulong]
                                       (tptr tvoid) cc_default))
                  [(Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr))),
                   (Expr.Econst_int (Integers.Int.repr 0) tint),
                   (Expr.Esizeof (Ty.Tstruct _inflate_state noattr) tulong)])
                (Stmt.Ssequence
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _state
                      (tptr (Ty.Tstruct _internal_state noattr)))
                    (Expr.Ecast
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (tptr (Ty.Tstruct _internal_state noattr))))
                  (Stmt.Ssequence
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _strm
                        (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))))
                    (Stmt.Ssequence
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _window
                          (tptr tuchar))
                        (Expr.Econst_int (Integers.Int.repr 0) tint))
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _mode tint)
                          (Expr.Econst_int (Integers.Int.repr 16180) tint))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Scall (some _t'4)
                              (Expr.Evar _inflateReset2 (Ty.Tfunction
                                                          [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                                           tint] tint
                                                          cc_default))
                              [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
                               (Expr.Etempvar _windowBits tint)])
                            (Stmt.Sset _ret (Expr.Etempvar _t'4 tint)))
                          (Stmt.Ssequence
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                (Expr.Etempvar _ret tint)
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                tint)
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'5
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                        (Ty.Tstruct _z_stream_s noattr))
                                      _zfree
                                      (tptr (Ty.Tfunction
                                              [(tptr tvoid), (tptr tvoid)]
                                              tvoid cc_default))))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'6
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                          (Ty.Tstruct _z_stream_s noattr))
                                        _opaque (tptr tvoid)))
                                    (Stmt.Scall none
                                      (Expr.Ederef
                                        (Expr.Etempvar _t'5 (tptr (Ty.Tfunction
                                                                    [(tptr tvoid),
                                                                    (tptr tvoid)]
                                                                    tvoid
                                                                    cc_default)))
                                        (Ty.Tfunction
                                          [(tptr tvoid), (tptr tvoid)] tvoid
                                          cc_default))
                                      [(Expr.Etempvar _t'6 (tptr tvoid)),
                                       (Expr.Ecast
                                         (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                         (tptr tvoid))])))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                      (Ty.Tstruct _z_stream_s noattr)) _state
                                    (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)))
                              Stmt.Sskip)
                            (Stmt.Sreturn (some (Expr.Etempvar _ret tint)))))))))))))))))
}

def f_inflateInit_ : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_version, (tptr tschar)), (_stream_size, tint)],
  fn_vars := [],
  fn_temps := [(_t'1, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _inflateInit2_ (Ty.Tfunction
                                [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                 tint, (tptr tschar), tint] tint cc_default))
    [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
     (Expr.Econst_int (Integers.Int.repr 15) tint),
     (Expr.Etempvar _version (tptr tschar)),
     (Expr.Etempvar _stream_size tint)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tint))))
}

def f_inflatePrime : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_bits, tint), (_value, tint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tint), (_t'1, tint),
               (_t'7, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'6, tuint), (_t'5, tuint), (_t'4, tulong), (_t'3, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _bits tint)
                        (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
      (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))
      Stmt.Sskip)
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'7
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Ty.Tstruct _z_stream_s noattr)) _state
            (tptr (Ty.Tstruct _internal_state noattr))))
        (Stmt.Sset _state
          (Expr.Ecast
            (Expr.Etempvar _t'7 (tptr (Ty.Tstruct _internal_state noattr)))
            (tptr (Ty.Tstruct _inflate_state noattr)))))
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _bits tint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _hold tulong)
              (Expr.Econst_int (Integers.Int.repr 0) tint))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _bits tuint)
                (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))
          Stmt.Sskip)
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                (Expr.Etempvar _bits tint)
                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                tint)
              (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
              (Stmt.Ssequence
                (Stmt.Sset _t'6
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                (Stmt.Sset _t'2
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Ogt
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'6 tuint)
                        (Expr.Ecast (Expr.Etempvar _bits tint) tuint) tuint)
                      (Expr.Econst_int (Integers.Int.repr 32) tint) tint)
                    tbool))))
            (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
              (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                    tint)))
              Stmt.Sskip))
          (Stmt.Ssequence
            (Stmt.Sset _value
              (Expr.Ecast
                (Expr.Ebinop Binop.Oand (Expr.Etempvar _value tint)
                  (Expr.Ebinop Binop.Osub
                    (Expr.Ebinop Binop.Oshl
                      (Expr.Econst_long (Integers.Int64.repr 1) tlong)
                      (Expr.Etempvar _bits tint) tlong)
                    (Expr.Econst_int (Integers.Int.repr 1) tint) tlong)
                  tlong) tint))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'4
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _hold tulong))
                (Stmt.Ssequence
                  (Stmt.Sset _t'5
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _hold tulong)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'4 tulong)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _value tint) tulong)
                        (Expr.Etempvar _t'5 tuint) tulong) tulong))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'3
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _bits tuint)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tuint)
                      (Expr.Ecast (Expr.Etempvar _bits tint) tuint) tuint)))
                (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))))))
}

def f_updatewindow : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_end, (tptr tuchar)), (_copy, tuint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_dist, tuint), (_t'1, (tptr tvoid)),
               (_t'26, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'25, tuint), (_t'24, (tptr tvoid)),
               (_t'23,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))), (_t'22, (tptr tuchar)),
               (_t'21, (tptr tuchar)), (_t'20, tuint), (_t'19, tuint),
               (_t'18, tuint), (_t'17, tuint), (_t'16, (tptr tuchar)),
               (_t'15, tuint), (_t'14, tuint), (_t'13, tuint),
               (_t'12, tuint), (_t'11, (tptr tuchar)),
               (_t'10, (tptr tuchar)), (_t'9, tuint), (_t'8, tuint),
               (_t'7, tuint), (_t'6, tuint), (_t'5, tuint), (_t'4, tuint),
               (_t'3, tuint), (_t'2, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _t'26
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
          (Ty.Tstruct _z_stream_s noattr)) _state
        (tptr (Ty.Tstruct _internal_state noattr))))
    (Stmt.Sset _state
      (Expr.Ecast
        (Expr.Etempvar _t'26 (tptr (Ty.Tstruct _internal_state noattr)))
        (tptr (Ty.Tstruct _inflate_state noattr)))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'21
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _window (tptr tuchar)))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                          (Expr.Etempvar _t'21 (tptr tuchar))
                          (Expr.Ecast
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            (tptr tvoid)) tint)
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'23
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _zalloc
                  (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                          (tptr tvoid) cc_default))))
              (Stmt.Ssequence
                (Stmt.Sset _t'24
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _opaque (tptr tvoid)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'25
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wbits tuint))
                  (Stmt.Scall (some _t'1)
                    (Expr.Ederef
                      (Expr.Etempvar _t'23 (tptr (Ty.Tfunction
                                                   [(tptr tvoid), tuint,
                                                    tuint] (tptr tvoid)
                                                   cc_default)))
                      (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))
                    [(Expr.Etempvar _t'24 (tptr tvoid)),
                     (Expr.Ebinop Binop.Oshl
                       (Expr.Econst_int (Integers.Int.repr 1) tuint)
                       (Expr.Etempvar _t'25 tuint) tuint),
                     (Expr.Esizeof tuchar tulong)]))))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _window (tptr tuchar))
              (Expr.Ecast (Expr.Etempvar _t'1 (tptr tvoid)) (tptr tuchar))))
          (Stmt.Ssequence
            (Stmt.Sset _t'22
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _window (tptr tuchar)))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _t'22 (tptr tuchar))
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  (tptr tvoid)) tint)
              (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
              Stmt.Sskip)))
        Stmt.Sskip))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'19
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'19 tuint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'20
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wbits tuint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wsize tuint)
                (Expr.Ebinop Binop.Oshl
                  (Expr.Econst_int (Integers.Int.repr 1) tuint)
                  (Expr.Etempvar _t'20 tuint) tuint)))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _wnext tuint)
                (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _whave tuint)
                (Expr.Econst_int (Integers.Int.repr 0) tint))))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'2
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                              (Expr.Etempvar _copy tuint)
                              (Expr.Etempvar _t'2 tuint) tint)
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'16
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _window
                    (tptr tuchar)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'17
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'18
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
                    (Stmt.Scall none
                      (Expr.Evar _memcpy (Ty.Tfunction
                                           [(tptr tvoid), (tptr tvoid),
                                            tulong] (tptr tvoid) cc_default))
                      [(Expr.Etempvar _t'16 (tptr tuchar)),
                       (Expr.Ebinop Binop.Osub
                         (Expr.Etempvar _end (tptr tuchar))
                         (Expr.Etempvar _t'17 tuint) (tptr tuchar)),
                       (Expr.Etempvar _t'18 tuint)]))))
              (Stmt.Ssequence
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _wnext tuint)
                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'15
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _whave tuint)
                    (Expr.Etempvar _t'15 tuint)))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'13
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _wsize tuint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'14
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                  (Stmt.Sset _dist
                    (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'13 tuint)
                      (Expr.Etempvar _t'14 tuint) tuint))))
              (Stmt.Ssequence
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                    (Expr.Etempvar _dist tuint)
                                    (Expr.Etempvar _copy tuint) tint)
                  (Stmt.Sset _dist (Expr.Etempvar _copy tuint))
                  Stmt.Sskip)
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'11
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _window
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'12
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                      (Stmt.Scall none
                        (Expr.Evar _memcpy (Ty.Tfunction
                                             [(tptr tvoid), (tptr tvoid),
                                              tulong] (tptr tvoid)
                                             cc_default))
                        [(Expr.Ebinop Binop.Oadd
                           (Expr.Etempvar _t'11 (tptr tuchar))
                           (Expr.Etempvar _t'12 tuint) (tptr tuchar)),
                         (Expr.Ebinop Binop.Osub
                           (Expr.Etempvar _end (tptr tuchar))
                           (Expr.Etempvar _copy tuint) (tptr tuchar)),
                         (Expr.Etempvar _dist tuint)])))
                  (Stmt.Ssequence
                    (Stmt.Sset _copy
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _copy tuint)
                        (Expr.Etempvar _dist tuint) tuint))
                    (Stmt.Sifthenelse (Expr.Etempvar _copy tuint)
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'10
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _window
                              (tptr tuchar)))
                          (Stmt.Scall none
                            (Expr.Evar _memcpy (Ty.Tfunction
                                                 [(tptr tvoid), (tptr tvoid),
                                                  tulong] (tptr tvoid)
                                                 cc_default))
                            [(Expr.Etempvar _t'10 (tptr tuchar)),
                             (Expr.Ebinop Binop.Osub
                               (Expr.Etempvar _end (tptr tuchar))
                               (Expr.Etempvar _copy tuint) (tptr tuchar)),
                             (Expr.Etempvar _copy tuint)]))
                        (Stmt.Ssequence
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _wnext
                              tuint) (Expr.Etempvar _copy tuint))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'9
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _wsize
                                tuint))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _whave
                                tuint) (Expr.Etempvar _t'9 tuint)))))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'8
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _wnext
                              tuint))
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _wnext
                              tuint)
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'8 tuint)
                              (Expr.Etempvar _dist tuint) tuint)))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'6
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _wnext
                                tuint))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'7
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _wsize tuint))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _t'6 tuint)
                                                  (Expr.Etempvar _t'7 tuint)
                                                  tint)
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _wnext tuint)
                                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                                Stmt.Sskip)))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'3
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _whave
                                tuint))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'4
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _wsize tuint))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                  (Expr.Etempvar _t'3 tuint)
                                                  (Expr.Etempvar _t'4 tuint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'5
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _whave tuint))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _whave tuint)
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'5 tuint)
                                      (Expr.Etempvar _dist tuint) tuint)))
                                Stmt.Sskip))))))))))))
        (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))
}

def v_order : GlobVar Ty := {
  gvar_info := (tarray tushort 19),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int16 (Integers.Int.repr 12)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int16 (Integers.Int.repr 14)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int16 (Integers.Int.repr 15))],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_inflate : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_flush, tint)],
  fn_vars := [(_here, (Ty.Tstruct __1353 noattr)),
              (_last, (Ty.Tstruct __1353 noattr)),
              (_hbuf, (tarray tuchar 4))],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_next, (tptr tuchar)), (_put, (tptr tuchar)), (_have, tuint),
               (_left, tuint), (_hold, tulong), (_bits, tuint), (_in, tuint),
               (_out, tuint), (_copy, tuint), (_from, (tptr tuchar)),
               (_len, tuint), (_ret, tint), (_t'109, tint), (_t'108, tint),
               (_t'107, tint), (_t'106, tint), (_t'105, tint),
               (_t'104, tint), (_t'103, tint), (_t'102, tint),
               (_t'101, tulong), (_t'100, tulong), (_t'99, tulong),
               (_t'98, tulong), (_t'97, tint), (_t'96, tint), (_t'95, tint),
               (_t'94, tint), (_t'93, tint), (_t'92, (tptr tuchar)),
               (_t'91, tulong), (_t'90, tint), (_t'89, tint),
               (_t'88, tulong), (_t'87, tulong), (_t'86, tulong),
               (_t'85, tulong), (_t'84, (tptr tuchar)),
               (_t'83, (tptr tuchar)), (_t'82, (tptr tuchar)),
               (_t'81, (tptr tuchar)), (_t'80, tuint),
               (_t'79, (tptr tuchar)), (_t'78, (tptr tuchar)),
               (_t'77, (tptr tuchar)), (_t'76, (tptr tuchar)), (_t'75, tint),
               (_t'74, (tptr tuchar)), (_t'73, (tptr tuchar)), (_t'72, tint),
               (_t'71, tint), (_t'70, tint), (_t'69, tuint), (_t'68, tuint),
               (_t'67, (tptr tuchar)), (_t'66, (tptr tuchar)),
               (_t'65, (tptr tuchar)), (_t'64, tuint),
               (_t'63, (tptr tuchar)), (_t'62, tint),
               (_t'61, (tptr (Ty.Tstruct __1353 noattr))), (_t'60, tuint),
               (_t'59, tuint), (_t'58, (tptr tuchar)), (_t'57, tint),
               (_t'56, (tptr tuchar)), (_t'55, (tptr tuchar)),
               (_t'54, (tptr tuchar)), (_t'53, tint), (_t'52, tulong),
               (_t'51, tulong), (_t'50, tulong), (_t'49, (tptr tuchar)),
               (_t'48, tulong), (_t'47, tulong), (_t'46, tint),
               (_t'45, (tptr tuchar)), (_t'44, tint), (_t'43, tulong),
               (_t'42, tint), (_t'41, tint), (_t'40, tuint), (_t'39, tuint),
               (_t'38, tint), (_t'37, tint), (_t'36, tulong), (_t'35, tint),
               (_t'34, tint), (_t'33, tuint), (_t'32, tuint), (_t'31, tint),
               (_t'30, tint), (_t'29, tulong), (_t'28, tuint), (_t'27, tint),
               (_t'26, tint), (_t'25, tuint), (_t'24, tint), (_t'23, tulong),
               (_t'22, (tptr tuchar)), (_t'21, tint), (_t'20, tulong),
               (_t'19, (tptr tuchar)), (_t'18, tint), (_t'17, tulong),
               (_t'16, (tptr tuchar)), (_t'15, tint), (_t'14, tulong),
               (_t'13, (tptr tuchar)), (_t'12, tint), (_t'11, tulong),
               (_t'10, tulong), (_t'9, tint), (_t'8, tint), (_t'7, tint),
               (_t'6, tulong), (_t'5, tulong), (_t'4, (tptr tuchar)),
               (_t'3, tint), (_t'2, tint), (_t'1, tint),
               (_t'391, (tptr tuchar)), (_t'390, tuint),
               (_t'389, (tptr tuchar)),
               (_t'388, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'387, tint), (_t'386, tint), (_t'385, tuchar),
               (_t'384, tint), (_t'383, tuint), (_t'382, tulong),
               (_t'381, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'380, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'379, tint), (_t'378, tuint), (_t'377, tuint),
               (_t'376, tuchar), (_t'375, tint), (_t'374, tint),
               (_t'373, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'372, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'371, tint), (_t'370, tint), (_t'369, tulong),
               (_t'368, tuchar),
               (_t'367, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'366, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'365, tint), (_t'364, tint), (_t'363, tulong),
               (_t'362, tuchar),
               (_t'361, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'360, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'359, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'358, tint), (_t'357, tint), (_t'356, tulong),
               (_t'355, tuchar),
               (_t'354, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'353, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'352, tint), (_t'351, tint), (_t'350, tulong),
               (_t'349, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'348, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'347, tint), (_t'346, (tptr tuchar)),
               (_t'345, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'344, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'343, tuint), (_t'342, tuint),
               (_t'341, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'340, tuint),
               (_t'339, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'338, tuint),
               (_t'337, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'336, tuint),
               (_t'335, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'334, (tptr tuchar)),
               (_t'333, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'332, tint), (_t'331, tint), (_t'330, tulong),
               (_t'329, tuint), (_t'328, tuint), (_t'327, tint),
               (_t'326, tuchar), (_t'325, (tptr tuchar)),
               (_t'324, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'323, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'322, tuint),
               (_t'321, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'320, tuint), (_t'319, (tptr tuchar)),
               (_t'318, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'317, tint), (_t'316, tint), (_t'315, tulong),
               (_t'314, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'313, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'312, tint), (_t'311, tuchar), (_t'310, (tptr tuchar)),
               (_t'309, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'308, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'307, tuint),
               (_t'306, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'305, tuint), (_t'304, (tptr tuchar)),
               (_t'303, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'302, tint), (_t'301, tint), (_t'300, tulong),
               (_t'299, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'298, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'297, tint), (_t'296, tuchar), (_t'295, tulong),
               (_t'294, tint), (_t'293, tint), (_t'292, tint),
               (_t'291, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'290, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'289, (tptr (Ty.Tstruct _gz_header_s noattr))),
               (_t'288, tuchar), (_t'287, tint), (_t'286, tint),
               (_t'285, tuchar), (_t'284, tuchar), (_t'283, tuint),
               (_t'282, tuchar), (_t'281, tuint), (_t'280, tuint),
               (_t'279, tuint), (_t'278, tuint), (_t'277, tuchar),
               (_t'276, tushort), (_t'275, tuint), (_t'274, tushort),
               (_t'273, (tptr (Ty.Tstruct __1353 noattr))), (_t'272, tuint),
               (_t'271, tuint), (_t'270, tuint), (_t'269, tuint),
               (_t'268, (tptr (Ty.Tstruct __1353 noattr))), (_t'267, tuchar),
               (_t'266, tuchar), (_t'265, tuchar), (_t'264, tuchar),
               (_t'263, tushort), (_t'262, tuchar), (_t'261, tuchar),
               (_t'260, tuchar), (_t'259, tuchar), (_t'258, tuint),
               (_t'257, tuint), (_t'256, tuchar), (_t'255, tuchar),
               (_t'254, tuchar), (_t'253, tuchar), (_t'252, tuchar),
               (_t'251, tuchar), (_t'250, tuchar), (_t'249, tuchar),
               (_t'248, tushort), (_t'247, tushort), (_t'246, tuint),
               (_t'245, tuint), (_t'244, tuint), (_t'243, tushort),
               (_t'242, tint), (_t'241, tushort),
               (_t'240, (tptr (Ty.Tstruct __1353 noattr))), (_t'239, tuint),
               (_t'238, (tptr (Ty.Tstruct __1353 noattr))), (_t'237, tuint),
               (_t'236, tuint), (_t'235, tint), (_t'234, tuint),
               (_t'233, (tptr (Ty.Tstruct __1353 noattr))), (_t'232, tuchar),
               (_t'231, tuchar), (_t'230, tuchar), (_t'229, tuchar),
               (_t'228, tuchar), (_t'227, tuchar), (_t'226, tuchar),
               (_t'225, tushort),
               (_t'224, (tptr (Ty.Tstruct __1353 noattr))), (_t'223, tuchar),
               (_t'222, tuchar), (_t'221, tuchar), (_t'220, tuchar),
               (_t'219, tuchar), (_t'218, tuchar), (_t'217, tint),
               (_t'216, tuchar), (_t'215, tuchar), (_t'214, tuchar),
               (_t'213, tint), (_t'212, tushort), (_t'211, tuchar),
               (_t'210, tuchar), (_t'209, tuchar), (_t'208, tuchar),
               (_t'207, tuint), (_t'206, tuchar), (_t'205, tuint),
               (_t'204, tuint), (_t'203, tuint), (_t'202, tuint),
               (_t'201, tuint), (_t'200, tint), (_t'199, tuint),
               (_t'198, tuint), (_t'197, tuint),
               (_t'196, (tptr (Ty.Tstruct __1353 noattr))), (_t'195, tuchar),
               (_t'194, tuchar), (_t'193, tuchar), (_t'192, tuchar),
               (_t'191, tuchar), (_t'190, tushort),
               (_t'189, (tptr (Ty.Tstruct __1353 noattr))), (_t'188, tuchar),
               (_t'187, tuchar), (_t'186, tuchar), (_t'185, tuchar),
               (_t'184, tuchar), (_t'183, tuchar), (_t'182, tint),
               (_t'181, tuchar), (_t'180, tuchar), (_t'179, tuchar),
               (_t'178, tuchar), (_t'177, tint), (_t'176, tuchar),
               (_t'175, tushort), (_t'174, tuchar), (_t'173, tuint),
               (_t'172, tuchar), (_t'171, tuint), (_t'170, tuint),
               (_t'169, tuint), (_t'168, tuint), (_t'167, tuint),
               (_t'166, tint), (_t'165, tuint), (_t'164, tuint),
               (_t'163, tint), (_t'162, tuint), (_t'161, tuint),
               (_t'160, tuint), (_t'159, (tptr tuchar)), (_t'158, tuint),
               (_t'157, (tptr tuchar)), (_t'156, tuint), (_t'155, tuint),
               (_t'154, tuint), (_t'153, tuint), (_t'152, tuint),
               (_t'151, tuchar), (_t'150, tuint), (_t'149, tuint),
               (_t'148, tuchar), (_t'147, tulong), (_t'146, tulong),
               (_t'145, tint), (_t'144, tulong), (_t'143, tulong),
               (_t'142, tint), (_t'141, tint), (_t'140, tulong),
               (_t'139, tint), (_t'138, tint), (_t'137, tint),
               (_t'136, tint), (_t'135, tuchar), (_t'134, tulong),
               (_t'133, tint), (_t'132, tint), (_t'131, tint),
               (_t'130, tuint), (_t'129, tint), (_t'128, tuint),
               (_t'127, tuint), (_t'126, (tptr tuchar)), (_t'125, tuint),
               (_t'124, tuint), (_t'123, tulong), (_t'122, tulong),
               (_t'121, tulong), (_t'120, tint), (_t'119, (tptr tuchar)),
               (_t'118, tulong), (_t'117, (tptr tuchar)), (_t'116, tulong),
               (_t'115, tint), (_t'114, tint), (_t'113, tint),
               (_t'112, tint), (_t'111, tint), (_t'110, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Scall (some _t'1)
          (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                          [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                          tint cc_default))
          [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
        (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
          (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
          (Stmt.Ssequence
            (Stmt.Sset _t'391
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _next_out (tptr tuchar)))
            (Stmt.Sset _t'2
              (Expr.Ecast
                (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'391 (tptr tuchar))
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    (tptr tvoid)) tint) tbool)))))
      (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
        (Stmt.Sset _t'3 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Ssequence
          (Stmt.Sset _t'389
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _next_in (tptr tuchar)))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                              (Expr.Etempvar _t'389 (tptr tuchar))
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                (tptr tvoid)) tint)
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'390
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
                (Stmt.Sset _t'3
                  (Expr.Ecast
                    (Expr.Ebinop Binop.One (Expr.Etempvar _t'390 tuint)
                      (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
                    tbool)))
              (Stmt.Sset _t'3 (Expr.Ecast (Expr.Etempvar _t'3 tint) tbool)))
            (Stmt.Sset _t'3
              (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint) tbool))))))
    (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'388
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'388 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'387
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _mode tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'387 tint)
                            (Expr.Econst_int (Integers.Int.repr 16191) tint)
                            tint)
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _mode tint)
            (Expr.Econst_int (Integers.Int.repr 16192) tint))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Sloop
          (Stmt.Ssequence
            (Stmt.Sset _put
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _next_out (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Sset _left
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _avail_out tuint))
              (Stmt.Ssequence
                (Stmt.Sset _next
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _next_in
                    (tptr tuchar)))
                (Stmt.Ssequence
                  (Stmt.Sset _have
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _hold
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _hold tulong))
                    (Stmt.Sset _bits
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _bits tuint)))))))
          Stmt.Sbreak)
        (Stmt.Ssequence
          (Stmt.Sset _in (Expr.Etempvar _have tuint))
          (Stmt.Ssequence
            (Stmt.Sset _out (Expr.Etempvar _left tuint))
            (Stmt.Ssequence
              (Stmt.Sset _ret (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Ssequence
                (Stmt.Sloop
                  (Stmt.Ssequence
                    Stmt.Sskip
                    (Stmt.Ssequence
                      (Stmt.Sset _t'132
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _mode tint))
                      (Stmt.Sswitch (Expr.Etempvar _t'132 tint)
                        (LStmts.LScons (some 16180)
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'386
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr)) _wrap
                                  tint))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _t'386 tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _mode tint)
                                    (Expr.Econst_int (Integers.Int.repr 16192) tint))
                                  Stmt.Sbreak)
                                Stmt.Sskip))
                            (Stmt.Ssequence
                              (Stmt.Sloop
                                (swhile
                                  (Expr.Ebinop Binop.Olt
                                    (Expr.Etempvar _bits tuint)
                                    (Expr.Ecast
                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                      tuint) tint)
                                  (Stmt.Sloop
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                          (Expr.Etempvar _have tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          tint)
                                        (Stmt.Sgoto _inf_leave)
                                        Stmt.Sskip)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _have
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _have tuint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tuint))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'4
                                                (Expr.Etempvar _next (tptr tuchar)))
                                              (Stmt.Sset _next
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'4 (tptr tuchar))
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  (tptr tuchar))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'385
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'4 (tptr tuchar))
                                                  tuchar))
                                              (Stmt.Sset _hold
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _hold tulong)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'385 tuchar)
                                                      tulong)
                                                    (Expr.Etempvar _bits tuint)
                                                    tulong) tulong))))
                                          (Stmt.Sset _bits
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _bits tuint)
                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                              tuint)))))
                                    Stmt.Sbreak))
                                Stmt.Sbreak)
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'384
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _wrap tint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                        (Expr.Etempvar _t'384 tint)
                                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                        tint)
                                      (Stmt.Sset _t'7
                                        (Expr.Ecast
                                          (Expr.Ebinop Binop.Oeq
                                            (Expr.Etempvar _hold tulong)
                                            (Expr.Econst_int (Integers.Int.repr 35615) tint)
                                            tint) tbool))
                                      (Stmt.Sset _t'7
                                        (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                  (Stmt.Sifthenelse (Expr.Etempvar _t'7 tint)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'383
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _wbits tuint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                            (Expr.Etempvar _t'383 tuint)
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                            tint)
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _wbits tuint)
                                            (Expr.Econst_int (Integers.Int.repr 15) tint))
                                          Stmt.Sskip))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Scall (some _t'5)
                                            (Expr.Evar _crc32 (Ty.Tfunction
                                                                [tulong,
                                                                 (tptr tuchar),
                                                                 tuint]
                                                                tulong
                                                                cc_default))
                                            [(Expr.Econst_long (Integers.Int64.repr 0) tlong),
                                             (Expr.Econst_int (Integers.Int.repr 0) tint),
                                             (Expr.Econst_int (Integers.Int.repr 0) tint)])
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _check tulong)
                                            (Expr.Etempvar _t'5 tulong)))
                                        (Stmt.Ssequence
                                          (Stmt.Sloop
                                            (Stmt.Ssequence
                                              (Stmt.Sassign
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Evar _hbuf (tarray tuchar 4))
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                    (tptr tuchar)) tuchar)
                                                (Expr.Ecast
                                                  (Expr.Etempvar _hold tulong)
                                                  tuchar))
                                              (Stmt.Ssequence
                                                (Stmt.Sassign
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Evar _hbuf (tarray tuchar 4))
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      (tptr tuchar)) tuchar)
                                                  (Expr.Ecast
                                                    (Expr.Ebinop Binop.Oshr
                                                      (Expr.Etempvar _hold tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                      tulong) tuchar))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'382
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong))
                                                    (Stmt.Scall (some _t'6)
                                                      (Expr.Evar _crc32 
                                                      (Ty.Tfunction
                                                        [tulong,
                                                         (tptr tuchar),
                                                         tuint] tulong
                                                        cc_default))
                                                      [(Expr.Etempvar _t'382 tulong),
                                                       (Expr.Evar _hbuf (tarray tuchar 4)),
                                                       (Expr.Econst_int (Integers.Int.repr 2) tint)]))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _check tulong)
                                                    (Expr.Etempvar _t'6 tulong)))))
                                            Stmt.Sbreak)
                                          (Stmt.Ssequence
                                            (Stmt.Sloop
                                              (Stmt.Ssequence
                                                (Stmt.Sset _hold
                                                  (Expr.Ecast
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                    tulong))
                                                (Stmt.Sset _bits
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                              Stmt.Sbreak)
                                            (Stmt.Ssequence
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _mode tint)
                                                (Expr.Econst_int (Integers.Int.repr 16181) tint))
                                              Stmt.Sbreak)))))
                                    Stmt.Sskip))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'380
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _head
                                        (tptr (Ty.Tstruct _gz_header_s noattr))))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                        (Expr.Etempvar _t'380 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                        (Expr.Ecast
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          (tptr tvoid)) tint)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'381
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _head
                                            (tptr (Ty.Tstruct _gz_header_s noattr))))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _t'381 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                              (Ty.Tstruct _gz_header_s noattr))
                                            _done tint)
                                          (Expr.Eunop Unop.Oneg
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint)))
                                      Stmt.Sskip))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'379
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _wrap tint))
                                        (Stmt.Sifthenelse (Expr.Eunop Unop.Onotbool
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'379 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tint) tint)
                                          (Stmt.Sset _t'8
                                            (Expr.Econst_int (Integers.Int.repr 1) tint))
                                          (Stmt.Sset _t'8
                                            (Expr.Ecast
                                              (Expr.Ebinop Binop.Omod
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ebinop Binop.Oand
                                                      (Expr.Ecast
                                                        (Expr.Etempvar _hold tulong)
                                                        tuint)
                                                      (Expr.Ebinop Binop.Osub
                                                        (Expr.Ebinop Binop.Oshl
                                                          (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                          tuint)
                                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                        tuint) tuint)
                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                    tuint)
                                                  (Expr.Ebinop Binop.Oshr
                                                    (Expr.Etempvar _hold tulong)
                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                    tulong) tulong)
                                                (Expr.Econst_int (Integers.Int.repr 31) tint)
                                                tulong) tbool))))
                                      (Stmt.Sifthenelse (Expr.Etempvar _t'8 tint)
                                        (Stmt.Ssequence
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                (Ty.Tstruct _z_stream_s noattr))
                                              _msg (tptr tschar))
                                            (Expr.Ecast
                                              (Expr.Evar ___stringlit_18 (tarray tschar 23))
                                              (tptr tschar)))
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _mode tint)
                                              (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                            Stmt.Sbreak))
                                        Stmt.Sskip))
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _hold tulong)
                                                              tuint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ebinop Binop.Oshl
                                                                (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tuint) tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                          tint)
                                        (Stmt.Ssequence
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                (Ty.Tstruct _z_stream_s noattr))
                                              _msg (tptr tschar))
                                            (Expr.Ecast
                                              (Expr.Evar ___stringlit_16 (tarray tschar 27))
                                              (tptr tschar)))
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _mode tint)
                                              (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                            Stmt.Sbreak))
                                        Stmt.Sskip)
                                      (Stmt.Ssequence
                                        (Stmt.Sloop
                                          (Stmt.Ssequence
                                            (Stmt.Sset _hold
                                              (Expr.Ebinop Binop.Oshr
                                                (Expr.Etempvar _hold tulong)
                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                tulong))
                                            (Stmt.Sset _bits
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Etempvar _bits tuint)
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                  tuint) tuint)))
                                          Stmt.Sbreak)
                                        (Stmt.Ssequence
                                          (Stmt.Sset _len
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Ebinop Binop.Oand
                                                (Expr.Ecast
                                                  (Expr.Etempvar _hold tulong)
                                                  tuint)
                                                (Expr.Ebinop Binop.Osub
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                    tuint)
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  tuint) tuint)
                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                              tuint))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'378
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _wbits tuint))
                                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                  (Expr.Etempvar _t'378 tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                  tint)
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _wbits tuint)
                                                  (Expr.Etempvar _len tuint))
                                                Stmt.Sskip))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                                    tint)
                                                  (Stmt.Sset _t'9
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'377
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _wbits tuint))
                                                    (Stmt.Sset _t'9
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Ogt
                                                          (Expr.Etempvar _len tuint)
                                                          (Expr.Etempvar _t'377 tuint)
                                                          tint) tbool))))
                                                (Stmt.Sifthenelse (Expr.Etempvar _t'9 tint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                          (Ty.Tstruct _z_stream_s noattr))
                                                        _msg (tptr tschar))
                                                      (Expr.Ecast
                                                        (Expr.Evar ___stringlit_19 (tarray tschar 20))
                                                        (tptr tschar)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _mode tint)
                                                        (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                                      Stmt.Sbreak))
                                                  Stmt.Sskip))
                                              (Stmt.Ssequence
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _dmax tuint)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                    (Expr.Etempvar _len tuint)
                                                    tuint))
                                                (Stmt.Ssequence
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _flags tint)
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Scall (some _t'10)
                                                            (Expr.Evar _adler32 
                                                            (Ty.Tfunction
                                                              [tulong,
                                                               (tptr tuchar),
                                                               tuint] tulong
                                                              cc_default))
                                                            [(Expr.Econst_long (Integers.Int64.repr 0) tlong),
                                                             (Expr.Econst_int (Integers.Int.repr 0) tint),
                                                             (Expr.Econst_int (Integers.Int.repr 0) tint)])
                                                          (Stmt.Sset _t'11
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _t'10 tulong)
                                                              tulong)))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _check tulong)
                                                          (Expr.Etempvar _t'11 tulong)))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                            (Ty.Tstruct _z_stream_s noattr))
                                                          _adler tulong)
                                                        (Expr.Etempvar _t'11 tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sifthenelse 
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _hold tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                            tulong)
                                                          (Stmt.Sset _t'12
                                                            (Expr.Ecast
                                                              (Expr.Econst_int (Integers.Int.repr 16189) tint)
                                                              tint))
                                                          (Stmt.Sset _t'12
                                                            (Expr.Ecast
                                                              (Expr.Econst_int (Integers.Int.repr 16191) tint)
                                                              tint)))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _mode tint)
                                                          (Expr.Etempvar _t'12 tint)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sloop
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _hold
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                tulong))
                                                            (Stmt.Sset _bits
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                          Stmt.Sbreak)
                                                        Stmt.Sbreak)))))))))))))))
                          (LStmts.LScons (some 16181)
                            (Stmt.Ssequence
                              (Stmt.Sloop
                                (swhile
                                  (Expr.Ebinop Binop.Olt
                                    (Expr.Etempvar _bits tuint)
                                    (Expr.Ecast
                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                      tuint) tint)
                                  (Stmt.Sloop
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                          (Expr.Etempvar _have tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          tint)
                                        (Stmt.Sgoto _inf_leave)
                                        Stmt.Sskip)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _have
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _have tuint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tuint))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'13
                                                (Expr.Etempvar _next (tptr tuchar)))
                                              (Stmt.Sset _next
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'13 (tptr tuchar))
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  (tptr tuchar))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'376
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'13 (tptr tuchar))
                                                  tuchar))
                                              (Stmt.Sset _hold
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _hold tulong)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'376 tuchar)
                                                      tulong)
                                                    (Expr.Etempvar _bits tuint)
                                                    tulong) tulong))))
                                          (Stmt.Sset _bits
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _bits tuint)
                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                              tuint)))))
                                    Stmt.Sbreak))
                                Stmt.Sbreak)
                              (Stmt.Ssequence
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _flags tint)
                                  (Expr.Ecast (Expr.Etempvar _hold tulong)
                                    tint))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'375
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _flags tint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                        (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _t'375 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                          tint)
                                                        (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                        tint)
                                      (Stmt.Ssequence
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                              (Ty.Tstruct _z_stream_s noattr))
                                            _msg (tptr tschar))
                                          (Expr.Ecast
                                            (Expr.Evar ___stringlit_16 (tarray tschar 27))
                                            (tptr tschar)))
                                        (Stmt.Ssequence
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _mode tint)
                                            (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                          Stmt.Sbreak))
                                      Stmt.Sskip))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'374
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _flags tint))
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _t'374 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 57344) tint)
                                                          tint)
                                        (Stmt.Ssequence
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                (Ty.Tstruct _z_stream_s noattr))
                                              _msg (tptr tschar))
                                            (Expr.Ecast
                                              (Expr.Evar ___stringlit_17 (tarray tschar 25))
                                              (tptr tschar)))
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _mode tint)
                                              (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                            Stmt.Sbreak))
                                        Stmt.Sskip))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'372
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _head
                                            (tptr (Ty.Tstruct _gz_header_s noattr))))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                            (Expr.Etempvar _t'372 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                            (Expr.Ecast
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              (tptr tvoid))
                                                            tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'373
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _head
                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'373 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                  (Ty.Tstruct _gz_header_s noattr))
                                                _text tint)
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oand
                                                  (Expr.Ebinop Binop.Oshr
                                                    (Expr.Etempvar _hold tulong)
                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                    tulong)
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  tulong) tint)))
                                          Stmt.Sskip))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'370
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _flags tint))
                                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'370 tint)
                                                                (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                                tint)
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'371
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _wrap tint))
                                                (Stmt.Sset _t'15
                                                  (Expr.Ecast
                                                    (Expr.Ebinop Binop.Oand
                                                      (Expr.Etempvar _t'371 tint)
                                                      (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                      tint) tbool)))
                                              (Stmt.Sset _t'15
                                                (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                          (Stmt.Sifthenelse (Expr.Etempvar _t'15 tint)
                                            (Stmt.Sloop
                                              (Stmt.Ssequence
                                                (Stmt.Sassign
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Evar _hbuf (tarray tuchar 4))
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      (tptr tuchar)) tuchar)
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _hold tulong)
                                                    tuchar))
                                                (Stmt.Ssequence
                                                  (Stmt.Sassign
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Evar _hbuf (tarray tuchar 4))
                                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                        (tptr tuchar))
                                                      tuchar)
                                                    (Expr.Ecast
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Etempvar _hold tulong)
                                                        (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                        tulong) tuchar))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'369
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _check tulong))
                                                      (Stmt.Scall (some _t'14)
                                                        (Expr.Evar _crc32 
                                                        (Ty.Tfunction
                                                          [tulong,
                                                           (tptr tuchar),
                                                           tuint] tulong
                                                          cc_default))
                                                        [(Expr.Etempvar _t'369 tulong),
                                                         (Expr.Evar _hbuf (tarray tuchar 4)),
                                                         (Expr.Econst_int (Integers.Int.repr 2) tint)]))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong)
                                                      (Expr.Etempvar _t'14 tulong)))))
                                              Stmt.Sbreak)
                                            Stmt.Sskip))
                                        (Stmt.Ssequence
                                          (Stmt.Sloop
                                            (Stmt.Ssequence
                                              (Stmt.Sset _hold
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tulong))
                                              (Stmt.Sset _bits
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                            Stmt.Sbreak)
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _mode tint)
                                            (Expr.Econst_int (Integers.Int.repr 16182) tint)))))))))
                            (LStmts.LScons (some 16182)
                              (Stmt.Ssequence
                                (Stmt.Sloop
                                  (swhile
                                    (Expr.Ebinop Binop.Olt
                                      (Expr.Etempvar _bits tuint)
                                      (Expr.Ecast
                                        (Expr.Econst_int (Integers.Int.repr 32) tint)
                                        tuint) tint)
                                    (Stmt.Sloop
                                      (Stmt.Ssequence
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                            (Expr.Etempvar _have tuint)
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                            tint)
                                          (Stmt.Sgoto _inf_leave)
                                          Stmt.Sskip)
                                        (Stmt.Ssequence
                                          (Stmt.Sset _have
                                            (Expr.Ebinop Binop.Osub
                                              (Expr.Etempvar _have tuint)
                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                              tuint))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'16
                                                  (Expr.Etempvar _next (tptr tuchar)))
                                                (Stmt.Sset _next
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'16 (tptr tuchar))
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                    (tptr tuchar))))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'368
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _t'16 (tptr tuchar))
                                                    tuchar))
                                                (Stmt.Sset _hold
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _hold tulong)
                                                    (Expr.Ebinop Binop.Oshl
                                                      (Expr.Ecast
                                                        (Expr.Etempvar _t'368 tuchar)
                                                        tulong)
                                                      (Expr.Etempvar _bits tuint)
                                                      tulong) tulong))))
                                            (Stmt.Sset _bits
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _bits tuint)
                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                tuint)))))
                                      Stmt.Sbreak))
                                  Stmt.Sbreak)
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'366
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _head
                                        (tptr (Ty.Tstruct _gz_header_s noattr))))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                        (Expr.Etempvar _t'366 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                        (Expr.Ecast
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          (tptr tvoid)) tint)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'367
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _head
                                            (tptr (Ty.Tstruct _gz_header_s noattr))))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _t'367 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                              (Ty.Tstruct _gz_header_s noattr))
                                            _time tulong)
                                          (Expr.Etempvar _hold tulong)))
                                      Stmt.Sskip))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'364
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _flags tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'364 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                            tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'365
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _wrap tint))
                                            (Stmt.Sset _t'18
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oand
                                                  (Expr.Etempvar _t'365 tint)
                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                  tint) tbool)))
                                          (Stmt.Sset _t'18
                                            (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                      (Stmt.Sifthenelse (Expr.Etempvar _t'18 tint)
                                        (Stmt.Sloop
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Evar _hbuf (tarray tuchar 4))
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  (tptr tuchar)) tuchar)
                                              (Expr.Ecast
                                                (Expr.Etempvar _hold tulong)
                                                tuchar))
                                            (Stmt.Ssequence
                                              (Stmt.Sassign
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Evar _hbuf (tarray tuchar 4))
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                    (tptr tuchar)) tuchar)
                                                (Expr.Ecast
                                                  (Expr.Ebinop Binop.Oshr
                                                    (Expr.Etempvar _hold tulong)
                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                    tulong) tuchar))
                                              (Stmt.Ssequence
                                                (Stmt.Sassign
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Evar _hbuf (tarray tuchar 4))
                                                      (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                      (tptr tuchar)) tuchar)
                                                  (Expr.Ecast
                                                    (Expr.Ebinop Binop.Oshr
                                                      (Expr.Etempvar _hold tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                      tulong) tuchar))
                                                (Stmt.Ssequence
                                                  (Stmt.Sassign
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Evar _hbuf (tarray tuchar 4))
                                                        (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                        (tptr tuchar))
                                                      tuchar)
                                                    (Expr.Ecast
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Etempvar _hold tulong)
                                                        (Expr.Econst_int (Integers.Int.repr 24) tint)
                                                        tulong) tuchar))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'363
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _check tulong))
                                                      (Stmt.Scall (some _t'17)
                                                        (Expr.Evar _crc32 
                                                        (Ty.Tfunction
                                                          [tulong,
                                                           (tptr tuchar),
                                                           tuint] tulong
                                                          cc_default))
                                                        [(Expr.Etempvar _t'363 tulong),
                                                         (Expr.Evar _hbuf (tarray tuchar 4)),
                                                         (Expr.Econst_int (Integers.Int.repr 4) tint)]))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong)
                                                      (Expr.Etempvar _t'17 tulong)))))))
                                          Stmt.Sbreak)
                                        Stmt.Sskip))
                                    (Stmt.Ssequence
                                      (Stmt.Sloop
                                        (Stmt.Ssequence
                                          (Stmt.Sset _hold
                                            (Expr.Ecast
                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                              tulong))
                                          (Stmt.Sset _bits
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                        Stmt.Sbreak)
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _mode tint)
                                        (Expr.Econst_int (Integers.Int.repr 16183) tint))))))
                              (LStmts.LScons (some 16183)
                                (Stmt.Ssequence
                                  (Stmt.Sloop
                                    (swhile
                                      (Expr.Ebinop Binop.Olt
                                        (Expr.Etempvar _bits tuint)
                                        (Expr.Ecast
                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                          tuint) tint)
                                      (Stmt.Sloop
                                        (Stmt.Ssequence
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                              (Expr.Etempvar _have tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              tint)
                                            (Stmt.Sgoto _inf_leave)
                                            Stmt.Sskip)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _have
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Etempvar _have tuint)
                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                tuint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'19
                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                  (Stmt.Sset _next
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'19 (tptr tuchar))
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      (tptr tuchar))))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'362
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _t'19 (tptr tuchar))
                                                      tuchar))
                                                  (Stmt.Sset _hold
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _hold tulong)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'362 tuchar)
                                                          tulong)
                                                        (Expr.Etempvar _bits tuint)
                                                        tulong) tulong))))
                                              (Stmt.Sset _bits
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _bits tuint)
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  tuint)))))
                                        Stmt.Sbreak))
                                    Stmt.Sbreak)
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'359
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _head
                                          (tptr (Ty.Tstruct _gz_header_s noattr))))
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                          (Expr.Etempvar _t'359 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                          (Expr.Ecast
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                            (tptr tvoid))
                                                          tint)
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'361
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _head
                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'361 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                  (Ty.Tstruct _gz_header_s noattr))
                                                _xflags tint)
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oand
                                                  (Expr.Etempvar _hold tulong)
                                                  (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                  tulong) tint)))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'360
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _head
                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _t'360 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                  (Ty.Tstruct _gz_header_s noattr))
                                                _os tint)
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oshr
                                                  (Expr.Etempvar _hold tulong)
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  tulong) tint))))
                                        Stmt.Sskip))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'357
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _flags tint))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'357 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                              tint)
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'358
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _wrap tint))
                                              (Stmt.Sset _t'21
                                                (Expr.Ecast
                                                  (Expr.Ebinop Binop.Oand
                                                    (Expr.Etempvar _t'358 tint)
                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                    tint) tbool)))
                                            (Stmt.Sset _t'21
                                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                        (Stmt.Sifthenelse (Expr.Etempvar _t'21 tint)
                                          (Stmt.Sloop
                                            (Stmt.Ssequence
                                              (Stmt.Sassign
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Evar _hbuf (tarray tuchar 4))
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                    (tptr tuchar)) tuchar)
                                                (Expr.Ecast
                                                  (Expr.Etempvar _hold tulong)
                                                  tuchar))
                                              (Stmt.Ssequence
                                                (Stmt.Sassign
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Evar _hbuf (tarray tuchar 4))
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      (tptr tuchar)) tuchar)
                                                  (Expr.Ecast
                                                    (Expr.Ebinop Binop.Oshr
                                                      (Expr.Etempvar _hold tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                      tulong) tuchar))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'356
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong))
                                                    (Stmt.Scall (some _t'20)
                                                      (Expr.Evar _crc32 
                                                      (Ty.Tfunction
                                                        [tulong,
                                                         (tptr tuchar),
                                                         tuint] tulong
                                                        cc_default))
                                                      [(Expr.Etempvar _t'356 tulong),
                                                       (Expr.Evar _hbuf (tarray tuchar 4)),
                                                       (Expr.Econst_int (Integers.Int.repr 2) tint)]))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _check tulong)
                                                    (Expr.Etempvar _t'20 tulong)))))
                                            Stmt.Sbreak)
                                          Stmt.Sskip))
                                      (Stmt.Ssequence
                                        (Stmt.Sloop
                                          (Stmt.Ssequence
                                            (Stmt.Sset _hold
                                              (Expr.Ecast
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                tulong))
                                            (Stmt.Sset _bits
                                              (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                          Stmt.Sbreak)
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _mode tint)
                                          (Expr.Econst_int (Integers.Int.repr 16184) tint))))))
                                (LStmts.LScons (some 16184)
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'347
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _flags tint))
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _t'347 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 1024) tint)
                                                          tint)
                                        (Stmt.Ssequence
                                          (Stmt.Sloop
                                            (swhile
                                              (Expr.Ebinop Binop.Olt
                                                (Expr.Etempvar _bits tuint)
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                  tuint) tint)
                                              (Stmt.Sloop
                                                (Stmt.Ssequence
                                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                    (Stmt.Sgoto _inf_leave)
                                                    Stmt.Sskip)
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _have
                                                      (Expr.Ebinop Binop.Osub
                                                        (Expr.Etempvar _have tuint)
                                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                        tuint))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'22
                                                            (Expr.Etempvar _next (tptr tuchar)))
                                                          (Stmt.Sset _next
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'22 (tptr tuchar))
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              (tptr tuchar))))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'355
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _t'22 (tptr tuchar))
                                                              tuchar))
                                                          (Stmt.Sset _hold
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _hold tulong)
                                                              (Expr.Ebinop Binop.Oshl
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'355 tuchar)
                                                                  tulong)
                                                                (Expr.Etempvar _bits tuint)
                                                                tulong)
                                                              tulong))))
                                                      (Stmt.Sset _bits
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _bits tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                          tuint)))))
                                                Stmt.Sbreak))
                                            Stmt.Sbreak)
                                          (Stmt.Ssequence
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _length tuint)
                                              (Expr.Ecast
                                                (Expr.Etempvar _hold tulong)
                                                tuint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'353
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _head
                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'353 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'354
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _head
                                                        (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _t'354 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                          (Ty.Tstruct _gz_header_s noattr))
                                                        _extra_len tuint)
                                                      (Expr.Ecast
                                                        (Expr.Etempvar _hold tulong)
                                                        tuint)))
                                                  Stmt.Sskip))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'351
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _flags tint))
                                                    (Stmt.Sifthenelse 
                                                      (Expr.Ebinop Binop.Oand
                                                        (Expr.Etempvar _t'351 tint)
                                                        (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                        tint)
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'352
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _wrap tint))
                                                        (Stmt.Sset _t'24
                                                          (Expr.Ecast
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'352 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                              tint) tbool)))
                                                      (Stmt.Sset _t'24
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                  (Stmt.Sifthenelse (Expr.Etempvar _t'24 tint)
                                                    (Stmt.Sloop
                                                      (Stmt.Ssequence
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Evar _hbuf (tarray tuchar 4))
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _hold tulong)
                                                            tuchar))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sassign
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Evar _hbuf (tarray tuchar 4))
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                (tptr tuchar))
                                                              tuchar)
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Etempvar _hold tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tulong)
                                                              tuchar))
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'350
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _check
                                                                  tulong))
                                                              (Stmt.Scall (some _t'23)
                                                                (Expr.Evar _crc32 
                                                                (Ty.Tfunction
                                                                  [tulong,
                                                                   (tptr tuchar),
                                                                   tuint]
                                                                  tulong
                                                                  cc_default))
                                                                [(Expr.Etempvar _t'350 tulong),
                                                                 (Expr.Evar _hbuf (tarray tuchar 4)),
                                                                 (Expr.Econst_int (Integers.Int.repr 2) tint)]))
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _check
                                                                tulong)
                                                              (Expr.Etempvar _t'23 tulong)))))
                                                      Stmt.Sbreak)
                                                    Stmt.Sskip))
                                                (Stmt.Sloop
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _hold
                                                      (Expr.Ecast
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                        tulong))
                                                    (Stmt.Sset _bits
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                  Stmt.Sbreak)))))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'348
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _head
                                              (tptr (Ty.Tstruct _gz_header_s noattr))))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                              (Expr.Etempvar _t'348 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                (tptr tvoid))
                                                              tint)
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'349
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _head
                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _t'349 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                    (Ty.Tstruct _gz_header_s noattr))
                                                  _extra (tptr tuchar))
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                            Stmt.Sskip))))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _mode tint)
                                      (Expr.Econst_int (Integers.Int.repr 16185) tint)))
                                  (LStmts.LScons (some 16185)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'327
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _flags tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'327 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 1024) tint)
                                                            tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _copy
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _length tuint))
                                            (Stmt.Ssequence
                                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                                  (Expr.Etempvar _copy tuint)
                                                                  (Expr.Etempvar _have tuint)
                                                                  tint)
                                                (Stmt.Sset _copy
                                                  (Expr.Etempvar _have tuint))
                                                Stmt.Sskip)
                                              (Stmt.Ssequence
                                                (Stmt.Sifthenelse (Expr.Etempvar _copy tuint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'344
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _head
                                                              (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                          (Stmt.Sifthenelse 
                                                            (Expr.Ebinop Binop.One
                                                              (Expr.Etempvar _t'344 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                (tptr tvoid))
                                                              tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'345
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _head
                                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'346
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'345 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _extra
                                                                    (tptr tuchar)))
                                                                (Stmt.Sset _t'26
                                                                  (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'346 (tptr tuchar))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                                    tbool))))
                                                            (Stmt.Sset _t'26
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _t'26 tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'341
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'342
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'341 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _extra_len
                                                                    tuint))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'343
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sset _t'28
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'342 tuint)
                                                                    (Expr.Etempvar _t'343 tuint)
                                                                    tuint)
                                                                    tuint)))))
                                                              (Stmt.Sset _len
                                                                (Expr.Etempvar _t'28 tuint)))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'339
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _head
                                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'340
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'339 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _extra_max
                                                                    tuint))
                                                                (Stmt.Sset _t'27
                                                                  (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'28 tuint)
                                                                    (Expr.Etempvar _t'340 tuint)
                                                                    tint)
                                                                    tbool)))))
                                                          (Stmt.Sset _t'27
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                      (Stmt.Sifthenelse (Expr.Etempvar _t'27 tint)
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'335
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _head
                                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'336
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _t'335 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                  _extra_max
                                                                  tuint))
                                                              (Stmt.Sifthenelse 
                                                                (Expr.Ebinop Binop.Ogt
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _len tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)
                                                                  (Expr.Etempvar _t'336 tuint)
                                                                  tint)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'337
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'338
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'337 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _extra_max
                                                                    tuint))
                                                                    (Stmt.Sset _t'25
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'338 tuint)
                                                                    (Expr.Etempvar _len tuint)
                                                                    tuint)
                                                                    tuint))))
                                                                (Stmt.Sset _t'25
                                                                  (Expr.Ecast
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)))))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'333
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _head
                                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'334
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _t'333 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                  _extra
                                                                  (tptr tuchar)))
                                                              (Stmt.Scall none
                                                                (Expr.Evar _memcpy 
                                                                (Ty.Tfunction
                                                                  [(tptr tvoid),
                                                                   (tptr tvoid),
                                                                   tulong]
                                                                  (tptr tvoid)
                                                                  cc_default))
                                                                [(Expr.Ebinop Binop.Oadd
                                                                   (Expr.Etempvar _t'334 (tptr tuchar))
                                                                   (Expr.Etempvar _len tuint)
                                                                   (tptr tuchar)),
                                                                 (Expr.Etempvar _next (tptr tuchar)),
                                                                 (Expr.Etempvar _t'25 tuint)]))))
                                                        Stmt.Sskip))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'331
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _flags tint))
                                                          (Stmt.Sifthenelse 
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'331 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                              tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'332
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _wrap tint))
                                                              (Stmt.Sset _t'30
                                                                (Expr.Ecast
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'332 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                  tbool)))
                                                            (Stmt.Sset _t'30
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _t'30 tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'330
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _check
                                                                  tulong))
                                                              (Stmt.Scall (some _t'29)
                                                                (Expr.Evar _crc32 
                                                                (Ty.Tfunction
                                                                  [tulong,
                                                                   (tptr tuchar),
                                                                   tuint]
                                                                  tulong
                                                                  cc_default))
                                                                [(Expr.Etempvar _t'330 tulong),
                                                                 (Expr.Etempvar _next (tptr tuchar)),
                                                                 (Expr.Etempvar _copy tuint)]))
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _check
                                                                tulong)
                                                              (Expr.Etempvar _t'29 tulong)))
                                                          Stmt.Sskip))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _have
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _have tuint)
                                                            (Expr.Etempvar _copy tuint)
                                                            tuint))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _next
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _next (tptr tuchar))
                                                              (Expr.Etempvar _copy tuint)
                                                              (tptr tuchar)))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'329
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _length
                                                                tuint))
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _length
                                                                tuint)
                                                              (Expr.Ebinop Binop.Osub
                                                                (Expr.Etempvar _t'329 tuint)
                                                                (Expr.Etempvar _copy tuint)
                                                                tuint)))))))
                                                  Stmt.Sskip)
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'328
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _length tuint))
                                                  (Stmt.Sifthenelse (Expr.Etempvar _t'328 tuint)
                                                    (Stmt.Sgoto _inf_leave)
                                                    Stmt.Sskip)))))
                                          Stmt.Sskip))
                                      (Stmt.Ssequence
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _length tuint)
                                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _mode tint)
                                          (Expr.Econst_int (Integers.Int.repr 16186) tint))))
                                    (LStmts.LScons (some 16186)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'312
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _flags tint))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'312 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 2048) tint)
                                                              tint)
                                            (Stmt.Ssequence
                                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                  (Expr.Etempvar _have tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                  tint)
                                                (Stmt.Sgoto _inf_leave)
                                                Stmt.Sskip)
                                              (Stmt.Ssequence
                                                (Stmt.Sset _copy
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                (Stmt.Ssequence
                                                  (Stmt.Sloop
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'32
                                                            (Expr.Etempvar _copy tuint))
                                                          (Stmt.Sset _copy
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'32 tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tuint)))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'326
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _next (tptr tuchar))
                                                                (Expr.Etempvar _t'32 tuint)
                                                                (tptr tuchar))
                                                              tuchar))
                                                          (Stmt.Sset _len
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _t'326 tuchar)
                                                              tuint))))
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'323
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _head
                                                                (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                            (Stmt.Sifthenelse 
                                                              (Expr.Ebinop Binop.One
                                                                (Expr.Etempvar _t'323 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                (Expr.Ecast
                                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                  (tptr tvoid))
                                                                tint)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'324
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'325
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'324 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _name
                                                                    (tptr tuchar)))
                                                                  (Stmt.Sset _t'34
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'325 (tptr tuchar))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                                    tbool))))
                                                              (Stmt.Sset _t'34
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                          (Stmt.Sifthenelse (Expr.Etempvar _t'34 tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'320
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _length
                                                                  tuint))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'321
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'322
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'321 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _name_max
                                                                    tuint))
                                                                  (Stmt.Sset _t'35
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'320 tuint)
                                                                    (Expr.Etempvar _t'322 tuint)
                                                                    tint)
                                                                    tbool)))))
                                                            (Stmt.Sset _t'35
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _t'35 tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'33
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _length
                                                                  tuint))
                                                              (Stmt.Sassign
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _length
                                                                  tuint)
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _t'33 tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tuint)))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'318
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _head
                                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'319
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'318 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _name
                                                                    (tptr tuchar)))
                                                                (Stmt.Sassign
                                                                  (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'319 (tptr tuchar))
                                                                    (Expr.Etempvar _t'33 tuint)
                                                                    (tptr tuchar))
                                                                    tuchar)
                                                                  (Expr.Ecast
                                                                    (Expr.Etempvar _len tuint)
                                                                    tuchar)))))
                                                          Stmt.Sskip)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                        (Stmt.Sset _t'31
                                                          (Expr.Ecast
                                                            (Expr.Ebinop Binop.Olt
                                                              (Expr.Etempvar _copy tuint)
                                                              (Expr.Etempvar _have tuint)
                                                              tint) tbool))
                                                        (Stmt.Sset _t'31
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                      (Stmt.Sifthenelse (Expr.Etempvar _t'31 tint)
                                                        Stmt.Sskip
                                                        Stmt.Sbreak)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'316
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _flags tint))
                                                        (Stmt.Sifthenelse 
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'316 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                            tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'317
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _wrap tint))
                                                            (Stmt.Sset _t'37
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.Oand
                                                                  (Expr.Etempvar _t'317 tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                  tint)
                                                                tbool)))
                                                          (Stmt.Sset _t'37
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                      (Stmt.Sifthenelse (Expr.Etempvar _t'37 tint)
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'315
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _check
                                                                tulong))
                                                            (Stmt.Scall (some _t'36)
                                                              (Expr.Evar _crc32 
                                                              (Ty.Tfunction
                                                                [tulong,
                                                                 (tptr tuchar),
                                                                 tuint]
                                                                tulong
                                                                cc_default))
                                                              [(Expr.Etempvar _t'315 tulong),
                                                               (Expr.Etempvar _next (tptr tuchar)),
                                                               (Expr.Etempvar _copy tuint)]))
                                                          (Stmt.Sassign
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _check tulong)
                                                            (Expr.Etempvar _t'36 tulong)))
                                                        Stmt.Sskip))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _have
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _have tuint)
                                                          (Expr.Etempvar _copy tuint)
                                                          tuint))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _next
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _next (tptr tuchar))
                                                            (Expr.Etempvar _copy tuint)
                                                            (tptr tuchar)))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                          (Stmt.Sgoto _inf_leave)
                                                          Stmt.Sskip)))))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'313
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _head
                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                              (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                                  (Expr.Etempvar _t'313 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                  tint)
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'314
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _head
                                                      (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _t'314 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                        (Ty.Tstruct _gz_header_s noattr))
                                                      _name (tptr tuchar))
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                Stmt.Sskip))))
                                        (Stmt.Ssequence
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _length tuint)
                                            (Expr.Econst_int (Integers.Int.repr 0) tint))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _mode tint)
                                            (Expr.Econst_int (Integers.Int.repr 16187) tint))))
                                      (LStmts.LScons (some 16187)
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'297
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _flags tint))
                                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'297 tint)
                                                                (Expr.Econst_int (Integers.Int.repr 4096) tint)
                                                                tint)
                                              (Stmt.Ssequence
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                  (Stmt.Sgoto _inf_leave)
                                                  Stmt.Sskip)
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _copy
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sloop
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'39
                                                              (Expr.Etempvar _copy tuint))
                                                            (Stmt.Sset _copy
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _t'39 tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                tuint)))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'311
                                                              (Expr.Ederef
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _next (tptr tuchar))
                                                                  (Expr.Etempvar _t'39 tuint)
                                                                  (tptr tuchar))
                                                                tuchar))
                                                            (Stmt.Sset _len
                                                              (Expr.Ecast
                                                                (Expr.Etempvar _t'311 tuchar)
                                                                tuint))))
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'308
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _head
                                                                  (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                              (Stmt.Sifthenelse 
                                                                (Expr.Ebinop Binop.One
                                                                  (Expr.Etempvar _t'308 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                  tint)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'309
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'310
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'309 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _comment
                                                                    (tptr tuchar)))
                                                                    (Stmt.Sset _t'41
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'310 (tptr tuchar))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                                    tbool))))
                                                                (Stmt.Sset _t'41
                                                                  (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                            (Stmt.Sifthenelse (Expr.Etempvar _t'41 tint)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'305
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'306
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'307
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'306 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _comm_max
                                                                    tuint))
                                                                    (Stmt.Sset _t'42
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'305 tuint)
                                                                    (Expr.Etempvar _t'307 tuint)
                                                                    tint)
                                                                    tbool)))))
                                                              (Stmt.Sset _t'42
                                                                (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                          (Stmt.Sifthenelse (Expr.Etempvar _t'42 tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'40
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'40 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _t'303
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _head
                                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'304
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'303 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Ty.Tstruct _gz_header_s noattr))
                                                                    _comment
                                                                    (tptr tuchar)))
                                                                  (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'304 (tptr tuchar))
                                                                    (Expr.Etempvar _t'40 tuint)
                                                                    (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _len tuint)
                                                                    tuchar)))))
                                                            Stmt.Sskip)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                          (Stmt.Sset _t'38
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Olt
                                                                (Expr.Etempvar _copy tuint)
                                                                (Expr.Etempvar _have tuint)
                                                                tint) tbool))
                                                          (Stmt.Sset _t'38
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _t'38 tint)
                                                          Stmt.Sskip
                                                          Stmt.Sbreak)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'301
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _flags tint))
                                                          (Stmt.Sifthenelse 
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _t'301 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                              tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'302
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _wrap tint))
                                                              (Stmt.Sset _t'44
                                                                (Expr.Ecast
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'302 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                  tbool)))
                                                            (Stmt.Sset _t'44
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                        (Stmt.Sifthenelse (Expr.Etempvar _t'44 tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'300
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _check
                                                                  tulong))
                                                              (Stmt.Scall (some _t'43)
                                                                (Expr.Evar _crc32 
                                                                (Ty.Tfunction
                                                                  [tulong,
                                                                   (tptr tuchar),
                                                                   tuint]
                                                                  tulong
                                                                  cc_default))
                                                                [(Expr.Etempvar _t'300 tulong),
                                                                 (Expr.Etempvar _next (tptr tuchar)),
                                                                 (Expr.Etempvar _copy tuint)]))
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _check
                                                                tulong)
                                                              (Expr.Etempvar _t'43 tulong)))
                                                          Stmt.Sskip))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _have
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _have tuint)
                                                            (Expr.Etempvar _copy tuint)
                                                            tuint))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _next
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _next (tptr tuchar))
                                                              (Expr.Etempvar _copy tuint)
                                                              (tptr tuchar)))
                                                          (Stmt.Sifthenelse (Expr.Etempvar _len tuint)
                                                            (Stmt.Sgoto _inf_leave)
                                                            Stmt.Sskip)))))))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'298
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _head
                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'298 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'299
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _head
                                                        (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _t'299 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                          (Ty.Tstruct _gz_header_s noattr))
                                                        _comment
                                                        (tptr tuchar))
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                  Stmt.Sskip))))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _mode tint)
                                            (Expr.Econst_int (Integers.Int.repr 16188) tint)))
                                        (LStmts.LScons (some 16188)
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'293
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _flags tint))
                                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                                  (Expr.Etempvar _t'293 tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 512) tint)
                                                                  tint)
                                                (Stmt.Ssequence
                                                  (Stmt.Sloop
                                                    (swhile
                                                      (Expr.Ebinop Binop.Olt
                                                        (Expr.Etempvar _bits tuint)
                                                        (Expr.Ecast
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tuint) tint)
                                                      (Stmt.Sloop
                                                        (Stmt.Ssequence
                                                          (Stmt.Sifthenelse 
                                                            (Expr.Ebinop Binop.Oeq
                                                              (Expr.Etempvar _have tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              tint)
                                                            (Stmt.Sgoto _inf_leave)
                                                            Stmt.Sskip)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _have
                                                              (Expr.Ebinop Binop.Osub
                                                                (Expr.Etempvar _have tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                tuint))
                                                            (Stmt.Ssequence
                                                              (Stmt.Ssequence
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'45
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                  (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'45 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _t'296
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'45 (tptr tuchar))
                                                                    tuchar))
                                                                  (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'296 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                              (Stmt.Sset _bits
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _bits tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  tuint)))))
                                                        Stmt.Sbreak))
                                                    Stmt.Sbreak)
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'294
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _wrap tint))
                                                        (Stmt.Sifthenelse 
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'294 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                            tint)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sset _t'295
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _check
                                                                tulong))
                                                            (Stmt.Sset _t'46
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.One
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'295 tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 65535) tint)
                                                                    tulong)
                                                                  tint)
                                                                tbool)))
                                                          (Stmt.Sset _t'46
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                      (Stmt.Sifthenelse (Expr.Etempvar _t'46 tint)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sassign
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                (Ty.Tstruct _z_stream_s noattr))
                                                              _msg
                                                              (tptr tschar))
                                                            (Expr.Ecast
                                                              (Expr.Evar ___stringlit_15 (tarray tschar 20))
                                                              (tptr tschar)))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _mode tint)
                                                              (Expr.Econst_int (Integers.Int.repr 16209) tint))
                                                            Stmt.Sbreak))
                                                        Stmt.Sskip))
                                                    (Stmt.Sloop
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _hold
                                                          (Expr.Ecast
                                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                            tulong))
                                                        (Stmt.Sset _bits
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                      Stmt.Sbreak)))
                                                Stmt.Sskip))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'289
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                      (Ty.Tstruct _inflate_state noattr))
                                                    _head
                                                    (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'289 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    (tptr tvoid))
                                                                    tint)
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'291
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _head
                                                          (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'292
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _flags tint))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _t'291 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                              (Ty.Tstruct _gz_header_s noattr))
                                                            _hcrc tint)
                                                          (Expr.Ecast
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Etempvar _t'292 tint)
                                                                (Expr.Econst_int (Integers.Int.repr 9) tint)
                                                                tint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tint) tint))))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'290
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _head
                                                          (tptr (Ty.Tstruct _gz_header_s noattr))))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _t'290 (tptr (Ty.Tstruct _gz_header_s noattr)))
                                                            (Ty.Tstruct _gz_header_s noattr))
                                                          _done tint)
                                                        (Expr.Econst_int (Integers.Int.repr 1) tint))))
                                                  Stmt.Sskip))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Scall (some _t'47)
                                                        (Expr.Evar _crc32 
                                                        (Ty.Tfunction
                                                          [tulong,
                                                           (tptr tuchar),
                                                           tuint] tulong
                                                          cc_default))
                                                        [(Expr.Econst_long (Integers.Int64.repr 0) tlong),
                                                         (Expr.Econst_int (Integers.Int.repr 0) tint),
                                                         (Expr.Econst_int (Integers.Int.repr 0) tint)])
                                                      (Stmt.Sset _t'48
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'47 tulong)
                                                          tulong)))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong)
                                                      (Expr.Etempvar _t'48 tulong)))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                        (Ty.Tstruct _z_stream_s noattr))
                                                      _adler tulong)
                                                    (Expr.Etempvar _t'48 tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _mode tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16191) tint))
                                                  Stmt.Sbreak))))
                                          (LStmts.LScons (some 16189)
                                            (Stmt.Ssequence
                                              (Stmt.Sloop
                                                (swhile
                                                  (Expr.Ebinop Binop.Olt
                                                    (Expr.Etempvar _bits tuint)
                                                    (Expr.Ecast
                                                      (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                      tuint) tint)
                                                  (Stmt.Sloop
                                                    (Stmt.Ssequence
                                                      (Stmt.Sifthenelse 
                                                        (Expr.Ebinop Binop.Oeq
                                                          (Expr.Etempvar _have tuint)
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          tint)
                                                        (Stmt.Sgoto _inf_leave)
                                                        Stmt.Sskip)
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _have
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _have tuint)
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tuint))
                                                        (Stmt.Ssequence
                                                          (Stmt.Ssequence
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'49
                                                                (Expr.Etempvar _next (tptr tuchar)))
                                                              (Stmt.Sset _next
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _t'49 (tptr tuchar))
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  (tptr tuchar))))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _t'288
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _t'49 (tptr tuchar))
                                                                  tuchar))
                                                              (Stmt.Sset _hold
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'288 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                  tulong))))
                                                          (Stmt.Sset _bits
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _bits tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                              tuint)))))
                                                    Stmt.Sbreak))
                                                Stmt.Sbreak)
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'50
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Econst_int (Integers.Int.repr 24) tint)
                                                                  tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tulong)
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 65280) tint)
                                                                tulong)
                                                              tulong)
                                                            (Expr.Ebinop Binop.Oshl
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _hold tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 65280) tint)
                                                                tulong)
                                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                              tulong) tulong)
                                                          (Expr.Ebinop Binop.Oshl
                                                            (Expr.Ebinop Binop.Oand
                                                              (Expr.Etempvar _hold tulong)
                                                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                              tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 24) tint)
                                                            tulong) tulong)
                                                        tulong))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                          (Ty.Tstruct _inflate_state noattr))
                                                        _check tulong)
                                                      (Expr.Etempvar _t'50 tulong)))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                        (Ty.Tstruct _z_stream_s noattr))
                                                      _adler tulong)
                                                    (Expr.Etempvar _t'50 tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sloop
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _hold
                                                        (Expr.Ecast
                                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                          tulong))
                                                      (Stmt.Sset _bits
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                    Stmt.Sbreak)
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _mode tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16190) tint)))))
                                            (LStmts.LScons (some 16190)
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'287
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _havedict tint))
                                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'287 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                    (Stmt.Ssequence
                                                      (Stmt.Sloop
                                                        (Stmt.Ssequence
                                                          (Stmt.Sassign
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                (Ty.Tstruct _z_stream_s noattr))
                                                              _next_out
                                                              (tptr tuchar))
                                                            (Expr.Etempvar _put (tptr tuchar)))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                  (Ty.Tstruct _z_stream_s noattr))
                                                                _avail_out
                                                                tuint)
                                                              (Expr.Etempvar _left tuint))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sassign
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                  _next_in
                                                                  (tptr tuchar))
                                                                (Expr.Etempvar _next (tptr tuchar)))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _avail_in
                                                                    tuint)
                                                                  (Expr.Etempvar _have tuint))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _hold
                                                                    tulong)
                                                                    (Expr.Etempvar _hold tulong))
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _bits
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)))))))
                                                        Stmt.Sbreak)
                                                      (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 2) tint))))
                                                    Stmt.Sskip))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Scall (some _t'51)
                                                          (Expr.Evar _adler32 
                                                          (Ty.Tfunction
                                                            [tulong,
                                                             (tptr tuchar),
                                                             tuint] tulong
                                                            cc_default))
                                                          [(Expr.Econst_long (Integers.Int64.repr 0) tlong),
                                                           (Expr.Econst_int (Integers.Int.repr 0) tint),
                                                           (Expr.Econst_int (Integers.Int.repr 0) tint)])
                                                        (Stmt.Sset _t'52
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _t'51 tulong)
                                                            tulong)))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _check tulong)
                                                        (Expr.Etempvar _t'52 tulong)))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                          (Ty.Tstruct _z_stream_s noattr))
                                                        _adler tulong)
                                                      (Expr.Etempvar _t'52 tulong)))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _mode tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16191) tint))))
                                              (LStmts.LScons (some 16191)
                                                (Stmt.Ssequence
                                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _flush tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tint)
                                                    (Stmt.Sset _t'53
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                    (Stmt.Sset _t'53
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oeq
                                                          (Expr.Etempvar _flush tint)
                                                          (Expr.Econst_int (Integers.Int.repr 6) tint)
                                                          tint) tbool)))
                                                  (Stmt.Sifthenelse (Expr.Etempvar _t'53 tint)
                                                    (Stmt.Sgoto _inf_leave)
                                                    Stmt.Sskip))
                                                (LStmts.LScons (some 16192)
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'286
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _last tint))
                                                      (Stmt.Sifthenelse (Expr.Etempvar _t'286 tint)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sloop
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _hold
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tuint)
                                                                  tulong))
                                                              (Stmt.Sset _bits
                                                                (Expr.Ebinop Binop.Osub
                                                                  (Expr.Etempvar _bits tuint)
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tuint)
                                                                  tuint)))
                                                            Stmt.Sbreak)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _mode tint)
                                                              (Expr.Econst_int (Integers.Int.repr 16206) tint))
                                                            Stmt.Sbreak))
                                                        Stmt.Sskip))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sloop
                                                        (swhile
                                                          (Expr.Ebinop Binop.Olt
                                                            (Expr.Etempvar _bits tuint)
                                                            (Expr.Ecast
                                                              (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                              tuint) tint)
                                                          (Stmt.Sloop
                                                            (Stmt.Ssequence
                                                              (Stmt.Sifthenelse 
                                                                (Expr.Ebinop Binop.Oeq
                                                                  (Expr.Etempvar _have tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                  tint)
                                                                (Stmt.Sgoto _inf_leave)
                                                                Stmt.Sskip)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sset _have
                                                                  (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'54
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'54 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'285
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'54 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'285 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                            Stmt.Sbreak))
                                                        Stmt.Sbreak)
                                                      (Stmt.Ssequence
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                              (Ty.Tstruct _inflate_state noattr))
                                                            _last tint)
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _hold tulong)
                                                              tuint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ebinop Binop.Oshl
                                                                (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tuint) tuint))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sloop
                                                            (Stmt.Ssequence
                                                              (Stmt.Sset _hold
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tulong))
                                                              (Stmt.Sset _bits
                                                                (Expr.Ebinop Binop.Osub
                                                                  (Expr.Etempvar _bits tuint)
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                  tuint)))
                                                            Stmt.Sbreak)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sswitch 
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _hold tulong)
                                                                  tuint)
                                                                (Expr.Ebinop Binop.Osub
                                                                  (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tuint)
                                                                tuint)
                                                              (LStmts.LScons (some 0)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16193) tint))
                                                                  Stmt.Sbreak)
                                                                (LStmts.LScons (some 1)
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Scall none
                                                                    (Expr.Evar _inflate_fixed 
                                                                    (Ty.Tfunction
                                                                    [(tptr (Ty.Tstruct _inflate_state noattr))]
                                                                    tvoid
                                                                    cc_default))
                                                                    [(Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))])
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16199) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _flush tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 6) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Sgoto _inf_leave))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)))
                                                                  (LStmts.LScons (some 2)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16196) tint))
                                                                    Stmt.Sbreak)
                                                                    (LStmts.LScons none
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_14 (tarray tschar 19))
                                                                    (tptr tschar)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16209) tint)))
                                                                    LStmts.LSnil)))))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sloop
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tulong))
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                Stmt.Sbreak)
                                                              Stmt.Sbreak))))))
                                                  (LStmts.LScons (some 16193)
                                                    (Stmt.Ssequence
                                                      (Stmt.Sloop
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _hold
                                                            (Expr.Ebinop Binop.Oshr
                                                              (Expr.Etempvar _hold tulong)
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _bits tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                tuint)
                                                              tulong))
                                                          (Stmt.Sset _bits
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Etempvar _bits tuint)
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _bits tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                tuint) tuint)))
                                                        Stmt.Sbreak)
                                                      (Stmt.Ssequence
                                                        (Stmt.Sloop
                                                          (swhile
                                                            (Expr.Ebinop Binop.Olt
                                                              (Expr.Etempvar _bits tuint)
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                                tuint) tint)
                                                            (Stmt.Sloop
                                                              (Stmt.Ssequence
                                                                (Stmt.Sifthenelse 
                                                                  (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                  (Stmt.Sgoto _inf_leave)
                                                                  Stmt.Sskip)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'55
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'55 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'284
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'55 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'284 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                              Stmt.Sbreak))
                                                          Stmt.Sbreak)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sifthenelse 
                                                            (Expr.Ebinop Binop.One
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _hold tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 65535) tint)
                                                                tulong)
                                                              (Expr.Ebinop Binop.Oxor
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Etempvar _hold tulong)
                                                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                  tulong)
                                                                (Expr.Econst_int (Integers.Int.repr 65535) tint)
                                                                tulong) tint)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sassign
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                  _msg
                                                                  (tptr tschar))
                                                                (Expr.Ecast
                                                                  (Expr.Evar ___stringlit_13 (tarray tschar 29))
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
                                                            Stmt.Sskip)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sassign
                                                              (Expr.Efield
                                                                (Expr.Ederef
                                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                  (Ty.Tstruct _inflate_state noattr))
                                                                _length
                                                                tuint)
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _hold tulong)
                                                                  tuint)
                                                                (Expr.Econst_int (Integers.Int.repr 65535) tint)
                                                                tuint))
                                                            (Stmt.Ssequence
                                                              (Stmt.Sloop
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sset _hold
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tulong))
                                                                  (Stmt.Sset _bits
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                Stmt.Sbreak)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 16194) tint))
                                                                (Stmt.Sifthenelse 
                                                                  (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _flush tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 6) tint)
                                                                    tint)
                                                                  (Stmt.Sgoto _inf_leave)
                                                                  Stmt.Sskip)))))))
                                                    (LStmts.LScons (some 16194)
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                            (Ty.Tstruct _inflate_state noattr))
                                                          _mode tint)
                                                        (Expr.Econst_int (Integers.Int.repr 16195) tint))
                                                      (LStmts.LScons (some 16195)
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _copy
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                (Ty.Tstruct _inflate_state noattr))
                                                              _length tuint))
                                                          (Stmt.Ssequence
                                                            (Stmt.Sifthenelse (Expr.Etempvar _copy tuint)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sifthenelse 
                                                                  (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _have tuint)
                                                                    tint)
                                                                  (Stmt.Sset _copy
                                                                    (Expr.Etempvar _have tuint))
                                                                  Stmt.Sskip)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _left tuint)
                                                                    tint)
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Etempvar _left tuint))
                                                                    Stmt.Sskip)
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Scall none
                                                                    (Expr.Evar _memcpy 
                                                                    (Ty.Tfunction
                                                                    [(tptr tvoid),
                                                                    (tptr tvoid),
                                                                    tulong]
                                                                    (tptr tvoid)
                                                                    cc_default))
                                                                    [(Expr.Etempvar _put (tptr tuchar)),
                                                                    (Expr.Etempvar _next (tptr tuchar)),
                                                                    (Expr.Etempvar _copy tuint)])
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _next (tptr tuchar))
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _put
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _put (tptr tuchar))
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'283
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'283 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)))))))))
                                                              Stmt.Sskip)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sassign
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _mode tint)
                                                                (Expr.Econst_int (Integers.Int.repr 16191) tint))
                                                              Stmt.Sbreak)))
                                                        (LStmts.LScons (some 16196)
                                                          (Stmt.Ssequence
                                                            (Stmt.Sloop
                                                              (swhile
                                                                (Expr.Ebinop Binop.Olt
                                                                  (Expr.Etempvar _bits tuint)
                                                                  (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 14) tint)
                                                                    tuint)
                                                                  tint)
                                                                (Stmt.Sloop
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'56
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'56 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'282
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'56 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'282 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                  Stmt.Sbreak))
                                                              Stmt.Sbreak)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sassign
                                                                (Expr.Efield
                                                                  (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                  _nlen
                                                                  tuint)
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                  (Expr.Econst_int (Integers.Int.repr 257) tint)
                                                                  tuint))
                                                              (Stmt.Ssequence
                                                                (Stmt.Sloop
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                  Stmt.Sbreak)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ndist
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 5) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ncode
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'280
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _nlen
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _t'280 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 286) tint)
                                                                    tint)
                                                                    (Stmt.Sset _t'57
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'281
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ndist
                                                                    tuint))
                                                                    (Stmt.Sset _t'57
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _t'281 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 30) tint)
                                                                    tint)
                                                                    tbool)))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'57 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_12 (tarray tschar 36))
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
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16197) tint)))))))))))
                                                          (LStmts.LScons (some 16197)
                                                            (Stmt.Ssequence
                                                              (Stmt.Sloop
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'278
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'279
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ncode
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'278 tuint)
                                                                    (Expr.Etempvar _t'279 tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)
                                                                    tint)
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'58
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'58 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'277
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'58 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'277 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'59
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'59 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'276
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Evar _order (tarray tushort 19))
                                                                    (Expr.Etempvar _t'59 tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Etempvar _t'276 tushort)
                                                                    (tptr tushort))
                                                                    tushort)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tushort))))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak))))
                                                                Stmt.Sskip)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sloop
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'275
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'275 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 19) tint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'60
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'60 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'274
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Evar _order (tarray tushort 19))
                                                                    (Expr.Etempvar _t'60 tuint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Etempvar _t'274 tushort)
                                                                    (tptr tushort))
                                                                    tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))))
                                                                  Stmt.Sskip)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _codes
                                                                    (tarray (Ty.Tstruct __1353 noattr) 1444)))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'273
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sset _t'61
                                                                    (Expr.Ecast
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'273 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distcode
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _t'61 (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lencode
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Etempvar _t'61 (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Scall (some _t'62)
                                                                    (Expr.Evar _inflate_table 
                                                                    (Ty.Tfunction
                                                                    [tint,
                                                                    (tptr tushort),
                                                                    tuint,
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr))),
                                                                    (tptr tuint),
                                                                    (tptr tushort)]
                                                                    tint
                                                                    cc_default))
                                                                    [(Expr.Econst_int (Integers.Int.repr 0) tint),
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320)),
                                                                    (Expr.Econst_int (Integers.Int.repr 19) tint),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr)))),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint)
                                                                    (tptr tuint)),
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _work
                                                                    (tarray tushort 288))])
                                                                    (Stmt.Sset _ret
                                                                    (Expr.Etempvar _t'62 tint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _ret tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_11 (tarray tschar 25))
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
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16198) tint))))))))))
                                                            (LStmts.LScons (some 16198)
                                                              (Stmt.Ssequence
                                                                (Stmt.Sloop
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'270
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'271
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _nlen
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'272
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ndist
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'270 tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'271 tuint)
                                                                    (Expr.Etempvar _t'272 tuint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    Stmt.Sskip
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'268
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lencode
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'269
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'268 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _t'269 tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'267
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'267 tuchar)
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'63
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'63 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'266
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'63 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'266 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'243
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _t'243 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'265
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'265 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'264
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'264 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'64
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'64 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'263
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Etempvar _t'64 tuint)
                                                                    (tptr tushort))
                                                                    tushort)
                                                                    (Expr.Etempvar _t'263 tushort)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'247
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'247 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'262
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'262 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'65
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'65 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'261
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'65 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'261 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'260
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'260 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'259
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'259 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'258
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'258 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_7 (tarray tschar 26))
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
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'257
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sset _len
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'257 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    (tptr tushort))
                                                                    tushort)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'248
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'248 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'256
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'256 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'66
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'66 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'255
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'66 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'255 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'254
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'254 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'253
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'253 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'252
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'252 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'67
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'67 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'251
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'67 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'251 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'250
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'250 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'249
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'249 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _len
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 11) tint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 7) tint)
                                                                    tuint)
                                                                    tuint)))
                                                                    Stmt.Sbreak)))))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'244
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'245
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _nlen
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'246
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ndist
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'244 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'245 tuint)
                                                                    (Expr.Etempvar _t'246 tuint)
                                                                    tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_7 (tarray tschar 26))
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
                                                                    Stmt.Sskip))))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'68
                                                                    (Expr.Etempvar _copy tuint))
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'68 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'68 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'69
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _have
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'69 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Etempvar _t'69 tuint)
                                                                    (tptr tushort))
                                                                    tushort)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _len tuint)
                                                                    tushort))))
                                                                    Stmt.Sskip)))))))
                                                                  Stmt.Sskip)
                                                                (Stmt.Ssequence
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Sset _t'242
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'242 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16209) tint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip))
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'241
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Econst_int (Integers.Int.repr 256) tint)
                                                                    (tptr tushort))
                                                                    tushort))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'241 tushort)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_8 (tarray tschar 37))
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
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _codes
                                                                    (tarray (Ty.Tstruct __1353 noattr) 1444)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'240
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lencode
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'240 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 9) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'239
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _nlen
                                                                    tuint))
                                                                    (Stmt.Scall (some _t'70)
                                                                    (Expr.Evar _inflate_table 
                                                                    (Ty.Tfunction
                                                                    [tint,
                                                                    (tptr tushort),
                                                                    tuint,
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr))),
                                                                    (tptr tuint),
                                                                    (tptr tushort)]
                                                                    tint
                                                                    cc_default))
                                                                    [(Expr.Econst_int (Integers.Int.repr 1) tint),
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320)),
                                                                    (Expr.Etempvar _t'239 tuint),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr)))),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint)
                                                                    (tptr tuint)),
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _work
                                                                    (tarray tushort 288))]))
                                                                    (Stmt.Sset _ret
                                                                    (Expr.Etempvar _t'70 tint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _ret tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_9 (tarray tschar 28))
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
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'238
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distcode
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'238 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distbits
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 6) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'236
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _nlen
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'237
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _ndist
                                                                    tuint))
                                                                    (Stmt.Scall (some _t'71)
                                                                    (Expr.Evar _inflate_table 
                                                                    (Ty.Tfunction
                                                                    [tint,
                                                                    (tptr tushort),
                                                                    tuint,
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr))),
                                                                    (tptr tuint),
                                                                    (tptr tushort)]
                                                                    tint
                                                                    cc_default))
                                                                    [(Expr.Econst_int (Integers.Int.repr 2) tint),
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lens
                                                                    (tarray tushort 320))
                                                                    (Expr.Etempvar _t'236 tuint)
                                                                    (tptr tushort)),
                                                                    (Expr.Etempvar _t'237 tuint),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _next
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (tptr (tptr (Ty.Tstruct __1353 noattr)))),
                                                                    (Expr.Eaddrof
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distbits
                                                                    tuint)
                                                                    (tptr tuint)),
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _work
                                                                    (tarray tushort 288))])))
                                                                    (Stmt.Sset _ret
                                                                    (Expr.Etempvar _t'71 tint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _ret tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_10 (tarray tschar 22))
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
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16199) tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _flush tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 6) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip))))))))))))))
                                                              (LStmts.LScons (some 16199)
                                                                (Stmt.Sassign
                                                                  (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 16200) tint))
                                                                (LStmts.LScons (some 16200)
                                                                  (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oge
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 6) tint)
                                                                    tint)
                                                                    (Stmt.Sset _t'72
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oge
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 258) tint)
                                                                    tint)
                                                                    tbool))
                                                                    (Stmt.Sset _t'72
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'72 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _next_out
                                                                    (tptr tuchar))
                                                                    (Expr.Etempvar _put (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _avail_out
                                                                    tuint)
                                                                    (Expr.Etempvar _left tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _next_in
                                                                    (tptr tuchar))
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _avail_in
                                                                    tuint)
                                                                    (Expr.Etempvar _have tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _hold
                                                                    tulong)
                                                                    (Expr.Etempvar _hold tulong))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _bits
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)))))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Scall none
                                                                    (Expr.Evar _inflate_fast 
                                                                    (Ty.Tfunction
                                                                    [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                                                    tuint]
                                                                    tvoid
                                                                    cc_default))
                                                                    [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
                                                                    (Expr.Etempvar _out tuint)])
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _put
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _next_out
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _left
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _avail_out
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _next
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _next_in
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _avail_in
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _hold
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _bits
                                                                    tuint)))))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'235
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'235 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16191) tint)
                                                                    tint)
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Eunop Unop.Oneg
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint))
                                                                    Stmt.Sskip))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    Stmt.Sskip
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'233
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lencode
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'234
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lenbits
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'233 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _t'234 tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'232
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'232 tuchar)
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'73
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'73 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'231
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'73 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'231 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'229
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'229 tuchar)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'230
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sset _t'75
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'230 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 240) tint)
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    tbool)))
                                                                    (Stmt.Sset _t'75
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'75 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    Stmt.Sskip
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'224
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _lencode
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'225
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'226
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'227
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'228
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'224 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'225 tushort)
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'226 tuchar)
                                                                    (Expr.Etempvar _t'227 tuchar)
                                                                    tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _t'228 tuchar)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'222
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'223
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'222 tuchar)
                                                                    (Expr.Etempvar _t'223 tuchar)
                                                                    tint)
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip)))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'74
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'74 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'221
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'74 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'221 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'220
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'220 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'219
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'219 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'217
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'218
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'217 tint)
                                                                    (Expr.Etempvar _t'218 tuchar)
                                                                    tint)))))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'216
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'216 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'215
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'215 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'213
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'214
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'213 tint)
                                                                    (Expr.Etempvar _t'214 tuchar)
                                                                    tint))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'212
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'212 tushort)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'211
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'211 tuchar)
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16205) tint))
                                                                    Stmt.Sbreak)
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'210
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'210 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Eunop Unop.Oneg
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16191) tint))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'209
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'209 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_6 (tarray tschar 28))
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
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'208
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'208 tuchar)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                                    tuint)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16201) tint)))))))))))))
                                                                  (LStmts.LScons (some 16201)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'199
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'199 tuint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'207
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'207 tuint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'76
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'76 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'206
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'76 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'206 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'204
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'205
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'204 tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _t'205 tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'203
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'203 tuint)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'202
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'202 tuint)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'200
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'201
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'200 tint)
                                                                    (Expr.Etempvar _t'201 tuint)
                                                                    tuint)))))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'198
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _was
                                                                    tuint)
                                                                    (Expr.Etempvar _t'198 tuint)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16202) tint))))
                                                                    (LStmts.LScons (some 16202)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    Stmt.Sskip
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'196
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distcode
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'197
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distbits
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'196 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _t'197 tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'195
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'195 tuchar)
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'77
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'77 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'194
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'77 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'194 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'181
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'181 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 240) tint)
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    Stmt.Sskip
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'189
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _distcode
                                                                    (tptr (Ty.Tstruct __1353 noattr))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'190
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'191
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'192
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'193
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    (Expr.Ederef
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'189 (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'190 tushort)
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'191 tuchar)
                                                                    (Expr.Etempvar _t'192 tuchar)
                                                                    tint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    (Expr.Etempvar _t'193 tuchar)
                                                                    tuint)
                                                                    tuint)
                                                                    (tptr (Ty.Tstruct __1353 noattr)))
                                                                    (Ty.Tstruct __1353 noattr))))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'187
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'188
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ole
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'187 tuchar)
                                                                    (Expr.Etempvar _t'188 tuchar)
                                                                    tint)
                                                                    tuint)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tint)
                                                                    Stmt.Sbreak
                                                                    Stmt.Sskip)))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'78
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'78 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'186
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'78 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'186 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'185
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'185 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'184
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'184 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'182
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'183
                                                                    (Expr.Efield
                                                                    (Expr.Evar _last (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'182 tint)
                                                                    (Expr.Etempvar _t'183 tuchar)
                                                                    tint)))))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'180
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'180 tuchar)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'179
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'179 tuchar)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'177
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'178
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _bits
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'177 tint)
                                                                    (Expr.Etempvar _t'178 tuchar)
                                                                    tint))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'176
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'176 tuchar)
                                                                    (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_5 (tarray tschar 22))
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
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'175
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _val
                                                                    tushort))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'175 tushort)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'174
                                                                    (Expr.Efield
                                                                    (Expr.Evar _here (Ty.Tstruct __1353 noattr))
                                                                    _op
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'174 tuchar)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 15) tint)
                                                                    tuint)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16203) tint)))))))))
                                                                    (LStmts.LScons (some 16203)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'165
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'165 tuint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'173
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'173 tuint)
                                                                    tuint)
                                                                    tint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak))
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'79
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'79 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'172
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'79 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'172 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sskip)
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'170
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'171
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'170 tuint)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                                                    (Expr.Etempvar _t'171 tuint)
                                                                    tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint)
                                                                    tuint))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'169
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Etempvar _t'169 tuint)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'168
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'168 tuint)
                                                                    tuint)
                                                                    tuint))))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'166
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'167
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _extra
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _back
                                                                    tint)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'166 tint)
                                                                    (Expr.Etempvar _t'167 tuint)
                                                                    tuint)))))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16204) tint)))
                                                                    (LStmts.LScons (some 16204)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out tuint)
                                                                    (Expr.Etempvar _left tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'153
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _t'153 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'164
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint))
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'164 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'162
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _whave
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _t'162 tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'163
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _sane
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'163 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_4 (tarray tschar 30))
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
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'156
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wnext
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _t'156 tuint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'161
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wnext
                                                                    tuint))
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _t'161 tuint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'159
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _window
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'160
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wsize
                                                                    tuint))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'159 (tptr tuchar))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'160 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)
                                                                    (tptr tuchar))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'157
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _window
                                                                    (tptr tuchar)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'158
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wnext
                                                                    tuint))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'157 (tptr tuchar))
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'158 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)
                                                                    (tptr tuchar)))))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'155
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _t'155 tuint)
                                                                    tint)
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    Stmt.Sskip)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'154
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _offset
                                                                    tuint))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _put (tptr tuchar))
                                                                    (Expr.Etempvar _t'154 tuint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Ogt
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Etempvar _left tuint)
                                                                    tint)
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Etempvar _left tuint))
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'152
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint)
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _t'152 tuint)
                                                                    (Expr.Etempvar _copy tuint)
                                                                    tuint)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'81
                                                                    (Expr.Etempvar _put (tptr tuchar)))
                                                                    (Stmt.Sset _put
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'81 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Sset _t'82
                                                                    (Expr.Etempvar _from (tptr tuchar))))
                                                                    (Stmt.Sset _from
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'82 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'151
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'82 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'81 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Etempvar _t'151 tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'80
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _copy tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint)
                                                                    tuint))
                                                                    (Stmt.Sset _copy
                                                                    (Expr.Etempvar _t'80 tuint)))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'80 tuint)
                                                                    Stmt.Sskip
                                                                    Stmt.Sbreak)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'150
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _t'150 tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16200) tint))
                                                                    Stmt.Sskip))
                                                                    Stmt.Sbreak))))))))
                                                                    (LStmts.LScons (some 16205)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'83
                                                                    (Expr.Etempvar _put (tptr tuchar)))
                                                                    (Stmt.Sset _put
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'83 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'149
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _length
                                                                    tuint))
                                                                    (Stmt.Sassign
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'83 (tptr tuchar))
                                                                    tuchar)
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'149 tuint)
                                                                    tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _left
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _left tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16200) tint))
                                                                    Stmt.Sbreak))))
                                                                    (LStmts.LScons (some 16206)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'138
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wrap
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'138 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                                    tuint)
                                                                    tint)
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'84
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'84 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'148
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'84 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'148 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _out
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _out tuint)
                                                                    (Expr.Etempvar _left tuint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'147
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _total_out
                                                                    tulong))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _total_out
                                                                    tulong)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'147 tulong)
                                                                    (Expr.Etempvar _out tuint)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'146
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _total
                                                                    tulong))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _total
                                                                    tulong)
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'146 tulong)
                                                                    (Expr.Etempvar _out tuint)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'145
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wrap
                                                                    tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'145 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                    (Stmt.Sset _t'89
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _out tuint)
                                                                    tbool))
                                                                    (Stmt.Sset _t'89
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'89 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'142
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _flags
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'142 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'144
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _check
                                                                    tulong))
                                                                    (Stmt.Scall (some _t'86)
                                                                    (Expr.Evar _crc32 
                                                                    (Ty.Tfunction
                                                                    [tulong,
                                                                    (tptr tuchar),
                                                                    tuint]
                                                                    tulong
                                                                    cc_default))
                                                                    [(Expr.Etempvar _t'144 tulong),
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _put (tptr tuchar))
                                                                    (Expr.Etempvar _out tuint)
                                                                    (tptr tuchar)),
                                                                    (Expr.Etempvar _out tuint)]))
                                                                    (Stmt.Sset _t'85
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'86 tulong)
                                                                    tulong)))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'143
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _check
                                                                    tulong))
                                                                    (Stmt.Scall (some _t'87)
                                                                    (Expr.Evar _adler32 
                                                                    (Ty.Tfunction
                                                                    [tulong,
                                                                    (tptr tuchar),
                                                                    tuint]
                                                                    tulong
                                                                    cc_default))
                                                                    [(Expr.Etempvar _t'143 tulong),
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _put (tptr tuchar))
                                                                    (Expr.Etempvar _out tuint)
                                                                    (tptr tuchar)),
                                                                    (Expr.Etempvar _out tuint)]))
                                                                    (Stmt.Sset _t'85
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'87 tulong)
                                                                    tulong)))))
                                                                    (Stmt.Sset _t'88
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'85 tulong)
                                                                    tulong)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _check
                                                                    tulong)
                                                                    (Expr.Etempvar _t'88 tulong)))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _adler
                                                                    tulong)
                                                                    (Expr.Etempvar _t'88 tulong)))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _out
                                                                    (Expr.Etempvar _left tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'139
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wrap
                                                                    tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'139 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'141
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _flags
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'141 tint)
                                                                    (Stmt.Sset _t'91
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _hold tulong)
                                                                    tulong))
                                                                    (Stmt.Sset _t'91
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 24) tint)
                                                                    tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                    tulong)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Ebinop Binop.Oshr
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 65280) tint)
                                                                    tulong)
                                                                    tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 65280) tint)
                                                                    tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tulong)
                                                                    tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                    tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr 24) tint)
                                                                    tulong)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'140
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _check
                                                                    tulong))
                                                                    (Stmt.Sset _t'90
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _t'91 tulong)
                                                                    (Expr.Etempvar _t'140 tulong)
                                                                    tint)
                                                                    tbool))))
                                                                    (Stmt.Sset _t'90
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'90 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_3 (tarray tschar 21))
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
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    Stmt.Sbreak))))))))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16207) tint)))
                                                                    (LStmts.LScons (some 16207)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'136
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wrap
                                                                    tint))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'136 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'137
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _flags
                                                                    tint))
                                                                    (Stmt.Sset _t'94
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'137 tint)
                                                                    tbool)))
                                                                    (Stmt.Sset _t'94
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'94 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sloop
                                                                    (swhile
                                                                    (Expr.Ebinop Binop.Olt
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 32) tint)
                                                                    tuint)
                                                                    tint)
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oeq
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tint)
                                                                    (Stmt.Sgoto _inf_leave)
                                                                    Stmt.Sskip)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _have
                                                                    (Expr.Ebinop Binop.Osub
                                                                    (Expr.Etempvar _have tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    tuint))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'92
                                                                    (Expr.Etempvar _next (tptr tuchar)))
                                                                    (Stmt.Sset _next
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _t'92 (tptr tuchar))
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                    (tptr tuchar))))
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'135
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _t'92 (tptr tuchar))
                                                                    tuchar))
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oshl
                                                                    (Expr.Ecast
                                                                    (Expr.Etempvar _t'135 tuchar)
                                                                    tulong)
                                                                    (Expr.Etempvar _bits tuint)
                                                                    tulong)
                                                                    tulong))))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Etempvar _bits tuint)
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    tuint)))))
                                                                    Stmt.Sbreak))
                                                                    Stmt.Sbreak)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'133
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _wrap
                                                                    tint))
                                                                    (Stmt.Sifthenelse 
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'133 tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _t'134
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _total
                                                                    tulong))
                                                                    (Stmt.Sset _t'93
                                                                    (Expr.Ecast
                                                                    (Expr.Ebinop Binop.One
                                                                    (Expr.Etempvar _hold tulong)
                                                                    (Expr.Ebinop Binop.Oand
                                                                    (Expr.Etempvar _t'134 tulong)
                                                                    (Expr.Econst_int (Integers.Int.repr (-1)) tuint)
                                                                    tulong)
                                                                    tint)
                                                                    tbool)))
                                                                    (Stmt.Sset _t'93
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                                                    (Stmt.Sifthenelse (Expr.Etempvar _t'93 tint)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                                    (Ty.Tstruct _z_stream_s noattr))
                                                                    _msg
                                                                    (tptr tschar))
                                                                    (Expr.Ecast
                                                                    (Expr.Evar ___stringlit_2 (tarray tschar 23))
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
                                                                    (Stmt.Sloop
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _hold
                                                                    (Expr.Ecast
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                                    tulong))
                                                                    (Stmt.Sset _bits
                                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                                                    Stmt.Sbreak)))
                                                                    Stmt.Sskip))
                                                                    (Stmt.Sassign
                                                                    (Expr.Efield
                                                                    (Expr.Ederef
                                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                                    (Ty.Tstruct _inflate_state noattr))
                                                                    _mode
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 16208) tint)))
                                                                    (LStmts.LScons (some 16208)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _ret
                                                                    (Expr.Econst_int (Integers.Int.repr 1) tint))
                                                                    (Stmt.Sgoto _inf_leave))
                                                                    (LStmts.LScons (some 16209)
                                                                    (Stmt.Ssequence
                                                                    (Stmt.Sset _ret
                                                                    (Expr.Eunop Unop.Oneg
                                                                    (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                                    tint))
                                                                    (Stmt.Sgoto _inf_leave))
                                                                    (LStmts.LScons (some 16210)
                                                                    (Stmt.Sreturn (some 
                                                                    (Expr.Eunop Unop.Oneg
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)))
                                                                    (LStmts.LScons (some 16211)
                                                                    Stmt.Sskip
                                                                    (LStmts.LScons none
                                                                    (Stmt.Sreturn (some 
                                                                    (Expr.Eunop Unop.Oneg
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)))
                                                                    LStmts.LSnil))))))))))))))))))))))))))))))))))))
                  Stmt.Sskip)
                (Stmt.Ssequence
                  (Stmt.Slabel _inf_leave
                    (Stmt.Sloop
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                              (Ty.Tstruct _z_stream_s noattr)) _next_out
                            (tptr tuchar))
                          (Expr.Etempvar _put (tptr tuchar)))
                        (Stmt.Ssequence
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                (Ty.Tstruct _z_stream_s noattr)) _avail_out
                              tuint) (Expr.Etempvar _left tuint))
                          (Stmt.Ssequence
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                  (Ty.Tstruct _z_stream_s noattr)) _next_in
                                (tptr tuchar))
                              (Expr.Etempvar _next (tptr tuchar)))
                            (Stmt.Ssequence
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _avail_in tuint)
                                (Expr.Etempvar _have tuint))
                              (Stmt.Ssequence
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _hold tulong)
                                  (Expr.Etempvar _hold tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _bits tuint) (Expr.Etempvar _bits tuint)))))))
                      Stmt.Sbreak))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'128
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _wsize
                            tuint))
                        (Stmt.Sifthenelse (Expr.Etempvar _t'128 tuint)
                          (Stmt.Sset _t'96
                            (Expr.Econst_int (Integers.Int.repr 1) tint))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'130
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _avail_out tuint))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                  (Expr.Etempvar _out tuint)
                                                  (Expr.Etempvar _t'130 tuint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'131
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _mode tint))
                                  (Stmt.Sset _t'97
                                    (Expr.Ecast
                                      (Expr.Ebinop Binop.Olt
                                        (Expr.Etempvar _t'131 tint)
                                        (Expr.Econst_int (Integers.Int.repr 16209) tint)
                                        tint) tbool)))
                                (Stmt.Sset _t'97
                                  (Expr.Econst_int (Integers.Int.repr 0) tint))))
                            (Stmt.Sifthenelse (Expr.Etempvar _t'97 tint)
                              (Stmt.Ssequence
                                (Stmt.Sset _t'129
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _mode tint))
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                    (Expr.Etempvar _t'129 tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16206) tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'96
                                      (Expr.Ecast
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tbool))
                                    (Stmt.Sset _t'96
                                      (Expr.Ecast (Expr.Etempvar _t'96 tint)
                                        tbool)))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'96
                                        (Expr.Ecast
                                          (Expr.Ebinop Binop.One
                                            (Expr.Etempvar _flush tint)
                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                            tint) tbool))
                                      (Stmt.Sset _t'96
                                        (Expr.Ecast
                                          (Expr.Etempvar _t'96 tint) tbool)))
                                    (Stmt.Sset _t'96
                                      (Expr.Ecast (Expr.Etempvar _t'96 tint)
                                        tbool)))))
                              (Stmt.Sset _t'96
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  tbool))))))
                      (Stmt.Sifthenelse (Expr.Etempvar _t'96 tint)
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'126
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                  (Ty.Tstruct _z_stream_s noattr)) _next_out
                                (tptr tuchar)))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'127
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _avail_out tuint))
                              (Stmt.Scall (some _t'95)
                                (Expr.Evar _updatewindow (Ty.Tfunction
                                                           [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                                            (tptr tuchar),
                                                            tuint] tint
                                                           cc_default))
                                [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
                                 (Expr.Etempvar _t'126 (tptr tuchar)),
                                 (Expr.Ebinop Binop.Osub
                                   (Expr.Etempvar _out tuint)
                                   (Expr.Etempvar _t'127 tuint) tuint)])))
                          (Stmt.Sifthenelse (Expr.Etempvar _t'95 tint)
                            (Stmt.Ssequence
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr)) _mode
                                  tint)
                                (Expr.Econst_int (Integers.Int.repr 16210) tint))
                              (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                    tint))))
                            Stmt.Sskip))
                        Stmt.Sskip))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'125
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                              (Ty.Tstruct _z_stream_s noattr)) _avail_in
                            tuint))
                        (Stmt.Sset _in
                          (Expr.Ebinop Binop.Osub (Expr.Etempvar _in tuint)
                            (Expr.Etempvar _t'125 tuint) tuint)))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'124
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                (Ty.Tstruct _z_stream_s noattr)) _avail_out
                              tuint))
                          (Stmt.Sset _out
                            (Expr.Ebinop Binop.Osub
                              (Expr.Etempvar _out tuint)
                              (Expr.Etempvar _t'124 tuint) tuint)))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'123
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                  (Ty.Tstruct _z_stream_s noattr)) _total_in
                                tulong))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                  (Ty.Tstruct _z_stream_s noattr)) _total_in
                                tulong)
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _t'123 tulong)
                                (Expr.Etempvar _in tuint) tulong)))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'122
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _total_out tulong))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _total_out tulong)
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _t'122 tulong)
                                  (Expr.Etempvar _out tuint) tulong)))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'121
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _total tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _total tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'121 tulong)
                                    (Expr.Etempvar _out tuint) tulong)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'120
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _wrap tint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                                        (Expr.Etempvar _t'120 tint)
                                                        (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                        tint)
                                      (Stmt.Sset _t'102
                                        (Expr.Ecast
                                          (Expr.Etempvar _out tuint) tbool))
                                      (Stmt.Sset _t'102
                                        (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                  (Stmt.Sifthenelse (Expr.Etempvar _t'102 tint)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'115
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _flags tint))
                                            (Stmt.Sifthenelse (Expr.Etempvar _t'115 tint)
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'118
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _check tulong))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'119
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                          (Ty.Tstruct _z_stream_s noattr))
                                                        _next_out
                                                        (tptr tuchar)))
                                                    (Stmt.Scall (some _t'99)
                                                      (Expr.Evar _crc32 
                                                      (Ty.Tfunction
                                                        [tulong,
                                                         (tptr tuchar),
                                                         tuint] tulong
                                                        cc_default))
                                                      [(Expr.Etempvar _t'118 tulong),
                                                       (Expr.Ebinop Binop.Osub
                                                         (Expr.Etempvar _t'119 (tptr tuchar))
                                                         (Expr.Etempvar _out tuint)
                                                         (tptr tuchar)),
                                                       (Expr.Etempvar _out tuint)])))
                                                (Stmt.Sset _t'98
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _t'99 tulong)
                                                    tulong)))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'116
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                        (Ty.Tstruct _inflate_state noattr))
                                                      _check tulong))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'117
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                                          (Ty.Tstruct _z_stream_s noattr))
                                                        _next_out
                                                        (tptr tuchar)))
                                                    (Stmt.Scall (some _t'100)
                                                      (Expr.Evar _adler32 
                                                      (Ty.Tfunction
                                                        [tulong,
                                                         (tptr tuchar),
                                                         tuint] tulong
                                                        cc_default))
                                                      [(Expr.Etempvar _t'116 tulong),
                                                       (Expr.Ebinop Binop.Osub
                                                         (Expr.Etempvar _t'117 (tptr tuchar))
                                                         (Expr.Etempvar _out tuint)
                                                         (tptr tuchar)),
                                                       (Expr.Etempvar _out tuint)])))
                                                (Stmt.Sset _t'98
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _t'100 tulong)
                                                    tulong)))))
                                          (Stmt.Sset _t'101
                                            (Expr.Ecast
                                              (Expr.Etempvar _t'98 tulong)
                                              tulong)))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                              (Ty.Tstruct _inflate_state noattr))
                                            _check tulong)
                                          (Expr.Etempvar _t'101 tulong)))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                            (Ty.Tstruct _z_stream_s noattr))
                                          _adler tulong)
                                        (Expr.Etempvar _t'101 tulong)))
                                    Stmt.Sskip))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'114
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _last tint))
                                            (Stmt.Sifthenelse (Expr.Etempvar _t'114 tint)
                                              (Stmt.Sset _t'103
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 64) tint)
                                                  tint))
                                              (Stmt.Sset _t'103
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint))))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'113
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _mode tint))
                                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                                (Expr.Etempvar _t'113 tint)
                                                                (Expr.Econst_int (Integers.Int.repr 16191) tint)
                                                                tint)
                                              (Stmt.Sset _t'104
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 128) tint)
                                                  tint))
                                              (Stmt.Sset _t'104
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)))))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'111
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                (Ty.Tstruct _inflate_state noattr))
                                              _mode tint))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                              (Expr.Etempvar _t'111 tint)
                                                              (Expr.Econst_int (Integers.Int.repr 16199) tint)
                                                              tint)
                                            (Stmt.Sset _t'105
                                              (Expr.Econst_int (Integers.Int.repr 1) tint))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'112
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                    (Ty.Tstruct _inflate_state noattr))
                                                  _mode tint))
                                              (Stmt.Sset _t'105
                                                (Expr.Ecast
                                                  (Expr.Ebinop Binop.Oeq
                                                    (Expr.Etempvar _t'112 tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16194) tint)
                                                    tint) tbool))))))
                                      (Stmt.Sifthenelse (Expr.Etempvar _t'105 tint)
                                        (Stmt.Sset _t'106
                                          (Expr.Ecast
                                            (Expr.Econst_int (Integers.Int.repr 256) tint)
                                            tint))
                                        (Stmt.Sset _t'106
                                          (Expr.Ecast
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            tint))))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'110
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _bits tuint))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                            (Ty.Tstruct _z_stream_s noattr))
                                          _data_type tint)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Ecast
                                                (Expr.Etempvar _t'110 tuint)
                                                tint)
                                              (Expr.Etempvar _t'103 tint)
                                              tint)
                                            (Expr.Etempvar _t'104 tint) tint)
                                          (Expr.Etempvar _t'106 tint) tint))))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                              (Expr.Etempvar _in tuint)
                                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                              tint)
                                            (Stmt.Sset _t'107
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _out tuint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint) tbool))
                                            (Stmt.Sset _t'107
                                              (Expr.Econst_int (Integers.Int.repr 0) tint)))
                                          (Stmt.Sifthenelse (Expr.Etempvar _t'107 tint)
                                            (Stmt.Sset _t'108
                                              (Expr.Econst_int (Integers.Int.repr 1) tint))
                                            (Stmt.Sset _t'108
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _flush tint)
                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                  tint) tbool))))
                                        (Stmt.Sifthenelse (Expr.Etempvar _t'108 tint)
                                          (Stmt.Sset _t'109
                                            (Expr.Ecast
                                              (Expr.Ebinop Binop.Oeq
                                                (Expr.Etempvar _ret tint)
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                tint) tbool))
                                          (Stmt.Sset _t'109
                                            (Expr.Econst_int (Integers.Int.repr 0) tint))))
                                      (Stmt.Sifthenelse (Expr.Etempvar _t'109 tint)
                                        (Stmt.Sset _ret
                                          (Expr.Eunop Unop.Oneg
                                            (Expr.Econst_int (Integers.Int.repr 5) tint)
                                            tint))
                                        Stmt.Sskip))
                                    (Stmt.Sreturn (some (Expr.Etempvar _ret tint)))))))))))))))))))))
}

def f_inflateEnd : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'1, tint),
               (_t'9, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'8, (tptr tuchar)), (_t'7, (tptr tvoid)),
               (_t'6,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))), (_t'5, (tptr tuchar)),
               (_t'4, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'3, (tptr tvoid)),
               (_t'2,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'9
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'9 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'5
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _window (tptr tuchar)))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                            (Expr.Etempvar _t'5 (tptr tuchar))
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              (tptr tvoid)) tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'6
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _zfree
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))))
            (Stmt.Ssequence
              (Stmt.Sset _t'7
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _opaque (tptr tvoid)))
              (Stmt.Ssequence
                (Stmt.Sset _t'8
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _window
                    (tptr tuchar)))
                (Stmt.Scall none
                  (Expr.Ederef
                    (Expr.Etempvar _t'6 (tptr (Ty.Tfunction
                                                [(tptr tvoid), (tptr tvoid)]
                                                tvoid cc_default)))
                    (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                      cc_default))
                  [(Expr.Etempvar _t'7 (tptr tvoid)),
                   (Expr.Ecast (Expr.Etempvar _t'8 (tptr tuchar))
                     (tptr tvoid))]))))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'2
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _zfree
              (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                      cc_default))))
          (Stmt.Ssequence
            (Stmt.Sset _t'3
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _opaque (tptr tvoid)))
            (Stmt.Ssequence
              (Stmt.Sset _t'4
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _state
                  (tptr (Ty.Tstruct _internal_state noattr))))
              (Stmt.Scall none
                (Expr.Ederef
                  (Expr.Etempvar _t'2 (tptr (Ty.Tfunction
                                              [(tptr tvoid), (tptr tvoid)]
                                              tvoid cc_default)))
                  (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                    cc_default))
                [(Expr.Etempvar _t'3 (tptr tvoid)),
                 (Expr.Ecast
                   (Expr.Etempvar _t'4 (tptr (Ty.Tstruct _internal_state noattr)))
                   (tptr tvoid))]))))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _state
              (tptr (Ty.Tstruct _internal_state noattr)))
            (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))))
}

def f_inflateGetDictionary : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_dictionary, (tptr tuchar)), (_dictLength, (tptr tuint))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tint), (_t'1, tint),
               (_t'13, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'12, tuint), (_t'11, tuint), (_t'10, tuint), (_t'9, tuint),
               (_t'8, (tptr tuchar)), (_t'7, tuint), (_t'6, (tptr tuchar)),
               (_t'5, tuint), (_t'4, tuint), (_t'3, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'13
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'13 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'12
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _whave tuint))
          (Stmt.Sifthenelse (Expr.Etempvar _t'12 tuint)
            (Stmt.Sset _t'2
              (Expr.Ecast
                (Expr.Ebinop Binop.One
                  (Expr.Etempvar _dictionary (tptr tuchar))
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    (tptr tvoid)) tint) tbool))
            (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'8
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _window
                  (tptr tuchar)))
              (Stmt.Ssequence
                (Stmt.Sset _t'9
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'10
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _whave tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'11
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                    (Stmt.Scall none
                      (Expr.Evar _memcpy (Ty.Tfunction
                                           [(tptr tvoid), (tptr tvoid),
                                            tulong] (tptr tvoid) cc_default))
                      [(Expr.Etempvar _dictionary (tptr tuchar)),
                       (Expr.Ebinop Binop.Oadd
                         (Expr.Etempvar _t'8 (tptr tuchar))
                         (Expr.Etempvar _t'9 tuint) (tptr tuchar)),
                       (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'10 tuint)
                         (Expr.Etempvar _t'11 tuint) tuint)])))))
            (Stmt.Ssequence
              (Stmt.Sset _t'4
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _whave tuint))
              (Stmt.Ssequence
                (Stmt.Sset _t'5
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'6
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _window
                      (tptr tuchar)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'7
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _wnext tuint))
                    (Stmt.Scall none
                      (Expr.Evar _memcpy (Ty.Tfunction
                                           [(tptr tvoid), (tptr tvoid),
                                            tulong] (tptr tvoid) cc_default))
                      [(Expr.Ebinop Binop.Osub
                         (Expr.Ebinop Binop.Oadd
                           (Expr.Etempvar _dictionary (tptr tuchar))
                           (Expr.Etempvar _t'4 tuint) (tptr tuchar))
                         (Expr.Etempvar _t'5 tuint) (tptr tuchar)),
                       (Expr.Etempvar _t'6 (tptr tuchar)),
                       (Expr.Etempvar _t'7 tuint)]))))))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                            (Expr.Etempvar _dictLength (tptr tuint))
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              (tptr tvoid)) tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'3
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _whave tuint))
            (Stmt.Sassign
              (Expr.Ederef (Expr.Etempvar _dictLength (tptr tuint)) tuint)
              (Expr.Etempvar _t'3 tuint)))
          Stmt.Sskip)
        (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))
}

def f_inflateSetDictionary : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_dictionary, (tptr tuchar)), (_dictLength, tuint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_dictid, tulong), (_ret, tint), (_t'5, tint), (_t'4, tulong),
               (_t'3, tulong), (_t'2, tint), (_t'1, tint),
               (_t'10, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'9, tint), (_t'8, tint), (_t'7, tulong), (_t'6, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'10
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'10 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'8
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _wrap tint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.One (Expr.Etempvar _t'8 tint)
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Sset _t'9
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _mode tint))
              (Stmt.Sset _t'2
                (Expr.Ecast
                  (Expr.Ebinop Binop.One (Expr.Etempvar _t'9 tint)
                    (Expr.Econst_int (Integers.Int.repr 16190) tint) tint)
                  tbool)))
            (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
          (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                tint)))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'6
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _mode tint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'6 tint)
                              (Expr.Econst_int (Integers.Int.repr 16190) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Scall (some _t'3)
                  (Expr.Evar _adler32 (Ty.Tfunction
                                        [tulong, (tptr tuchar), tuint] tulong
                                        cc_default))
                  [(Expr.Econst_long (Integers.Int64.repr 0) tlong),
                   (Expr.Econst_int (Integers.Int.repr 0) tint),
                   (Expr.Econst_int (Integers.Int.repr 0) tint)])
                (Stmt.Sset _dictid (Expr.Etempvar _t'3 tulong)))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Scall (some _t'4)
                    (Expr.Evar _adler32 (Ty.Tfunction
                                          [tulong, (tptr tuchar), tuint]
                                          tulong cc_default))
                    [(Expr.Etempvar _dictid tulong),
                     (Expr.Etempvar _dictionary (tptr tuchar)),
                     (Expr.Etempvar _dictLength tuint)])
                  (Stmt.Sset _dictid (Expr.Etempvar _t'4 tulong)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'7
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _check tulong))
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                      (Expr.Etempvar _dictid tulong)
                                      (Expr.Etempvar _t'7 tulong) tint)
                    (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                          (Expr.Econst_int (Integers.Int.repr 3) tint)
                                          tint)))
                    Stmt.Sskip))))
            Stmt.Sskip))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Scall (some _t'5)
              (Expr.Evar _updatewindow (Ty.Tfunction
                                         [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                          (tptr tuchar), tuint] tint
                                         cc_default))
              [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr))),
               (Expr.Ebinop Binop.Oadd
                 (Expr.Etempvar _dictionary (tptr tuchar))
                 (Expr.Etempvar _dictLength tuint) (tptr tuchar)),
               (Expr.Etempvar _dictLength tuint)])
            (Stmt.Sset _ret (Expr.Etempvar _t'5 tint)))
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Etempvar _ret tint)
              (Stmt.Ssequence
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _mode tint)
                  (Expr.Econst_int (Integers.Int.repr 16210) tint))
                (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                      (Expr.Econst_int (Integers.Int.repr 4) tint)
                                      tint))))
              Stmt.Sskip)
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _havedict tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint))
              (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))))))
}

def f_inflateGetHeader : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_head, (tptr (Ty.Tstruct _gz_header_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'1, tint),
               (_t'3, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'2, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'3
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'3 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'2
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _wrap tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                            (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'2 tint)
                              (Expr.Econst_int (Integers.Int.repr 2) tint)
                              tint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                tint)))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _head
            (tptr (Ty.Tstruct _gz_header_s noattr)))
          (Expr.Etempvar _head (tptr (Ty.Tstruct _gz_header_s noattr))))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _head (tptr (Ty.Tstruct _gz_header_s noattr)))
                (Ty.Tstruct _gz_header_s noattr)) _done tint)
            (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))))
}

def f_syncsearch : Function := {
  fn_return := tuint,
  fn_callconv := cc_default,
  fn_params := [(_have, (tptr tuint)), (_buf, (tptr tuchar)), (_len, tuint)],
  fn_vars := [],
  fn_temps := [(_got, tuint), (_next, tuint), (_t'2, tint), (_t'1, tint),
               (_t'4, tuchar), (_t'3, tuchar)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _got (Expr.Ederef (Expr.Etempvar _have (tptr tuint)) tuint))
  (Stmt.Ssequence
    (Stmt.Sset _next (Expr.Econst_int (Integers.Int.repr 0) tint))
    (Stmt.Ssequence
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                (Expr.Etempvar _next tuint)
                                (Expr.Etempvar _len tuint) tint)
              (Stmt.Sset _t'1
                (Expr.Ecast
                  (Expr.Ebinop Binop.Olt (Expr.Etempvar _got tuint)
                    (Expr.Econst_int (Integers.Int.repr 4) tint) tint) tbool))
              (Stmt.Sset _t'1 (Expr.Econst_int (Integers.Int.repr 0) tint)))
            (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
              Stmt.Sskip
              Stmt.Sbreak))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                  (Expr.Etempvar _got tuint)
                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                  tint)
                (Stmt.Sset _t'2
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    tint))
                (Stmt.Sset _t'2
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 255) tint)
                    tint)))
              (Stmt.Ssequence
                (Stmt.Sset _t'3
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Etempvar _buf (tptr tuchar))
                      (Expr.Etempvar _next tuint) (tptr tuchar)) tuchar))
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                    (Expr.Ecast (Expr.Etempvar _t'3 tuchar)
                                      tint) (Expr.Etempvar _t'2 tint) tint)
                  (Stmt.Sset _got
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _got tuint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'4
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _buf (tptr tuchar))
                          (Expr.Etempvar _next tuint) (tptr tuchar)) tuchar))
                    (Stmt.Sifthenelse (Expr.Etempvar _t'4 tuchar)
                      (Stmt.Sset _got
                        (Expr.Econst_int (Integers.Int.repr 0) tint))
                      (Stmt.Sset _got
                        (Expr.Ebinop Binop.Osub
                          (Expr.Econst_int (Integers.Int.repr 4) tint)
                          (Expr.Etempvar _got tuint) tuint)))))))
            (Stmt.Sset _next
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _next tuint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))))
        Stmt.Sskip)
      (Stmt.Ssequence
        (Stmt.Sassign (Expr.Ederef (Expr.Etempvar _have (tptr tuint)) tuint)
          (Expr.Etempvar _got tuint))
        (Stmt.Sreturn (some (Expr.Etempvar _next tuint)))))))
}

def f_inflateSync : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [(_buf, (tarray tuchar 4))],
  fn_temps := [(_len, tuint), (_flags, tint), (_in, tulong), (_out, tulong),
               (_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'4, tuint), (_t'3, tuint), (_t'2, tint), (_t'1, tint),
               (_t'24, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'23, tuint), (_t'22, tuint), (_t'21, tuint),
               (_t'20, tulong), (_t'19, tuint), (_t'18, tuint),
               (_t'17, tuint), (_t'16, tulong), (_t'15, tulong),
               (_t'14, tuint), (_t'13, tint), (_t'12, tuint),
               (_t'11, (tptr tuchar)), (_t'10, tuint), (_t'9, (tptr tuchar)),
               (_t'8, tulong), (_t'7, tuint), (_t'6, tint), (_t'5, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'24
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'24 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'22
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                              (Expr.Etempvar _t'22 tuint)
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Sset _t'23
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _bits tuint))
              (Stmt.Sset _t'2
                (Expr.Ecast
                  (Expr.Ebinop Binop.Olt (Expr.Etempvar _t'23 tuint)
                    (Expr.Econst_int (Integers.Int.repr 8) tint) tint) tbool)))
            (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
          (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                (Expr.Econst_int (Integers.Int.repr 5) tint)
                                tint)))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'13
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                (Ty.Tstruct _inflate_state noattr)) _mode tint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.One (Expr.Etempvar _t'13 tint)
                              (Expr.Econst_int (Integers.Int.repr 16211) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                    (Ty.Tstruct _inflate_state noattr)) _mode tint)
                (Expr.Econst_int (Integers.Int.repr 16211) tint))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'20
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _hold tulong))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'21
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _hold tulong)
                      (Expr.Ebinop Binop.Oshr (Expr.Etempvar _t'20 tulong)
                        (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'21 tuint)
                          (Expr.Econst_int (Integers.Int.repr 7) tint) tuint)
                        tulong))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'18
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'19
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _bits tuint))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _bits tuint)
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'18 tuint)
                          (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'19 tuint)
                            (Expr.Econst_int (Integers.Int.repr 7) tint)
                            tuint) tuint))))
                  (Stmt.Ssequence
                    (Stmt.Sset _len
                      (Expr.Econst_int (Integers.Int.repr 0) tint))
                    (Stmt.Ssequence
                      (Stmt.Sloop
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'17
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _bits
                                tuint))
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                                (Expr.Etempvar _t'17 tuint)
                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                tint)
                              Stmt.Sskip
                              Stmt.Sbreak))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'3 (Expr.Etempvar _len tuint))
                                (Stmt.Sset _len
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'3 tuint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tuint)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'16
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _hold tulong))
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Evar _buf (tarray tuchar 4))
                                      (Expr.Etempvar _t'3 tuint)
                                      (tptr tuchar)) tuchar)
                                  (Expr.Ecast (Expr.Etempvar _t'16 tulong)
                                    tuchar))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'15
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _hold tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _hold tulong)
                                  (Expr.Ebinop Binop.Oshr
                                    (Expr.Etempvar _t'15 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'14
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _bits tuint))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _bits tuint)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _t'14 tuint)
                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                    tuint))))))
                        Stmt.Sskip)
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _have
                            tuint)
                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                        (Stmt.Scall none
                          (Expr.Evar _syncsearch (Ty.Tfunction
                                                   [(tptr tuint),
                                                    (tptr tuchar), tuint]
                                                   tuint cc_default))
                          [(Expr.Eaddrof
                             (Expr.Efield
                               (Expr.Ederef
                                 (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                 (Ty.Tstruct _inflate_state noattr)) _have
                               tuint) (tptr tuint)),
                           (Expr.Evar _buf (tarray tuchar 4)),
                           (Expr.Etempvar _len tuint)])))))))
            Stmt.Sskip))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'11
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _next_in (tptr tuchar)))
              (Stmt.Ssequence
                (Stmt.Sset _t'12
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
                (Stmt.Scall (some _t'4)
                  (Expr.Evar _syncsearch (Ty.Tfunction
                                           [(tptr tuint), (tptr tuchar),
                                            tuint] tuint cc_default))
                  [(Expr.Eaddrof
                     (Expr.Efield
                       (Expr.Ederef
                         (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                         (Ty.Tstruct _inflate_state noattr)) _have tuint)
                     (tptr tuint)), (Expr.Etempvar _t'11 (tptr tuchar)),
                   (Expr.Etempvar _t'12 tuint)])))
            (Stmt.Sset _len (Expr.Etempvar _t'4 tuint)))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'10
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _avail_in tuint)
                (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'10 tuint)
                  (Expr.Etempvar _len tuint) tuint)))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'9
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _next_in
                    (tptr tuchar)))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Ty.Tstruct _z_stream_s noattr)) _next_in
                    (tptr tuchar))
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'9 (tptr tuchar))
                    (Expr.Etempvar _len tuint) (tptr tuchar))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'8
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _total_in tulong))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                        (Ty.Tstruct _z_stream_s noattr)) _total_in tulong)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'8 tulong)
                      (Expr.Etempvar _len tuint) tulong)))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'7
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _have tuint))
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                        (Expr.Etempvar _t'7 tuint)
                                        (Expr.Econst_int (Integers.Int.repr 4) tint)
                                        tint)
                      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                            (Expr.Econst_int (Integers.Int.repr 3) tint)
                                            tint)))
                      Stmt.Sskip))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'5
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _flags tint))
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                          (Expr.Etempvar _t'5 tint)
                                          (Expr.Eunop Unop.Oneg
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint) tint)
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                              (Ty.Tstruct _inflate_state noattr)) _wrap tint)
                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'6
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _wrap
                              tint))
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _wrap
                              tint)
                            (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'6 tint)
                              (Expr.Eunop Unop.Onotint
                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                tint) tint)))))
                    (Stmt.Ssequence
                      (Stmt.Sset _flags
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Ty.Tstruct _inflate_state noattr)) _flags tint))
                      (Stmt.Ssequence
                        (Stmt.Sset _in
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                              (Ty.Tstruct _z_stream_s noattr)) _total_in
                            tulong))
                        (Stmt.Ssequence
                          (Stmt.Sset _out
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                (Ty.Tstruct _z_stream_s noattr)) _total_out
                              tulong))
                          (Stmt.Ssequence
                            (Stmt.Scall none
                              (Expr.Evar _inflateReset (Ty.Tfunction
                                                         [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                                         tint cc_default))
                              [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
                            (Stmt.Ssequence
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr))
                                  _total_in tulong)
                                (Expr.Etempvar _in tulong))
                              (Stmt.Ssequence
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
                                      (Ty.Tstruct _z_stream_s noattr))
                                    _total_out tulong)
                                  (Expr.Etempvar _out tulong))
                                (Stmt.Ssequence
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _flags tint)
                                    (Expr.Etempvar _flags tint))
                                  (Stmt.Ssequence
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                          (Ty.Tstruct _inflate_state noattr))
                                        _mode tint)
                                      (Expr.Econst_int (Integers.Int.repr 16191) tint))
                                    (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))))))))))))))))
}

def f_inflateSyncPoint : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tint), (_t'1, tint),
               (_t'5, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'4, tuint), (_t'3, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'5
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'5 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'3
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _mode tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'3 tint)
                            (Expr.Econst_int (Integers.Int.repr 16193) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'4
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _bits tuint))
            (Stmt.Sset _t'2
              (Expr.Ecast
                (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'4 tuint)
                  (Expr.Econst_int (Integers.Int.repr 0) tint) tint) tbool)))
          (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint))))
      (Stmt.Sreturn (some (Expr.Etempvar _t'2 tint))))))
}

def f_inflateCopy : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_dest, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_source, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_copy, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_window, (tptr tuchar)), (_t'5, tint), (_t'4, (tptr tvoid)),
               (_t'3, (tptr tvoid)), (_t'2, tint), (_t'1, tint),
               (_t'21, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'20, (tptr tvoid)),
               (_t'19,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))), (_t'18, tuint), (_t'17, (tptr tvoid)),
               (_t'16,
                (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                        cc_default))), (_t'15, (tptr tvoid)),
               (_t'14,
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))), (_t'13, (tptr tuchar)),
               (_t'12, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'11, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'10, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'9, (tptr (Ty.Tstruct __1353 noattr))),
               (_t'8, (tptr (Ty.Tstruct __1353 noattr))), (_t'7, tuint),
               (_t'6, (tptr tuchar))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Scall (some _t'1)
        (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                        [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                        tint cc_default))
        [(Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))])
      (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
        (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Sset _t'2
          (Expr.Ecast
            (Expr.Ebinop Binop.Oeq
              (Expr.Etempvar _dest (tptr (Ty.Tstruct _z_stream_s noattr)))
              (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                (tptr tvoid)) tint) tbool))))
    (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'21
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'21 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'19
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                (Ty.Tstruct _z_stream_s noattr)) _zalloc
              (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                      cc_default))))
          (Stmt.Ssequence
            (Stmt.Sset _t'20
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                  (Ty.Tstruct _z_stream_s noattr)) _opaque (tptr tvoid)))
            (Stmt.Scall (some _t'3)
              (Expr.Ederef
                (Expr.Etempvar _t'19 (tptr (Ty.Tfunction
                                             [(tptr tvoid), tuint, tuint]
                                             (tptr tvoid) cc_default)))
                (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                  cc_default))
              [(Expr.Etempvar _t'20 (tptr tvoid)),
               (Expr.Econst_int (Integers.Int.repr 1) tint),
               (Expr.Esizeof (Ty.Tstruct _inflate_state noattr) tulong)])))
        (Stmt.Sset _copy
          (Expr.Ecast (Expr.Etempvar _t'3 (tptr tvoid))
            (tptr (Ty.Tstruct _inflate_state noattr)))))
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                            (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              (tptr tvoid)) tint)
          (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                tint)))
          Stmt.Sskip)
        (Stmt.Ssequence
          (Stmt.Scall none
            (Expr.Evar _memset (Ty.Tfunction [(tptr tvoid), tint, tulong]
                                 (tptr tvoid) cc_default))
            [(Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr))),
             (Expr.Econst_int (Integers.Int.repr 0) tint),
             (Expr.Esizeof (Ty.Tstruct _inflate_state noattr) tulong)])
          (Stmt.Ssequence
            (Stmt.Sset _window
              (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'13
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                      (Ty.Tstruct _inflate_state noattr)) _window
                    (tptr tuchar)))
                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                    (Expr.Etempvar _t'13 (tptr tuchar))
                                    (Expr.Ecast
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      (tptr tvoid)) tint)
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'16
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                              (Ty.Tstruct _z_stream_s noattr)) _zalloc
                            (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                                    (tptr tvoid) cc_default))))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'17
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                                (Ty.Tstruct _z_stream_s noattr)) _opaque
                              (tptr tvoid)))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'18
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _wbits
                                tuint))
                            (Stmt.Scall (some _t'4)
                              (Expr.Ederef
                                (Expr.Etempvar _t'16 (tptr (Ty.Tfunction
                                                             [(tptr tvoid),
                                                              tuint, tuint]
                                                             (tptr tvoid)
                                                             cc_default)))
                                (Ty.Tfunction [(tptr tvoid), tuint, tuint]
                                  (tptr tvoid) cc_default))
                              [(Expr.Etempvar _t'17 (tptr tvoid)),
                               (Expr.Ebinop Binop.Oshl
                                 (Expr.Econst_int (Integers.Int.repr 1) tuint)
                                 (Expr.Etempvar _t'18 tuint) tuint),
                               (Expr.Esizeof tuchar tulong)]))))
                      (Stmt.Sset _window
                        (Expr.Ecast (Expr.Etempvar _t'4 (tptr tvoid))
                          (tptr tuchar))))
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                        (Expr.Etempvar _window (tptr tuchar))
                                        (Expr.Ecast
                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                          (tptr tvoid)) tint)
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'14
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                                (Ty.Tstruct _z_stream_s noattr)) _zfree
                              (tptr (Ty.Tfunction
                                      [(tptr tvoid), (tptr tvoid)] tvoid
                                      cc_default))))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'15
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr)))
                                  (Ty.Tstruct _z_stream_s noattr)) _opaque
                                (tptr tvoid)))
                            (Stmt.Scall none
                              (Expr.Ederef
                                (Expr.Etempvar _t'14 (tptr (Ty.Tfunction
                                                             [(tptr tvoid),
                                                              (tptr tvoid)]
                                                             tvoid
                                                             cc_default)))
                                (Ty.Tfunction [(tptr tvoid), (tptr tvoid)]
                                  tvoid cc_default))
                              [(Expr.Etempvar _t'15 (tptr tvoid)),
                               (Expr.Ecast
                                 (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                 (tptr tvoid))])))
                        (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                                              (Expr.Econst_int (Integers.Int.repr 4) tint)
                                              tint))))
                      Stmt.Sskip))
                  Stmt.Sskip))
              (Stmt.Ssequence
                (Stmt.Scall none
                  (Expr.Evar _memcpy (Ty.Tfunction
                                       [(tptr tvoid), (tptr tvoid), tulong]
                                       (tptr tvoid) cc_default))
                  [(Expr.Etempvar _dest (tptr (Ty.Tstruct _z_stream_s noattr))),
                   (Expr.Etempvar _source (tptr (Ty.Tstruct _z_stream_s noattr))),
                   (Expr.Esizeof (Ty.Tstruct _z_stream_s noattr) tulong)])
                (Stmt.Ssequence
                  (Stmt.Scall none
                    (Expr.Evar _memcpy (Ty.Tfunction
                                         [(tptr tvoid), (tptr tvoid), tulong]
                                         (tptr tvoid) cc_default))
                    [(Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr))),
                     (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr))),
                     (Expr.Esizeof (Ty.Tstruct _inflate_state noattr) tulong)])
                  (Stmt.Ssequence
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _strm
                        (tptr (Ty.Tstruct _z_stream_s noattr)))
                      (Expr.Etempvar _dest (tptr (Ty.Tstruct _z_stream_s noattr))))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'11
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _lencode
                              (tptr (Ty.Tstruct __1353 noattr))))
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                              (Expr.Etempvar _t'11 (tptr (Ty.Tstruct __1353 noattr)))
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                                  (Ty.Tstruct _inflate_state noattr))
                                                _codes
                                                (tarray (Ty.Tstruct __1353 noattr) 1444))
                                              tint)
                            (Stmt.Ssequence
                              (Stmt.Sset _t'12
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _lencode (tptr (Ty.Tstruct __1353 noattr))))
                              (Stmt.Sset _t'5
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Ole
                                    (Expr.Etempvar _t'12 (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                            (Ty.Tstruct _inflate_state noattr))
                                          _codes
                                          (tarray (Ty.Tstruct __1353 noattr) 1444))
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Econst_int (Integers.Int.repr 852) tint)
                                          (Expr.Econst_int (Integers.Int.repr 592) tint)
                                          tint)
                                        (tptr (Ty.Tstruct __1353 noattr)))
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      (tptr (Ty.Tstruct __1353 noattr)))
                                    tint) tbool)))
                            (Stmt.Sset _t'5
                              (Expr.Econst_int (Integers.Int.repr 0) tint))))
                        (Stmt.Sifthenelse (Expr.Etempvar _t'5 tint)
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'10
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _lencode (tptr (Ty.Tstruct __1353 noattr))))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _lencode (tptr (Ty.Tstruct __1353 noattr)))
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _codes
                                    (tarray (Ty.Tstruct __1353 noattr) 1444))
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _t'10 (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _codes
                                      (tarray (Ty.Tstruct __1353 noattr) 1444))
                                    tlong) (tptr (Ty.Tstruct __1353 noattr)))))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'9
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _distcode
                                  (tptr (Ty.Tstruct __1353 noattr))))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _distcode
                                  (tptr (Ty.Tstruct __1353 noattr)))
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _codes
                                    (tarray (Ty.Tstruct __1353 noattr) 1444))
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _t'9 (tptr (Ty.Tstruct __1353 noattr)))
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                        (Ty.Tstruct _inflate_state noattr))
                                      _codes
                                      (tarray (Ty.Tstruct __1353 noattr) 1444))
                                    tlong) (tptr (Ty.Tstruct __1353 noattr))))))
                          Stmt.Sskip))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'8
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _next
                              (tptr (Ty.Tstruct __1353 noattr))))
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                (Ty.Tstruct _inflate_state noattr)) _next
                              (tptr (Ty.Tstruct __1353 noattr)))
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _codes
                                (tarray (Ty.Tstruct __1353 noattr) 1444))
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _t'8 (tptr (Ty.Tstruct __1353 noattr)))
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _codes
                                  (tarray (Ty.Tstruct __1353 noattr) 1444))
                                tlong) (tptr (Ty.Tstruct __1353 noattr)))))
                        (Stmt.Ssequence
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                              (Expr.Etempvar _window (tptr tuchar))
                                              (Expr.Ecast
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                (tptr tvoid)) tint)
                            (Stmt.Ssequence
                              (Stmt.Sset _t'6
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                    (Ty.Tstruct _inflate_state noattr))
                                  _window (tptr tuchar)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'7
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                      (Ty.Tstruct _inflate_state noattr))
                                    _whave tuint))
                                (Stmt.Scall none
                                  (Expr.Evar _memcpy (Ty.Tfunction
                                                       [(tptr tvoid),
                                                        (tptr tvoid), tulong]
                                                       (tptr tvoid)
                                                       cc_default))
                                  [(Expr.Etempvar _window (tptr tuchar)),
                                   (Expr.Etempvar _t'6 (tptr tuchar)),
                                   (Expr.Etempvar _t'7 tuint)])))
                            Stmt.Sskip)
                          (Stmt.Ssequence
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _window
                                (tptr tuchar))
                              (Expr.Etempvar _window (tptr tuchar)))
                            (Stmt.Ssequence
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _dest (tptr (Ty.Tstruct _z_stream_s noattr)))
                                    (Ty.Tstruct _z_stream_s noattr)) _state
                                  (tptr (Ty.Tstruct _internal_state noattr)))
                                (Expr.Ecast
                                  (Expr.Etempvar _copy (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (tptr (Ty.Tstruct _internal_state noattr))))
                              (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))))))))))))))
}

def f_inflateUndermine : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_subvert, tint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'1, tint),
               (_t'2, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'2
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'2 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _sane tint)
        (Expr.Econst_int (Integers.Int.repr 1) tint))
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 3) tint)
                            tint))))))
}

def f_inflateValidate : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr))),
                (_check, tint)],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tint), (_t'1, tint),
               (_t'6, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'5, tint), (_t'4, tint), (_t'3, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                            tint)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'6
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'6 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Etempvar _check tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'5
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint))
            (Stmt.Sset _t'2 (Expr.Ecast (Expr.Etempvar _t'5 tint) tbool)))
          (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 0) tint)))
        (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'4
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint)
              (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'4 tint)
                (Expr.Econst_int (Integers.Int.repr 4) tint) tint)))
          (Stmt.Ssequence
            (Stmt.Sset _t'3
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _wrap tint)
              (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'3 tint)
                (Expr.Eunop Unop.Onotint
                  (Expr.Econst_int (Integers.Int.repr 4) tint) tint) tint)))))
      (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint))))))
}

def f_inflateMark : Function := {
  fn_return := tlong,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'2, tuint), (_t'1, tint),
               (_t'9, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'8, tuint), (_t'7, tuint), (_t'6, tuint), (_t'5, tint),
               (_t'4, tint), (_t'3, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                            (Expr.Ebinop Binop.Oshl
                              (Expr.Econst_long (Integers.Int64.repr 1) tlong)
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tlong) tlong)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'9
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'9 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'4
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _mode tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'4 tint)
                            (Expr.Econst_int (Integers.Int.repr 16195) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'8
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _length tuint))
            (Stmt.Sset _t'2 (Expr.Ecast (Expr.Etempvar _t'8 tuint) tuint)))
          (Stmt.Ssequence
            (Stmt.Sset _t'5
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                  (Ty.Tstruct _inflate_state noattr)) _mode tint))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _t'5 tint)
                                (Expr.Econst_int (Integers.Int.repr 16204) tint)
                                tint)
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'6
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                        (Ty.Tstruct _inflate_state noattr)) _was tuint))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'7
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                          (Ty.Tstruct _inflate_state noattr)) _length tuint))
                    (Stmt.Sset _t'2
                      (Expr.Ecast
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'6 tuint)
                          (Expr.Etempvar _t'7 tuint) tuint) tuint))))
                (Stmt.Sset _t'2
                  (Expr.Ecast (Expr.Etempvar _t'2 tuint) tuint)))
              (Stmt.Ssequence
                (Stmt.Sset _t'2
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    tuint))
                (Stmt.Sset _t'2
                  (Expr.Ecast (Expr.Etempvar _t'2 tuint) tuint)))))))
      (Stmt.Ssequence
        (Stmt.Sset _t'3
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
              (Ty.Tstruct _inflate_state noattr)) _back tint))
        (Stmt.Sreturn (some (Expr.Ebinop Binop.Oadd
                              (Expr.Ecast
                                (Expr.Ebinop Binop.Oshl
                                  (Expr.Ecast
                                    (Expr.Ecast (Expr.Etempvar _t'3 tint)
                                      tlong) tulong)
                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                  tulong) tlong) (Expr.Etempvar _t'2 tuint)
                              tlong)))))))
}

def f_inflateCodesUsed : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_strm, (tptr (Ty.Tstruct _z_stream_s noattr)))],
  fn_vars := [],
  fn_temps := [(_state, (tptr (Ty.Tstruct _inflate_state noattr))),
               (_t'1, tint),
               (_t'3, (tptr (Ty.Tstruct _internal_state noattr))),
               (_t'2, (tptr (Ty.Tstruct __1353 noattr)))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _inflateStateCheck (Ty.Tfunction
                                      [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                      tint cc_default))
      [(Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))])
    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
      (Stmt.Sreturn (some (Expr.Ecast
                            (Expr.Eunop Unop.Oneg
                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                              tint) tulong)))
      Stmt.Sskip))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'3
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _strm (tptr (Ty.Tstruct _z_stream_s noattr)))
            (Ty.Tstruct _z_stream_s noattr)) _state
          (tptr (Ty.Tstruct _internal_state noattr))))
      (Stmt.Sset _state
        (Expr.Ecast
          (Expr.Etempvar _t'3 (tptr (Ty.Tstruct _internal_state noattr)))
          (tptr (Ty.Tstruct _inflate_state noattr)))))
    (Stmt.Ssequence
      (Stmt.Sset _t'2
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
            (Ty.Tstruct _inflate_state noattr)) _next
          (tptr (Ty.Tstruct __1353 noattr))))
      (Stmt.Sreturn (some (Expr.Ecast
                            (Expr.Ebinop Binop.Osub
                              (Expr.Etempvar _t'2 (tptr (Ty.Tstruct __1353 noattr)))
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _state (tptr (Ty.Tstruct _inflate_state noattr)))
                                  (Ty.Tstruct _inflate_state noattr)) _codes
                                (tarray (Ty.Tstruct __1353 noattr) 1444))
                              tlong) tulong))))))
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
 (___stringlit_5, GlobDef.Gvar v___stringlit_5),
 (___stringlit_10, GlobDef.Gvar v___stringlit_10),
 (___stringlit_15, GlobDef.Gvar v___stringlit_15),
 (___stringlit_7, GlobDef.Gvar v___stringlit_7),
 (___stringlit_14, GlobDef.Gvar v___stringlit_14),
 (___stringlit_6, GlobDef.Gvar v___stringlit_6),
 (___stringlit_8, GlobDef.Gvar v___stringlit_8),
 (___stringlit_2, GlobDef.Gvar v___stringlit_2),
 (___stringlit_13, GlobDef.Gvar v___stringlit_13),
 (___stringlit_17, GlobDef.Gvar v___stringlit_17),
 (___stringlit_12, GlobDef.Gvar v___stringlit_12),
 (___stringlit_18, GlobDef.Gvar v___stringlit_18),
 (___stringlit_3, GlobDef.Gvar v___stringlit_3),
 (___stringlit_9, GlobDef.Gvar v___stringlit_9),
 (___stringlit_16, GlobDef.Gvar v___stringlit_16),
 (___stringlit_4, GlobDef.Gvar v___stringlit_4),
 (___stringlit_19, GlobDef.Gvar v___stringlit_19),
 (___stringlit_1, GlobDef.Gvar v___stringlit_1),
 (___stringlit_11, GlobDef.Gvar v___stringlit_11),
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
 (_adler32,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "adler32"
                                   (mksignature
                                     [XType.Xlong, XType.Xptr, XType.Xint]
                                     XType.Xlong cc_default))
     [tulong, (tptr tuchar), tuint] tulong cc_default)),
 (_crc32,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "crc32"
                                   (mksignature
                                     [XType.Xlong, XType.Xptr, XType.Xint]
                                     XType.Xlong cc_default))
     [tulong, (tptr tuchar), tuint] tulong cc_default)),
 (_memcpy,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "memcpy"
                                   (mksignature
                                     [XType.Xptr, XType.Xptr, XType.Xlong]
                                     XType.Xptr cc_default))
     [(tptr tvoid), (tptr tvoid), tulong] (tptr tvoid) cc_default)),
 (_memset,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "memset"
                                   (mksignature
                                     [XType.Xptr, XType.Xint, XType.Xlong]
                                     XType.Xptr cc_default))
     [(tptr tvoid), tint, tulong] (tptr tvoid) cc_default)),
 (_zcalloc,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "zcalloc"
                                   (mksignature
                                     [XType.Xptr, XType.Xint, XType.Xint]
                                     XType.Xptr cc_default))
     [(tptr tvoid), tuint, tuint] (tptr tvoid) cc_default)),
 (_zcfree,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "zcfree"
                                   (mksignature [XType.Xptr, XType.Xptr]
                                     XType.Xvoid cc_default))
     [(tptr tvoid), (tptr tvoid)] tvoid cc_default)),
 (_inflate_table,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "inflate_table"
                                   (mksignature
                                     [XType.Xint, XType.Xptr, XType.Xint,
                                      XType.Xptr, XType.Xptr, XType.Xptr]
                                     XType.Xint cc_default))
     [tint, (tptr tushort), tuint, (tptr (tptr (Ty.Tstruct __1353 noattr))),
      (tptr tuint), (tptr tushort)] tint cc_default)),
 (_inflate_fixed,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "inflate_fixed"
                                   (mksignature [XType.Xptr] XType.Xvoid
                                     cc_default))
     [(tptr (Ty.Tstruct _inflate_state noattr))] tvoid cc_default)),
 (_inflate_fast,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "inflate_fast"
                                   (mksignature [XType.Xptr, XType.Xint]
                                     XType.Xvoid cc_default))
     [(tptr (Ty.Tstruct _z_stream_s noattr)), tuint] tvoid cc_default)),
 (_inflateStateCheck, GlobDef.Gfun (FunDef.Internal f_inflateStateCheck)),
 (_inflateResetKeep, GlobDef.Gfun (FunDef.Internal f_inflateResetKeep)),
 (_inflateReset, GlobDef.Gfun (FunDef.Internal f_inflateReset)),
 (_inflateReset2, GlobDef.Gfun (FunDef.Internal f_inflateReset2)),
 (_inflateInit2_, GlobDef.Gfun (FunDef.Internal f_inflateInit2_)),
 (_inflateInit_, GlobDef.Gfun (FunDef.Internal f_inflateInit_)),
 (_inflatePrime, GlobDef.Gfun (FunDef.Internal f_inflatePrime)),
 (_updatewindow, GlobDef.Gfun (FunDef.Internal f_updatewindow)),
 (_order, GlobDef.Gvar v_order),
 (_inflate, GlobDef.Gfun (FunDef.Internal f_inflate)),
 (_inflateEnd, GlobDef.Gfun (FunDef.Internal f_inflateEnd)),
 (_inflateGetDictionary, GlobDef.Gfun (FunDef.Internal f_inflateGetDictionary)),
 (_inflateSetDictionary, GlobDef.Gfun (FunDef.Internal f_inflateSetDictionary)),
 (_inflateGetHeader, GlobDef.Gfun (FunDef.Internal f_inflateGetHeader)),
 (_syncsearch, GlobDef.Gfun (FunDef.Internal f_syncsearch)),
 (_inflateSync, GlobDef.Gfun (FunDef.Internal f_inflateSync)),
 (_inflateSyncPoint, GlobDef.Gfun (FunDef.Internal f_inflateSyncPoint)),
 (_inflateCopy, GlobDef.Gfun (FunDef.Internal f_inflateCopy)),
 (_inflateUndermine, GlobDef.Gfun (FunDef.Internal f_inflateUndermine)),
 (_inflateValidate, GlobDef.Gfun (FunDef.Internal f_inflateValidate)),
 (_inflateMark, GlobDef.Gfun (FunDef.Internal f_inflateMark)),
 (_inflateCodesUsed, GlobDef.Gfun (FunDef.Internal f_inflateCodesUsed))]

def public_idents : List Ident :=
[_inflateCodesUsed, _inflateMark, _inflateValidate, _inflateUndermine,
 _inflateCopy, _inflateSyncPoint, _inflateSync, _inflateGetHeader,
 _inflateSetDictionary, _inflateGetDictionary, _inflateEnd, _inflate,
 _inflatePrime, _inflateInit_, _inflateInit2_, _inflateReset2, _inflateReset,
 _inflateResetKeep, _inflate_fast, _inflate_fixed, _inflate_table, _zcfree,
 _zcalloc, _memset, _memcpy, _crc32, _adler32, ___builtin_debug,
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

end Inflate

