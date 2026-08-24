import Clightdefs
open CC

namespace Trees

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
  def source_file : String := "trees.c"
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
def __dist_code : Ident := identOfString "_dist_code"
def __length_code : Ident := identOfString "_length_code"
def __tr_align : Ident := identOfString "_tr_align"
def __tr_flush_bits : Ident := identOfString "_tr_flush_bits"
def __tr_flush_block : Ident := identOfString "_tr_flush_block"
def __tr_init : Ident := identOfString "_tr_init"
def __tr_stored_block : Ident := identOfString "_tr_stored_block"
def __tr_tally : Ident := identOfString "_tr_tally"
def _adler : Ident := identOfString "adler"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _base : Ident := identOfString "base"
def _base_dist : Ident := identOfString "base_dist"
def _base_length : Ident := identOfString "base_length"
def _bi_buf : Ident := identOfString "bi_buf"
def _bi_flush : Ident := identOfString "bi_flush"
def _bi_reverse : Ident := identOfString "bi_reverse"
def _bi_used : Ident := identOfString "bi_used"
def _bi_valid : Ident := identOfString "bi_valid"
def _bi_windup : Ident := identOfString "bi_windup"
def _bits : Ident := identOfString "bits"
def _bl_count : Ident := identOfString "bl_count"
def _bl_desc : Ident := identOfString "bl_desc"
def _bl_order : Ident := identOfString "bl_order"
def _bl_tree : Ident := identOfString "bl_tree"
def _blcodes : Ident := identOfString "blcodes"
def _block_mask : Ident := identOfString "block_mask"
def _block_start : Ident := identOfString "block_start"
def _buf : Ident := identOfString "buf"
def _build_bl_tree : Ident := identOfString "build_bl_tree"
def _build_tree : Ident := identOfString "build_tree"
def _code : Ident := identOfString "code"
def _comm_max : Ident := identOfString "comm_max"
def _comment : Ident := identOfString "comment"
def _compress_block : Ident := identOfString "compress_block"
def _count : Ident := identOfString "count"
def _ct_data_s : Ident := identOfString "ct_data_s"
def _curlen : Ident := identOfString "curlen"
def _d_desc : Ident := identOfString "d_desc"
def _dad : Ident := identOfString "dad"
def _data_type : Ident := identOfString "data_type"
def _dcodes : Ident := identOfString "dcodes"
def _depth : Ident := identOfString "depth"
def _desc : Ident := identOfString "desc"
def _detect_data_type : Ident := identOfString "detect_data_type"
def _dist : Ident := identOfString "dist"
def _dl : Ident := identOfString "dl"
def _done : Ident := identOfString "done"
def _dtree : Ident := identOfString "dtree"
def _dyn_dtree : Ident := identOfString "dyn_dtree"
def _dyn_ltree : Ident := identOfString "dyn_ltree"
def _dyn_tree : Ident := identOfString "dyn_tree"
def _elems : Ident := identOfString "elems"
def _extra : Ident := identOfString "extra"
def _extra_base : Ident := identOfString "extra_base"
def _extra_bits : Ident := identOfString "extra_bits"
def _extra_blbits : Ident := identOfString "extra_blbits"
def _extra_dbits : Ident := identOfString "extra_dbits"
def _extra_lbits : Ident := identOfString "extra_lbits"
def _extra_len : Ident := identOfString "extra_len"
def _extra_max : Ident := identOfString "extra_max"
def _f : Ident := identOfString "f"
def _fc : Ident := identOfString "fc"
def _freq : Ident := identOfString "freq"
def _gen_bitlen : Ident := identOfString "gen_bitlen"
def _gen_codes : Ident := identOfString "gen_codes"
def _good_match : Ident := identOfString "good_match"
def _gz_header_s : Ident := identOfString "gz_header_s"
def _gzhead : Ident := identOfString "gzhead"
def _gzindex : Ident := identOfString "gzindex"
def _h : Ident := identOfString "h"
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
def _init_block : Ident := identOfString "init_block"
def _ins_h : Ident := identOfString "ins_h"
def _insert : Ident := identOfString "insert"
def _internal_state : Ident := identOfString "internal_state"
def _j : Ident := identOfString "j"
def _k : Ident := identOfString "k"
def _l_desc : Ident := identOfString "l_desc"
def _last : Ident := identOfString "last"
def _last_flush : Ident := identOfString "last_flush"
def _lc : Ident := identOfString "lc"
def _lcodes : Ident := identOfString "lcodes"
def _len : Ident := identOfString "len"
def _len__1 : Ident := identOfString "len__1"
def _len__2 : Ident := identOfString "len__2"
def _len__3 : Ident := identOfString "len__3"
def _len__4 : Ident := identOfString "len__4"
def _len__5 : Ident := identOfString "len__5"
def _len__6 : Ident := identOfString "len__6"
def _len__7 : Ident := identOfString "len__7"
def _level : Ident := identOfString "level"
def _lit_bufsize : Ident := identOfString "lit_bufsize"
def _lookahead : Ident := identOfString "lookahead"
def _ltree : Ident := identOfString "ltree"
def _m : Ident := identOfString "m"
def _main : Ident := identOfString "main"
def _match_available : Ident := identOfString "match_available"
def _match_length : Ident := identOfString "match_length"
def _match_start : Ident := identOfString "match_start"
def _matches : Ident := identOfString "matches"
def _max_blindex : Ident := identOfString "max_blindex"
def _max_chain_length : Ident := identOfString "max_chain_length"
def _max_code : Ident := identOfString "max_code"
def _max_count : Ident := identOfString "max_count"
def _max_lazy_match : Ident := identOfString "max_lazy_match"
def _max_length : Ident := identOfString "max_length"
def _memcpy : Ident := identOfString "memcpy"
def _method : Ident := identOfString "method"
def _min_count : Ident := identOfString "min_count"
def _msg : Ident := identOfString "msg"
def _n : Ident := identOfString "n"
def _name : Ident := identOfString "name"
def _name_max : Ident := identOfString "name_max"
def _next_code : Ident := identOfString "next_code"
def _next_in : Ident := identOfString "next_in"
def _next_out : Ident := identOfString "next_out"
def _nextlen : Ident := identOfString "nextlen"
def _nice_match : Ident := identOfString "nice_match"
def _node : Ident := identOfString "node"
def _opaque : Ident := identOfString "opaque"
def _opt_len : Ident := identOfString "opt_len"
def _opt_lenb : Ident := identOfString "opt_lenb"
def _os : Ident := identOfString "os"
def _overflow : Ident := identOfString "overflow"
def _pending : Ident := identOfString "pending"
def _pending_buf : Ident := identOfString "pending_buf"
def _pending_buf_size : Ident := identOfString "pending_buf_size"
def _pending_out : Ident := identOfString "pending_out"
def _pqdownheap : Ident := identOfString "pqdownheap"
def _prev : Ident := identOfString "prev"
def _prev_length : Ident := identOfString "prev_length"
def _prev_match : Ident := identOfString "prev_match"
def _prevlen : Ident := identOfString "prevlen"
def _rank : Ident := identOfString "rank"
def _res : Ident := identOfString "res"
def _reserved : Ident := identOfString "reserved"
def _s : Ident := identOfString "s"
def _scan_tree : Ident := identOfString "scan_tree"
def _send_all_trees : Ident := identOfString "send_all_trees"
def _send_tree : Ident := identOfString "send_tree"
def _slid : Ident := identOfString "slid"
def _stat_desc : Ident := identOfString "stat_desc"
def _state : Ident := identOfString "state"
def _static_bl_desc : Ident := identOfString "static_bl_desc"
def _static_d_desc : Ident := identOfString "static_d_desc"
def _static_dtree : Ident := identOfString "static_dtree"
def _static_l_desc : Ident := identOfString "static_l_desc"
def _static_len : Ident := identOfString "static_len"
def _static_lenb : Ident := identOfString "static_lenb"
def _static_ltree : Ident := identOfString "static_ltree"
def _static_tree : Ident := identOfString "static_tree"
def _static_tree_desc_s : Ident := identOfString "static_tree_desc_s"
def _status : Ident := identOfString "status"
def _stored_len : Ident := identOfString "stored_len"
def _strategy : Ident := identOfString "strategy"
def _stree : Ident := identOfString "stree"
def _strm : Ident := identOfString "strm"
def _strstart : Ident := identOfString "strstart"
def _sx : Ident := identOfString "sx"
def _sym_buf : Ident := identOfString "sym_buf"
def _sym_end : Ident := identOfString "sym_end"
def _sym_next : Ident := identOfString "sym_next"
def _text : Ident := identOfString "text"
def _time : Ident := identOfString "time"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
def _tr_static_init : Ident := identOfString "tr_static_init"
def _tree : Ident := identOfString "tree"
def _tree_desc_s : Ident := identOfString "tree_desc_s"
def _v : Ident := identOfString "v"
def _val : Ident := identOfString "val"
def _val__1 : Ident := identOfString "val__1"
def _val__2 : Ident := identOfString "val__2"
def _val__3 : Ident := identOfString "val__3"
def _val__4 : Ident := identOfString "val__4"
def _val__5 : Ident := identOfString "val__5"
def _val__6 : Ident := identOfString "val__6"
def _val__7 : Ident := identOfString "val__7"
def _w_bits : Ident := identOfString "w_bits"
def _w_mask : Ident := identOfString "w_mask"
def _w_size : Ident := identOfString "w_size"
def _window : Ident := identOfString "window"
def _window_size : Ident := identOfString "window_size"
def _wrap : Ident := identOfString "wrap"
def _xbits : Ident := identOfString "xbits"
def _xflags : Ident := identOfString "xflags"
def _z_stream_s : Ident := identOfString "z_stream_s"
def _zalloc : Ident := identOfString "zalloc"
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

def v_extra_lbits : GlobVar Ty := {
  gvar_info := (tarray tint 29),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_extra_dbits : GlobVar Ty := {
  gvar_info := (tarray tint 30),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 6)),
                (InitData.Init_int32 (Integers.Int.repr 6)),
                (InitData.Init_int32 (Integers.Int.repr 7)),
                (InitData.Init_int32 (Integers.Int.repr 7)),
                (InitData.Init_int32 (Integers.Int.repr 8)),
                (InitData.Init_int32 (Integers.Int.repr 8)),
                (InitData.Init_int32 (Integers.Int.repr 9)),
                (InitData.Init_int32 (Integers.Int.repr 9)),
                (InitData.Init_int32 (Integers.Int.repr 10)),
                (InitData.Init_int32 (Integers.Int.repr 10)),
                (InitData.Init_int32 (Integers.Int.repr 11)),
                (InitData.Init_int32 (Integers.Int.repr 11)),
                (InitData.Init_int32 (Integers.Int.repr 12)),
                (InitData.Init_int32 (Integers.Int.repr 12)),
                (InitData.Init_int32 (Integers.Int.repr 13)),
                (InitData.Init_int32 (Integers.Int.repr 13))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_extra_blbits : GlobVar Ty := {
  gvar_info := (tarray tint 19),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 7))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_bl_order : GlobVar Ty := {
  gvar_info := (tarray tuchar 19),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 15))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_static_ltree : GlobVar Ty := {
  gvar_info := (tarray (Ty.Tstruct _ct_data_s noattr) 288),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 12)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 140)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 76)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 204)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 44)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 172)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 108)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 236)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 156)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 92)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 220)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 60)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 188)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 124)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 252)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 130)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 66)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 194)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 34)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 162)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 98)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 226)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 146)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 82)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 210)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 50)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 178)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 114)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 242)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 138)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 74)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 202)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 42)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 170)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 106)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 234)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 154)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 90)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 218)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 58)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 186)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 122)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 250)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 134)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 70)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 198)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 38)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 166)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 102)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 230)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 150)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 86)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 214)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 54)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 182)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 118)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 246)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 14)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 142)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 78)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 206)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 46)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 174)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 110)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 238)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 30)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 158)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 94)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 222)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 62)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 190)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 126)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 254)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 129)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 65)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 193)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 33)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 161)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 97)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 225)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 145)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 81)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 209)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 49)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 177)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 113)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 241)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 137)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 73)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 201)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 41)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 169)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 105)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 233)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 153)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 89)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 217)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 57)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 185)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 121)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 249)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 133)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 69)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 197)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 37)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 165)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 101)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 229)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 149)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 85)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 213)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 53)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 181)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 117)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 245)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 141)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 77)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 205)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 45)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 173)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 109)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 237)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 157)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 93)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 221)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 61)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 189)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 125)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 253)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 275)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 147)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 403)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 83)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 339)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 211)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 467)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 51)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 307)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 179)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 435)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 115)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 371)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 243)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 499)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 267)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 139)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 395)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 75)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 331)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 203)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 459)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 43)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 299)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 171)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 427)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 107)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 363)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 235)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 491)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 283)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 155)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 411)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 91)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 347)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 219)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 475)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 59)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 315)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 187)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 443)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 123)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 379)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 251)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 507)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 263)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 135)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 391)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 71)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 327)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 199)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 455)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 39)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 295)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 167)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 423)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 103)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 359)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 231)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 487)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 279)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 151)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 407)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 87)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 343)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 215)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 471)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 55)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 311)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 183)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 439)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 119)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 375)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 247)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 503)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 15)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 271)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 143)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 399)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 79)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 335)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 207)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 463)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 47)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 303)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 175)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 431)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 111)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 367)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 239)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 495)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 31)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 287)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 159)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 415)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 95)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 351)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 223)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 479)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 63)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 319)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 191)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 447)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 127)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 383)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 255)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 511)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 64)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 32)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 96)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 80)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 48)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 112)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 72)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 40)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 104)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 88)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 56)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 120)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 68)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 36)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 100)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 84)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 52)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 116)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 131)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 67)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 195)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 35)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 163)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 99)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 227)),
                (InitData.Init_int16 (Integers.Int.repr 8))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_static_dtree : GlobVar Ty := {
  gvar_info := (tarray (Ty.Tstruct _ct_data_s noattr) 30),
  gvar_init := [(InitData.Init_int16 (Integers.Int.repr 0)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 16)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 8)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 24)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 4)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 20)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 12)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 28)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 2)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 18)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 10)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 26)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 6)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 22)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 14)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 30)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 1)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 17)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 9)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 25)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 21)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 13)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 29)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 3)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 19)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 11)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 27)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 7)),
                (InitData.Init_int16 (Integers.Int.repr 5)),
                (InitData.Init_int16 (Integers.Int.repr 23)),
                (InitData.Init_int16 (Integers.Int.repr 5))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v__dist_code : GlobVar Ty := {
  gvar_info := (tarray tuchar 512),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 28)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29)),
                (InitData.Init_int8 (Integers.Int.repr 29))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v__length_code : GlobVar Ty := {
  gvar_info := (tarray tuchar 256),
  gvar_init := [(InitData.Init_int8 (Integers.Int.repr 0)),
                (InitData.Init_int8 (Integers.Int.repr 1)),
                (InitData.Init_int8 (Integers.Int.repr 2)),
                (InitData.Init_int8 (Integers.Int.repr 3)),
                (InitData.Init_int8 (Integers.Int.repr 4)),
                (InitData.Init_int8 (Integers.Int.repr 5)),
                (InitData.Init_int8 (Integers.Int.repr 6)),
                (InitData.Init_int8 (Integers.Int.repr 7)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 8)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 9)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 10)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 11)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 12)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 13)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 14)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 15)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 16)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 17)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 18)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 19)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 20)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 21)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 22)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 23)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 24)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 25)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 26)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 27)),
                (InitData.Init_int8 (Integers.Int.repr 28))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_base_length : GlobVar Ty := {
  gvar_info := (tarray tint 29),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 5)),
                (InitData.Init_int32 (Integers.Int.repr 6)),
                (InitData.Init_int32 (Integers.Int.repr 7)),
                (InitData.Init_int32 (Integers.Int.repr 8)),
                (InitData.Init_int32 (Integers.Int.repr 10)),
                (InitData.Init_int32 (Integers.Int.repr 12)),
                (InitData.Init_int32 (Integers.Int.repr 14)),
                (InitData.Init_int32 (Integers.Int.repr 16)),
                (InitData.Init_int32 (Integers.Int.repr 20)),
                (InitData.Init_int32 (Integers.Int.repr 24)),
                (InitData.Init_int32 (Integers.Int.repr 28)),
                (InitData.Init_int32 (Integers.Int.repr 32)),
                (InitData.Init_int32 (Integers.Int.repr 40)),
                (InitData.Init_int32 (Integers.Int.repr 48)),
                (InitData.Init_int32 (Integers.Int.repr 56)),
                (InitData.Init_int32 (Integers.Int.repr 64)),
                (InitData.Init_int32 (Integers.Int.repr 80)),
                (InitData.Init_int32 (Integers.Int.repr 96)),
                (InitData.Init_int32 (Integers.Int.repr 112)),
                (InitData.Init_int32 (Integers.Int.repr 128)),
                (InitData.Init_int32 (Integers.Int.repr 160)),
                (InitData.Init_int32 (Integers.Int.repr 192)),
                (InitData.Init_int32 (Integers.Int.repr 224)),
                (InitData.Init_int32 (Integers.Int.repr 0))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_base_dist : GlobVar Ty := {
  gvar_info := (tarray tint 30),
  gvar_init := [(InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 1)),
                (InitData.Init_int32 (Integers.Int.repr 2)),
                (InitData.Init_int32 (Integers.Int.repr 3)),
                (InitData.Init_int32 (Integers.Int.repr 4)),
                (InitData.Init_int32 (Integers.Int.repr 6)),
                (InitData.Init_int32 (Integers.Int.repr 8)),
                (InitData.Init_int32 (Integers.Int.repr 12)),
                (InitData.Init_int32 (Integers.Int.repr 16)),
                (InitData.Init_int32 (Integers.Int.repr 24)),
                (InitData.Init_int32 (Integers.Int.repr 32)),
                (InitData.Init_int32 (Integers.Int.repr 48)),
                (InitData.Init_int32 (Integers.Int.repr 64)),
                (InitData.Init_int32 (Integers.Int.repr 96)),
                (InitData.Init_int32 (Integers.Int.repr 128)),
                (InitData.Init_int32 (Integers.Int.repr 192)),
                (InitData.Init_int32 (Integers.Int.repr 256)),
                (InitData.Init_int32 (Integers.Int.repr 384)),
                (InitData.Init_int32 (Integers.Int.repr 512)),
                (InitData.Init_int32 (Integers.Int.repr 768)),
                (InitData.Init_int32 (Integers.Int.repr 1024)),
                (InitData.Init_int32 (Integers.Int.repr 1536)),
                (InitData.Init_int32 (Integers.Int.repr 2048)),
                (InitData.Init_int32 (Integers.Int.repr 3072)),
                (InitData.Init_int32 (Integers.Int.repr 4096)),
                (InitData.Init_int32 (Integers.Int.repr 6144)),
                (InitData.Init_int32 (Integers.Int.repr 8192)),
                (InitData.Init_int32 (Integers.Int.repr 12288)),
                (InitData.Init_int32 (Integers.Int.repr 16384)),
                (InitData.Init_int32 (Integers.Int.repr 24576))],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_static_l_desc : GlobVar Ty := {
  gvar_info := (Ty.Tstruct _static_tree_desc_s noattr),
  gvar_init := [(InitData.Init_addrof _static_ltree (Integers.Ptrofs.repr 0)),
                (InitData.Init_addrof _extra_lbits (Integers.Ptrofs.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 257)),
                (InitData.Init_int32 (Integers.Int.repr 286)),
                (InitData.Init_int32 (Integers.Int.repr 15)),
                (InitData.Init_space 4)],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_static_d_desc : GlobVar Ty := {
  gvar_info := (Ty.Tstruct _static_tree_desc_s noattr),
  gvar_init := [(InitData.Init_addrof _static_dtree (Integers.Ptrofs.repr 0)),
                (InitData.Init_addrof _extra_dbits (Integers.Ptrofs.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 30)),
                (InitData.Init_int32 (Integers.Int.repr 15)),
                (InitData.Init_space 4)],
  gvar_readonly := true,
  gvar_volatile := false
}

def v_static_bl_desc : GlobVar Ty := {
  gvar_info := (Ty.Tstruct _static_tree_desc_s noattr),
  gvar_init := [(InitData.Init_int64 (Integers.Int64.repr 0)),
                (InitData.Init_addrof _extra_blbits (Integers.Ptrofs.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 0)),
                (InitData.Init_int32 (Integers.Int.repr 19)),
                (InitData.Init_int32 (Integers.Int.repr 7)),
                (InitData.Init_space 4)],
  gvar_readonly := true,
  gvar_volatile := false
}

def f_bi_reverse : Function := {
  fn_return := tuint,
  fn_callconv := cc_default,
  fn_params := [(_code, tuint), (_len, tint)],
  fn_vars := [],
  fn_temps := [(_res, tuint), (_t'1, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _res (Expr.Econst_int (Integers.Int.repr 0) tint))
  (Stmt.Ssequence
    (Stmt.Sloop
      (Stmt.Ssequence
        (Stmt.Sset _res
          (Expr.Ebinop Binop.Oor (Expr.Etempvar _res tuint)
            (Expr.Ebinop Binop.Oand (Expr.Etempvar _code tuint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tuint) tuint))
        (Stmt.Ssequence
          (Stmt.Sset _code
            (Expr.Ebinop Binop.Oshr (Expr.Etempvar _code tuint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))
          (Stmt.Sset _res
            (Expr.Ebinop Binop.Oshl (Expr.Etempvar _res tuint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'1
            (Expr.Ecast
              (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint) tint))
          (Stmt.Sset _len (Expr.Etempvar _t'1 tint)))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'1 tint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          Stmt.Sskip
          Stmt.Sbreak)))
    (Stmt.Sreturn (some (Expr.Ebinop Binop.Oshr (Expr.Etempvar _res tuint)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))))
}

def f_bi_flush : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_t'3, tulong), (_t'2, tulong), (_t'1, tulong),
               (_t'13, tushort), (_t'12, (tptr tuchar)), (_t'11, tushort),
               (_t'10, (tptr tuchar)), (_t'9, tushort),
               (_t'8, (tptr tuchar)), (_t'7, tushort), (_t'6, tint),
               (_t'5, tint), (_t'4, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _t'4
    (Expr.Efield
      (Expr.Ederef
        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _t'4 tint)
                      (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'1
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'12
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Sset _t'13
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'12 (tptr tuchar))
                    (Expr.Etempvar _t'1 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'13 tushort)
                      (Expr.Econst_int (Integers.Int.repr 255) tint) tint)
                    tuchar) tuchar)))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'2
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'10
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Sset _t'11
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'10 (tptr tuchar))
                    (Expr.Etempvar _t'2 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast (Expr.Etempvar _t'11 tushort) tushort)
                      (Expr.Econst_int (Integers.Int.repr 8) tint) tint)
                    tuchar) tuchar))))))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
          (Expr.Econst_int (Integers.Int.repr 0) tint))
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
          (Expr.Econst_int (Integers.Int.repr 0) tint))))
    (Stmt.Ssequence
      (Stmt.Sset _t'5
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge (Expr.Etempvar _t'5 tint)
                          (Expr.Econst_int (Integers.Int.repr 8) tint) tint)
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'3
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tulong)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
            (Stmt.Ssequence
              (Stmt.Sset _t'8
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending_buf
                  (tptr tuchar)))
              (Stmt.Ssequence
                (Stmt.Sset _t'9
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Sassign
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Etempvar _t'8 (tptr tuchar))
                      (Expr.Etempvar _t'3 tulong) (tptr tuchar)) tuchar)
                  (Expr.Ecast
                    (Expr.Ecast (Expr.Etempvar _t'9 tushort) tuchar) tuchar)))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'7
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                (Expr.Ebinop Binop.Oshr (Expr.Etempvar _t'7 tushort)
                  (Expr.Econst_int (Integers.Int.repr 8) tint) tint)))
            (Stmt.Ssequence
              (Stmt.Sset _t'6
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'6 tint)
                  (Expr.Econst_int (Integers.Int.repr 8) tint) tint)))))
        Stmt.Sskip))))
}

def f_bi_windup : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_t'3, tulong), (_t'2, tulong), (_t'1, tulong),
               (_t'12, tushort), (_t'11, (tptr tuchar)), (_t'10, tushort),
               (_t'9, (tptr tuchar)), (_t'8, tushort), (_t'7, (tptr tuchar)),
               (_t'6, tint), (_t'5, tint), (_t'4, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _t'5
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
          (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
    (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'5 tint)
                        (Expr.Econst_int (Integers.Int.repr 8) tint) tint)
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'1
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'11
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Sset _t'12
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'11 (tptr tuchar))
                    (Expr.Etempvar _t'1 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'12 tushort)
                      (Expr.Econst_int (Integers.Int.repr 255) tint) tint)
                    tuchar) tuchar)))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'2
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'9
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Ssequence
              (Stmt.Sset _t'10
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'9 (tptr tuchar))
                    (Expr.Etempvar _t'2 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast (Expr.Etempvar _t'10 tushort) tushort)
                      (Expr.Econst_int (Integers.Int.repr 8) tint) tint)
                    tuchar) tuchar))))))
      (Stmt.Ssequence
        (Stmt.Sset _t'6
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'6 tint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'3
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tulong)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
            (Stmt.Ssequence
              (Stmt.Sset _t'7
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending_buf
                  (tptr tuchar)))
              (Stmt.Ssequence
                (Stmt.Sset _t'8
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Sassign
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Etempvar _t'7 (tptr tuchar))
                      (Expr.Etempvar _t'3 tulong) (tptr tuchar)) tuchar)
                  (Expr.Ecast
                    (Expr.Ecast (Expr.Etempvar _t'8 tushort) tuchar) tuchar)))))
          Stmt.Sskip))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'4
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_used tint)
        (Expr.Ebinop Binop.Oadd
          (Expr.Ebinop Binop.Oand
            (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'4 tint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
            (Expr.Econst_int (Integers.Int.repr 7) tint) tint)
          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
        (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
        (Expr.Econst_int (Integers.Int.repr 0) tint)))))
}

def f_gen_codes : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_tree, (tptr (Ty.Tstruct _ct_data_s noattr))),
                (_max_code, tint), (_bl_count, (tptr tushort))],
  fn_vars := [(_next_code, (tarray tushort 16))],
  fn_temps := [(_code, tuint), (_bits, tint), (_n, tint), (_len, tint),
               (_t'2, tuint), (_t'1, tushort), (_t'3, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _code (Expr.Econst_int (Integers.Int.repr 0) tint))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _bits (Expr.Econst_int (Integers.Int.repr 1) tint))
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole (Expr.Etempvar _bits tint)
                              (Expr.Econst_int (Integers.Int.repr 15) tint)
                              tint)
            Stmt.Sskip
            Stmt.Sbreak)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'3
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd
                    (Expr.Etempvar _bl_count (tptr tushort))
                    (Expr.Ebinop Binop.Osub (Expr.Etempvar _bits tint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                    (tptr tushort)) tushort))
              (Stmt.Sset _code
                (Expr.Ebinop Binop.Oshl
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _code tuint)
                    (Expr.Etempvar _t'3 tushort) tuint)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
            (Stmt.Sassign
              (Expr.Ederef
                (Expr.Ebinop Binop.Oadd
                  (Expr.Evar _next_code (tarray tushort 16))
                  (Expr.Etempvar _bits tint) (tptr tushort)) tushort)
              (Expr.Ecast (Expr.Etempvar _code tuint) tushort))))
        (Stmt.Sset _bits
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _bits tint)
            (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
    (Stmt.Ssequence
      (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole (Expr.Etempvar _n tint)
                              (Expr.Etempvar _max_code tint) tint)
            Stmt.Sskip
            Stmt.Sbreak)
          (Stmt.Ssequence
            (Stmt.Sset _len
              (Expr.Efield
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                      (Expr.Etempvar _n tint)
                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                    (Ty.Tstruct _ct_data_s noattr)) _dl
                  (Ty.Tunion __1355 noattr)) _len tushort))
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                  (Expr.Etempvar _len tint)
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  tint)
                Stmt.Scontinue
                Stmt.Sskip)
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'1
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Evar _next_code (tarray tushort 16))
                          (Expr.Etempvar _len tint) (tptr tushort)) tushort))
                    (Stmt.Sassign
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Evar _next_code (tarray tushort 16))
                          (Expr.Etempvar _len tint) (tptr tushort)) tushort)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tushort)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
                  (Stmt.Scall (some _t'2)
                    (Expr.Evar _bi_reverse (Ty.Tfunction [tuint, tint] tuint
                                             cc_default))
                    [(Expr.Etempvar _t'1 tushort), (Expr.Etempvar _len tint)]))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                          (Expr.Etempvar _n tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _code tushort)
                  (Expr.Ecast (Expr.Etempvar _t'2 tuint) tushort))))))
        (Stmt.Sset _n
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
            (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))))
}

def f_tr_static_init : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
Stmt.Sskip
}

def f_init_block : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_n, tint), (_t'2, tuint), (_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
    (Stmt.Sloop
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _n tint)
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Econst_int (Integers.Int.repr 256) tint)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tint)
                              (Expr.Econst_int (Integers.Int.repr 29) tint)
                              tint) tint)
          Stmt.Sskip
          Stmt.Sbreak)
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
                  (Expr.Etempvar _n tint)
                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                (Ty.Tstruct _ct_data_s noattr)) _fc
              (Ty.Tunion __1354 noattr)) _freq tushort)
          (Expr.Econst_int (Integers.Int.repr 0) tint)))
      (Stmt.Sset _n
        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
          (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _n tint)
                              (Expr.Econst_int (Integers.Int.repr 30) tint)
                              tint)
            Stmt.Sskip
            Stmt.Sbreak)
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _dyn_dtree
                      (tarray (Ty.Tstruct _ct_data_s noattr) 61))
                    (Expr.Etempvar _n tint)
                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                  (Ty.Tstruct _ct_data_s noattr)) _fc
                (Ty.Tunion __1354 noattr)) _freq tushort)
            (Expr.Econst_int (Integers.Int.repr 0) tint)))
        (Stmt.Sset _n
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
            (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
        (Stmt.Sloop
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _n tint)
                                (Expr.Econst_int (Integers.Int.repr 19) tint)
                                tint)
              Stmt.Sskip
              Stmt.Sbreak)
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bl_tree
                        (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                      (Expr.Etempvar _n tint)
                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                    (Ty.Tstruct _ct_data_s noattr)) _fc
                  (Ty.Tunion __1354 noattr)) _freq tushort)
              (Expr.Econst_int (Integers.Int.repr 0) tint)))
          (Stmt.Sset _n
            (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
      (Stmt.Ssequence
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
                  (Expr.Econst_int (Integers.Int.repr 256) tint)
                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                (Ty.Tstruct _ct_data_s noattr)) _fc
              (Ty.Tunion __1354 noattr)) _freq tushort)
          (Expr.Econst_int (Integers.Int.repr 1) tint))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'1
                (Expr.Ecast (Expr.Econst_long (Integers.Int64.repr 0) tlong)
                  tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _static_len tulong)
                (Expr.Etempvar _t'1 tulong)))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _opt_len tulong)
              (Expr.Etempvar _t'1 tulong)))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'2
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  tuint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _matches tuint)
                (Expr.Etempvar _t'2 tuint)))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _sym_next tuint)
              (Expr.Etempvar _t'2 tuint))))))))
}

def f__tr_init : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall none
    (Expr.Evar _tr_static_init (Ty.Tfunction [] tvoid cc_default)) [])
  (Stmt.Ssequence
    (Stmt.Sassign
      (Expr.Efield
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _l_desc
          (Ty.Tstruct _tree_desc_s noattr)) _dyn_tree
        (tptr (Ty.Tstruct _ct_data_s noattr)))
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
          (Ty.Tstruct _internal_state noattr)) _dyn_ltree
        (tarray (Ty.Tstruct _ct_data_s noattr) 573)))
    (Stmt.Ssequence
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _l_desc
            (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
          (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
        (Expr.Eaddrof
          (Expr.Evar _static_l_desc (Ty.Tstruct _static_tree_desc_s noattr))
          (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _d_desc
              (Ty.Tstruct _tree_desc_s noattr)) _dyn_tree
            (tptr (Ty.Tstruct _ct_data_s noattr)))
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _dyn_dtree
            (tarray (Ty.Tstruct _ct_data_s noattr) 61)))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _d_desc
                (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
              (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
            (Expr.Eaddrof
              (Expr.Evar _static_d_desc (Ty.Tstruct _static_tree_desc_s noattr))
              (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
          (Stmt.Ssequence
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bl_desc
                  (Ty.Tstruct _tree_desc_s noattr)) _dyn_tree
                (tptr (Ty.Tstruct _ct_data_s noattr)))
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bl_tree
                (tarray (Ty.Tstruct _ct_data_s noattr) 39)))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bl_desc
                    (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
                  (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
                (Expr.Eaddrof
                  (Expr.Evar _static_bl_desc (Ty.Tstruct _static_tree_desc_s noattr))
                  (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
              (Stmt.Ssequence
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                  (Expr.Econst_int (Integers.Int.repr 0) tint))
                (Stmt.Ssequence
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                  (Stmt.Ssequence
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_used tint)
                      (Expr.Econst_int (Integers.Int.repr 0) tint))
                    (Stmt.Scall none
                      (Expr.Evar _init_block (Ty.Tfunction
                                               [(tptr (Ty.Tstruct _internal_state noattr))]
                                               tvoid cc_default))
                      [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])))))))))))
}

def f_pqdownheap : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_tree, (tptr (Ty.Tstruct _ct_data_s noattr))), (_k, tint)],
  fn_vars := [],
  fn_temps := [(_v, tint), (_j, tint), (_t'2, tint), (_t'1, tint),
               (_t'26, tint), (_t'25, tuchar), (_t'24, tint),
               (_t'23, tuchar), (_t'22, tint), (_t'21, tushort),
               (_t'20, tint), (_t'19, tushort), (_t'18, tint),
               (_t'17, tushort), (_t'16, tint), (_t'15, tushort),
               (_t'14, tint), (_t'13, tint), (_t'12, tuchar), (_t'11, tint),
               (_t'10, tuchar), (_t'9, tushort), (_t'8, tint),
               (_t'7, tushort), (_t'6, tushort), (_t'5, tint),
               (_t'4, tushort), (_t'3, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _v
    (Expr.Ederef
      (Expr.Ebinop Binop.Oadd
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _heap (tarray tint 573))
        (Expr.Etempvar _k tint) (tptr tint)) tint))
  (Stmt.Ssequence
    (Stmt.Sset _j
      (Expr.Ebinop Binop.Oshl (Expr.Etempvar _k tint)
        (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
    (Stmt.Ssequence
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'26
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _heap_len tint))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole (Expr.Etempvar _j tint)
                                (Expr.Etempvar _t'26 tint) tint)
              Stmt.Sskip
              Stmt.Sbreak))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'13
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _heap_len tint))
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                    (Expr.Etempvar _j tint)
                                    (Expr.Etempvar _t'13 tint) tint)
                  (Stmt.Ssequence
                    (Stmt.Sset _t'14
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _heap
                            (tarray tint 573))
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _j tint)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tint) (tptr tint)) tint))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'15
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Etempvar _t'14 tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _fc
                            (Ty.Tunion __1354 noattr)) _freq tushort))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'16
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr)) _heap
                                (tarray tint 573)) (Expr.Etempvar _j tint)
                              (tptr tint)) tint))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'17
                            (Expr.Efield
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                    (Expr.Etempvar _t'16 tint)
                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                  (Ty.Tstruct _ct_data_s noattr)) _fc
                                (Ty.Tunion __1354 noattr)) _freq tushort))
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                              (Expr.Etempvar _t'15 tushort)
                                              (Expr.Etempvar _t'17 tushort)
                                              tint)
                            (Stmt.Sset _t'1
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tbool))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'18
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _heap (tarray tint 573))
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _j tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) (tptr tint)) tint))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'19
                                  (Expr.Efield
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Expr.Etempvar _t'18 tint)
                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Ty.Tstruct _ct_data_s noattr)) _fc
                                      (Ty.Tunion __1354 noattr)) _freq
                                    tushort))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'20
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _heap (tarray tint 573))
                                        (Expr.Etempvar _j tint) (tptr tint))
                                      tint))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'21
                                      (Expr.Efield
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Expr.Etempvar _t'20 tint)
                                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Ty.Tstruct _ct_data_s noattr))
                                          _fc (Ty.Tunion __1354 noattr))
                                        _freq tushort))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                        (Expr.Etempvar _t'19 tushort)
                                                        (Expr.Etempvar _t'21 tushort)
                                                        tint)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'22
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _heap (tarray tint 573))
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _j tint)
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                    tint) (tptr tint)) tint))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'23
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _depth
                                                      (tarray tuchar 573))
                                                    (Expr.Etempvar _t'22 tint)
                                                    (tptr tuchar)) tuchar))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'24
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _heap
                                                        (tarray tint 573))
                                                      (Expr.Etempvar _j tint)
                                                      (tptr tint)) tint))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'25
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _depth
                                                          (tarray tuchar 573))
                                                        (Expr.Etempvar _t'24 tint)
                                                        (tptr tuchar))
                                                      tuchar))
                                                  (Stmt.Sset _t'1
                                                    (Expr.Ecast
                                                      (Expr.Ebinop Binop.Ole
                                                        (Expr.Etempvar _t'23 tuchar)
                                                        (Expr.Etempvar _t'25 tuchar)
                                                        tint) tbool))))))
                                          (Stmt.Sset _t'1
                                            (Expr.Ecast
                                              (Expr.Etempvar _t'1 tint)
                                              tbool)))
                                        (Stmt.Sset _t'1
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'1 tint) tbool)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'1
                                          (Expr.Ecast
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            tbool))
                                        (Stmt.Sset _t'1
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'1 tint) tbool)))))))))))))
                  (Stmt.Sset _t'1
                    (Expr.Econst_int (Integers.Int.repr 0) tint))))
              (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
                (Stmt.Sset _j
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _j tint)
                    (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
                Stmt.Sskip))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'4
                    (Expr.Efield
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Expr.Etempvar _v tint)
                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                          (Ty.Tstruct _ct_data_s noattr)) _fc
                        (Ty.Tunion __1354 noattr)) _freq tushort))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'5
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _heap
                            (tarray tint 573)) (Expr.Etempvar _j tint)
                          (tptr tint)) tint))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'6
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Etempvar _t'5 tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _fc
                            (Ty.Tunion __1354 noattr)) _freq tushort))
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                          (Expr.Etempvar _t'4 tushort)
                                          (Expr.Etempvar _t'6 tushort) tint)
                        (Stmt.Sset _t'2
                          (Expr.Econst_int (Integers.Int.repr 1) tint))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'7
                            (Expr.Efield
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                    (Expr.Etempvar _v tint)
                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                  (Ty.Tstruct _ct_data_s noattr)) _fc
                                (Ty.Tunion __1354 noattr)) _freq tushort))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'8
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Etempvar _j tint) (tptr tint)) tint))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'9
                                (Expr.Efield
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Expr.Etempvar _t'8 tint)
                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                      (Ty.Tstruct _ct_data_s noattr)) _fc
                                    (Ty.Tunion __1354 noattr)) _freq tushort))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _t'7 tushort)
                                                  (Expr.Etempvar _t'9 tushort)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'10
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _depth (tarray tuchar 573))
                                          (Expr.Etempvar _v tint)
                                          (tptr tuchar)) tuchar))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'11
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _heap (tarray tint 573))
                                            (Expr.Etempvar _j tint)
                                            (tptr tint)) tint))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'12
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _depth (tarray tuchar 573))
                                              (Expr.Etempvar _t'11 tint)
                                              (tptr tuchar)) tuchar))
                                        (Stmt.Sset _t'2
                                          (Expr.Ecast
                                            (Expr.Ebinop Binop.Ole
                                              (Expr.Etempvar _t'10 tuchar)
                                              (Expr.Etempvar _t'12 tuchar)
                                              tint) tbool)))))
                                  (Stmt.Sset _t'2
                                    (Expr.Ecast (Expr.Etempvar _t'2 tint)
                                      tbool)))
                                (Stmt.Sset _t'2
                                  (Expr.Ecast
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    tbool))))))))))
                (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
                  Stmt.Sbreak
                  Stmt.Sskip))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'3
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _heap
                          (tarray tint 573)) (Expr.Etempvar _j tint)
                        (tptr tint)) tint))
                  (Stmt.Sassign
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _heap
                          (tarray tint 573)) (Expr.Etempvar _k tint)
                        (tptr tint)) tint) (Expr.Etempvar _t'3 tint)))
                (Stmt.Ssequence
                  (Stmt.Sset _k (Expr.Etempvar _j tint))
                  (Stmt.Sset _j
                    (Expr.Ebinop Binop.Oshl (Expr.Etempvar _j tint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))))))
        Stmt.Sskip)
      (Stmt.Sassign
        (Expr.Ederef
          (Expr.Ebinop Binop.Oadd
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _heap (tarray tint 573))
            (Expr.Etempvar _k tint) (tptr tint)) tint)
        (Expr.Etempvar _v tint)))))
}

def f_gen_bitlen : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_desc, (tptr (Ty.Tstruct _tree_desc_s noattr)))],
  fn_vars := [],
  fn_temps := [(_tree, (tptr (Ty.Tstruct _ct_data_s noattr))),
               (_max_code, tint),
               (_stree, (tptr (Ty.Tstruct _ct_data_s noattr))),
               (_extra, (tptr tint)), (_base, tint), (_max_length, tint),
               (_h, tint), (_n, tint), (_m, tint), (_bits, tint),
               (_xbits, tint), (_f, tushort), (_overflow, tint),
               (_t'1, tint),
               (_t'23, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'22, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'21, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'20, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'19, tint), (_t'18, tint), (_t'17, tint), (_t'16, tushort),
               (_t'15, tushort), (_t'14, tushort), (_t'13, tushort),
               (_t'12, tulong), (_t'11, tushort), (_t'10, tulong),
               (_t'9, tushort), (_t'8, tushort), (_t'7, tushort),
               (_t'6, tushort), (_t'5, tushort), (_t'4, tushort),
               (_t'3, tulong), (_t'2, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _tree
    (Expr.Efield
      (Expr.Ederef
        (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
        (Ty.Tstruct _tree_desc_s noattr)) _dyn_tree
      (tptr (Ty.Tstruct _ct_data_s noattr))))
  (Stmt.Ssequence
    (Stmt.Sset _max_code
      (Expr.Efield
        (Expr.Ederef
          (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
          (Ty.Tstruct _tree_desc_s noattr)) _max_code tint))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'23
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
              (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
            (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
        (Stmt.Sset _stree
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _t'23 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
              (Ty.Tstruct _static_tree_desc_s noattr)) _static_tree
            (tptr (Ty.Tstruct _ct_data_s noattr)))))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'22
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
                (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
              (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
          (Stmt.Sset _extra
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _t'22 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
                (Ty.Tstruct _static_tree_desc_s noattr)) _extra_bits
              (tptr tint))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'21
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
                  (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
                (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
            (Stmt.Sset _base
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _t'21 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
                  (Ty.Tstruct _static_tree_desc_s noattr)) _extra_base tint)))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'20
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
                    (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
                  (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
              (Stmt.Sset _max_length
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _t'20 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
                    (Ty.Tstruct _static_tree_desc_s noattr)) _max_length
                  tint)))
            (Stmt.Ssequence
              (Stmt.Sset _overflow
                (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _bits
                    (Expr.Econst_int (Integers.Int.repr 0) tint))
                  (Stmt.Sloop
                    (Stmt.Ssequence
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                          (Expr.Etempvar _bits tint)
                                          (Expr.Econst_int (Integers.Int.repr 15) tint)
                                          tint)
                        Stmt.Sskip
                        Stmt.Sbreak)
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _bl_count (tarray tushort 16))
                            (Expr.Etempvar _bits tint) (tptr tushort))
                          tushort)
                        (Expr.Econst_int (Integers.Int.repr 0) tint)))
                    (Stmt.Sset _bits
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _bits tint)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'18
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _heap_max
                        tint))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'19
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _heap
                              (tarray tint 573)) (Expr.Etempvar _t'18 tint)
                            (tptr tint)) tint))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Etempvar _t'19 tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _dl
                            (Ty.Tunion __1355 noattr)) _len tushort)
                        (Expr.Econst_int (Integers.Int.repr 0) tint))))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'17
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _heap_max
                            tint))
                        (Stmt.Sset _h
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'17 tint)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tint)))
                      (Stmt.Sloop
                        (Stmt.Ssequence
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                              (Expr.Etempvar _h tint)
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Ebinop Binop.Omul
                                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Econst_int (Integers.Int.repr 256) tint)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint)
                                                    (Expr.Econst_int (Integers.Int.repr 29) tint)
                                                    tint) tint)
                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                tint) tint)
                            Stmt.Sskip
                            Stmt.Sbreak)
                          (Stmt.Ssequence
                            (Stmt.Sset _n
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Etempvar _h tint) (tptr tint)) tint))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'15
                                  (Expr.Efield
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Expr.Etempvar _n tint)
                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Ty.Tstruct _ct_data_s noattr)) _dl
                                      (Ty.Tunion __1355 noattr)) _dad
                                    tushort))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'16
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Expr.Etempvar _t'15 tushort)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _dl
                                        (Ty.Tunion __1355 noattr)) _len
                                      tushort))
                                  (Stmt.Sset _bits
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'16 tushort)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint))))
                              (Stmt.Ssequence
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                    (Expr.Etempvar _bits tint)
                                                    (Expr.Etempvar _max_length tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Sset _bits
                                      (Expr.Etempvar _max_length tint))
                                    (Stmt.Sset _overflow
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _overflow tint)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tint)))
                                  Stmt.Sskip)
                                (Stmt.Ssequence
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Expr.Etempvar _n tint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _dl
                                        (Ty.Tunion __1355 noattr)) _len
                                      tushort)
                                    (Expr.Ecast (Expr.Etempvar _bits tint)
                                      tushort))
                                  (Stmt.Ssequence
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                        (Expr.Etempvar _n tint)
                                                        (Expr.Etempvar _max_code tint)
                                                        tint)
                                      Stmt.Scontinue
                                      Stmt.Sskip)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'14
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bl_count
                                                (tarray tushort 16))
                                              (Expr.Etempvar _bits tint)
                                              (tptr tushort)) tushort))
                                        (Stmt.Sassign
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bl_count
                                                (tarray tushort 16))
                                              (Expr.Etempvar _bits tint)
                                              (tptr tushort)) tushort)
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'14 tushort)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _xbits
                                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                                        (Stmt.Ssequence
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                                              (Expr.Etempvar _n tint)
                                                              (Expr.Etempvar _base tint)
                                                              tint)
                                            (Stmt.Sset _xbits
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _extra (tptr tint))
                                                  (Expr.Ebinop Binop.Osub
                                                    (Expr.Etempvar _n tint)
                                                    (Expr.Etempvar _base tint)
                                                    tint) (tptr tint)) tint))
                                            Stmt.Sskip)
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'13
                                                (Expr.Efield
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Expr.Etempvar _n tint)
                                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Ty.Tstruct _ct_data_s noattr))
                                                    _fc
                                                    (Ty.Tunion __1354 noattr))
                                                  _freq tushort))
                                              (Stmt.Sset _f
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'13 tushort)
                                                  tushort)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'12
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _opt_len tulong))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _opt_len tulong)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'12 tulong)
                                                    (Expr.Ebinop Binop.Omul
                                                      (Expr.Ecast
                                                        (Expr.Etempvar _f tushort)
                                                        tulong)
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _bits tint)
                                                          (Expr.Etempvar _xbits tint)
                                                          tint) tuint)
                                                      tulong) tulong)))
                                              (Stmt.Sifthenelse (Expr.Etempvar _stree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'10
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _static_len tulong))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'11
                                                      (Expr.Efield
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _stree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                              (Expr.Etempvar _n tint)
                                                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                            (Ty.Tstruct _ct_data_s noattr))
                                                          _dl
                                                          (Ty.Tunion __1355 noattr))
                                                        _len tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _static_len tulong)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'10 tulong)
                                                        (Expr.Ebinop Binop.Omul
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _f tushort)
                                                            tulong)
                                                          (Expr.Ecast
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'11 tushort)
                                                              (Expr.Etempvar _xbits tint)
                                                              tint) tuint)
                                                          tulong) tulong))))
                                                Stmt.Sskip))))))))))))
                        (Stmt.Sset _h
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _h tint)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tint))))
                    (Stmt.Ssequence
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                          (Expr.Etempvar _overflow tint)
                                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                                          tint)
                        (Stmt.Sreturn none)
                        Stmt.Sskip)
                      (Stmt.Ssequence
                        (Stmt.Sloop
                          (Stmt.Ssequence
                            (Stmt.Sset _bits
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _max_length tint)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tint))
                            (Stmt.Ssequence
                              (Stmt.Sloop
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'9
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bl_count (tarray tushort 16))
                                          (Expr.Etempvar _bits tint)
                                          (tptr tushort)) tushort))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                        (Expr.Etempvar _t'9 tushort)
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                        tint)
                                      Stmt.Sskip
                                      Stmt.Sbreak))
                                  (Stmt.Sset _bits
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Etempvar _bits tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint)))
                                Stmt.Sskip)
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'8
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bl_count (tarray tushort 16))
                                        (Expr.Etempvar _bits tint)
                                        (tptr tushort)) tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bl_count (tarray tushort 16))
                                        (Expr.Etempvar _bits tint)
                                        (tptr tushort)) tushort)
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Etempvar _t'8 tushort)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint)))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'7
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bl_count (tarray tushort 16))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _bits tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint) (tptr tushort)) tushort))
                                    (Stmt.Sassign
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bl_count (tarray tushort 16))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _bits tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint) (tptr tushort)) tushort)
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'7 tushort)
                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                        tint)))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'6
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bl_count (tarray tushort 16))
                                            (Expr.Etempvar _max_length tint)
                                            (tptr tushort)) tushort))
                                      (Stmt.Sassign
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bl_count (tarray tushort 16))
                                            (Expr.Etempvar _max_length tint)
                                            (tptr tushort)) tushort)
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _t'6 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint)))
                                    (Stmt.Sset _overflow
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Etempvar _overflow tint)
                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                        tint)))))))
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                              (Expr.Etempvar _overflow tint)
                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                              tint)
                            Stmt.Sskip
                            Stmt.Sbreak))
                        (Stmt.Ssequence
                          (Stmt.Sset _bits (Expr.Etempvar _max_length tint))
                          (Stmt.Sloop
                            (Stmt.Ssequence
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                  (Expr.Etempvar _bits tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                Stmt.Sskip
                                Stmt.Sbreak)
                              (Stmt.Ssequence
                                (Stmt.Sset _n
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bl_count (tarray tushort 16))
                                      (Expr.Etempvar _bits tint)
                                      (tptr tushort)) tushort))
                                (swhile
                                  (Expr.Ebinop Binop.One
                                    (Expr.Etempvar _n tint)
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'1
                                          (Expr.Ecast
                                            (Expr.Ebinop Binop.Osub
                                              (Expr.Etempvar _h tint)
                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                              tint) tint))
                                        (Stmt.Sset _h
                                          (Expr.Etempvar _t'1 tint)))
                                      (Stmt.Sset _m
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _heap (tarray tint 573))
                                            (Expr.Etempvar _t'1 tint)
                                            (tptr tint)) tint)))
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                          (Expr.Etempvar _m tint)
                                                          (Expr.Etempvar _max_code tint)
                                                          tint)
                                        Stmt.Scontinue
                                        Stmt.Sskip)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'2
                                            (Expr.Efield
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                    (Expr.Etempvar _m tint)
                                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                  (Ty.Tstruct _ct_data_s noattr))
                                                _dl
                                                (Ty.Tunion __1355 noattr))
                                              _len tushort))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                              (Expr.Ecast
                                                                (Expr.Etempvar _t'2 tushort)
                                                                tuint)
                                                              (Expr.Ecast
                                                                (Expr.Etempvar _bits tint)
                                                                tuint) tint)
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'3
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _opt_len tulong))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'4
                                                    (Expr.Efield
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                            (Expr.Etempvar _m tint)
                                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                          (Ty.Tstruct _ct_data_s noattr))
                                                        _dl
                                                        (Ty.Tunion __1355 noattr))
                                                      _len tushort))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'5
                                                      (Expr.Efield
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                              (Expr.Etempvar _m tint)
                                                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                            (Ty.Tstruct _ct_data_s noattr))
                                                          _fc
                                                          (Ty.Tunion __1354 noattr))
                                                        _freq tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _opt_len tulong)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'3 tulong)
                                                        (Expr.Ebinop Binop.Omul
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _bits tint)
                                                              tulong)
                                                            (Expr.Etempvar _t'4 tushort)
                                                            tulong)
                                                          (Expr.Etempvar _t'5 tushort)
                                                          tulong) tulong)))))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Expr.Etempvar _m tint)
                                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Ty.Tstruct _ct_data_s noattr))
                                                    _dl
                                                    (Ty.Tunion __1355 noattr))
                                                  _len tushort)
                                                (Expr.Ecast
                                                  (Expr.Etempvar _bits tint)
                                                  tushort)))
                                            Stmt.Sskip))
                                        (Stmt.Sset _n
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _n tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint))))))))
                            (Stmt.Sset _bits
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _bits tint)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tint))))))))))))))))
}

def f_build_tree : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_desc, (tptr (Ty.Tstruct _tree_desc_s noattr)))],
  fn_vars := [],
  fn_temps := [(_tree, (tptr (Ty.Tstruct _ct_data_s noattr))),
               (_stree, (tptr (Ty.Tstruct _ct_data_s noattr))),
               (_elems, tint), (_n, tint), (_m, tint), (_max_code, tint),
               (_node, tint), (_t'13, tint), (_t'12, tint), (_t'11, tushort),
               (_t'10, tint), (_t'9, tint), (_t'8, tint), (_t'7, tint),
               (_t'6, tint), (_t'5, tint), (_t'4, tint), (_t'3, tint),
               (_t'2, tint), (_t'1, tint),
               (_t'35, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'34, (tptr (Ty.Tstruct _static_tree_desc_s noattr))),
               (_t'33, tint), (_t'32, tushort), (_t'31, tint), (_t'30, tint),
               (_t'29, tulong), (_t'28, tushort), (_t'27, tulong),
               (_t'26, tint), (_t'25, tint), (_t'24, tint), (_t'23, tint),
               (_t'22, tushort), (_t'21, tushort), (_t'20, tuchar),
               (_t'19, tuchar), (_t'18, tuchar), (_t'17, tuchar),
               (_t'16, tint), (_t'15, tint), (_t'14, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _tree
    (Expr.Efield
      (Expr.Ederef
        (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
        (Ty.Tstruct _tree_desc_s noattr)) _dyn_tree
      (tptr (Ty.Tstruct _ct_data_s noattr))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'35
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
            (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
          (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
      (Stmt.Sset _stree
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _t'35 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
            (Ty.Tstruct _static_tree_desc_s noattr)) _static_tree
          (tptr (Ty.Tstruct _ct_data_s noattr)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'34
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
              (Ty.Tstruct _tree_desc_s noattr)) _stat_desc
            (tptr (Ty.Tstruct _static_tree_desc_s noattr))))
        (Stmt.Sset _elems
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _t'34 (tptr (Ty.Tstruct _static_tree_desc_s noattr)))
              (Ty.Tstruct _static_tree_desc_s noattr)) _elems tint)))
      (Stmt.Ssequence
        (Stmt.Sset _max_code
          (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint)
            tint))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _heap_len tint)
              (Expr.Econst_int (Integers.Int.repr 0) tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _heap_max tint)
              (Expr.Ebinop Binop.Oadd
                (Expr.Ebinop Binop.Omul
                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                  (Expr.Ebinop Binop.Oadd
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Econst_int (Integers.Int.repr 256) tint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                    (Expr.Econst_int (Integers.Int.repr 29) tint) tint) tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Sloop
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                      (Expr.Etempvar _n tint)
                                      (Expr.Etempvar _elems tint) tint)
                    Stmt.Sskip
                    Stmt.Sbreak)
                  (Stmt.Ssequence
                    (Stmt.Sset _t'32
                      (Expr.Efield
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Expr.Etempvar _n tint)
                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Ty.Tstruct _ct_data_s noattr)) _fc
                          (Ty.Tunion __1354 noattr)) _freq tushort))
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                        (Expr.Etempvar _t'32 tushort)
                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                        tint)
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'33
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _heap_len tint))
                                  (Stmt.Sset _t'1
                                    (Expr.Ecast
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'33 tint)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tint) tint)))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap_len tint)
                                  (Expr.Etempvar _t'1 tint)))
                              (Stmt.Sset _t'2
                                (Expr.Ecast (Expr.Etempvar _n tint) tint)))
                            (Stmt.Sset _max_code (Expr.Etempvar _t'2 tint)))
                          (Stmt.Sassign
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _heap (tarray tint 573))
                                (Expr.Etempvar _t'1 tint) (tptr tint)) tint)
                            (Expr.Etempvar _t'2 tint)))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr)) _depth
                                (tarray tuchar 573)) (Expr.Etempvar _n tint)
                              (tptr tuchar)) tuchar)
                          (Expr.Econst_int (Integers.Int.repr 0) tint)))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Etempvar _n tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _dl
                            (Ty.Tunion __1355 noattr)) _len tushort)
                        (Expr.Econst_int (Integers.Int.repr 0) tint)))))
                (Stmt.Sset _n
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
                    (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
            (Stmt.Ssequence
              (Stmt.Sloop
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'31
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _heap_len
                        tint))
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                        (Expr.Etempvar _t'31 tint)
                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                        tint)
                      Stmt.Sskip
                      Stmt.Sbreak))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'30
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap_len tint))
                                (Stmt.Sset _t'3
                                  (Expr.Ecast
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'30 tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) tint)))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _heap_len tint) (Expr.Etempvar _t'3 tint)))
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                (Expr.Etempvar _max_code tint)
                                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                tint)
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'5
                                    (Expr.Ecast
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _max_code tint)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tint) tint))
                                  (Stmt.Sset _max_code
                                    (Expr.Etempvar _t'5 tint)))
                                (Stmt.Sset _t'4
                                  (Expr.Ecast (Expr.Etempvar _t'5 tint) tint)))
                              (Stmt.Sset _t'4
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  tint))))
                          (Stmt.Sset _t'6
                            (Expr.Ecast (Expr.Etempvar _t'4 tint) tint)))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr)) _heap
                                (tarray tint 573)) (Expr.Etempvar _t'3 tint)
                              (tptr tint)) tint) (Expr.Etempvar _t'6 tint)))
                      (Stmt.Sset _node (Expr.Etempvar _t'6 tint)))
                    (Stmt.Ssequence
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Etempvar _node tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _fc
                            (Ty.Tunion __1354 noattr)) _freq tushort)
                        (Expr.Econst_int (Integers.Int.repr 1) tint))
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr)) _depth
                                (tarray tuchar 573))
                              (Expr.Etempvar _node tint) (tptr tuchar))
                            tuchar)
                          (Expr.Econst_int (Integers.Int.repr 0) tint))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'29
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _opt_len tulong))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _opt_len tulong)
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _t'29 tulong)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tulong)))
                          (Stmt.Sifthenelse (Expr.Etempvar _stree (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'27
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _static_len tulong))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'28
                                  (Expr.Efield
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _stree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Expr.Etempvar _node tint)
                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Ty.Tstruct _ct_data_s noattr)) _dl
                                      (Ty.Tunion __1355 noattr)) _len
                                    tushort))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _static_len tulong)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _t'27 tulong)
                                    (Expr.Etempvar _t'28 tushort) tulong))))
                            Stmt.Sskip))))))
                Stmt.Sskip)
              (Stmt.Ssequence
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
                      (Ty.Tstruct _tree_desc_s noattr)) _max_code tint)
                  (Expr.Etempvar _max_code tint))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'26
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _heap_len
                          tint))
                      (Stmt.Sset _n
                        (Expr.Ebinop Binop.Odiv (Expr.Etempvar _t'26 tint)
                          (Expr.Econst_int (Integers.Int.repr 2) tint) tint)))
                    (Stmt.Sloop
                      (Stmt.Ssequence
                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                            (Expr.Etempvar _n tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint)
                          Stmt.Sskip
                          Stmt.Sbreak)
                        (Stmt.Scall none
                          (Expr.Evar _pqdownheap (Ty.Tfunction
                                                   [(tptr (Ty.Tstruct _internal_state noattr)),
                                                    (tptr (Ty.Tstruct _ct_data_s noattr)),
                                                    tint] tvoid cc_default))
                          [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                           (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr))),
                           (Expr.Etempvar _n tint)]))
                      (Stmt.Sset _n
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _n tint)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
                  (Stmt.Ssequence
                    (Stmt.Sset _node (Expr.Etempvar _elems tint))
                    (Stmt.Ssequence
                      (Stmt.Sloop
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _n
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  (tptr tint)) tint))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'7
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _heap_len tint))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _heap_len tint)
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Etempvar _t'7 tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'25
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _heap (tarray tint 573))
                                        (Expr.Etempvar _t'7 tint)
                                        (tptr tint)) tint))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _heap (tarray tint 573))
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        (tptr tint)) tint)
                                    (Expr.Etempvar _t'25 tint))))
                              (Stmt.Scall none
                                (Expr.Evar _pqdownheap (Ty.Tfunction
                                                         [(tptr (Ty.Tstruct _internal_state noattr)),
                                                          (tptr (Ty.Tstruct _ct_data_s noattr)),
                                                          tint] tvoid
                                                         cc_default))
                                [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                                 (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr))),
                                 (Expr.Econst_int (Integers.Int.repr 1) tint)])))
                          (Stmt.Ssequence
                            (Stmt.Sset _m
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  (tptr tint)) tint))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'24
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _heap_max tint))
                                    (Stmt.Sset _t'8
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _t'24 tint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint) tint)))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _heap_max tint)
                                    (Expr.Etempvar _t'8 tint)))
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _heap (tarray tint 573))
                                      (Expr.Etempvar _t'8 tint) (tptr tint))
                                    tint) (Expr.Etempvar _n tint)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'23
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _heap_max tint))
                                      (Stmt.Sset _t'9
                                        (Expr.Ecast
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _t'23 tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint) tint)))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _heap_max tint)
                                      (Expr.Etempvar _t'9 tint)))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _heap (tarray tint 573))
                                        (Expr.Etempvar _t'9 tint)
                                        (tptr tint)) tint)
                                    (Expr.Etempvar _m tint)))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'21
                                      (Expr.Efield
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Expr.Etempvar _n tint)
                                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Ty.Tstruct _ct_data_s noattr))
                                          _fc (Ty.Tunion __1354 noattr))
                                        _freq tushort))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'22
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Expr.Etempvar _m tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Expr.Etempvar _node tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _t'21 tushort)
                                          (Expr.Etempvar _t'22 tushort) tint))))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'17
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _depth (tarray tuchar 573))
                                              (Expr.Etempvar _n tint)
                                              (tptr tuchar)) tuchar))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'18
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _depth (tarray tuchar 573))
                                                (Expr.Etempvar _m tint)
                                                (tptr tuchar)) tuchar))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                                              (Expr.Etempvar _t'17 tuchar)
                                                              (Expr.Etempvar _t'18 tuchar)
                                                              tint)
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'20
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _depth
                                                      (tarray tuchar 573))
                                                    (Expr.Etempvar _n tint)
                                                    (tptr tuchar)) tuchar))
                                              (Stmt.Sset _t'10
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'20 tuchar)
                                                  tint)))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'19
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _depth
                                                      (tarray tuchar 573))
                                                    (Expr.Etempvar _m tint)
                                                    (tptr tuchar)) tuchar))
                                              (Stmt.Sset _t'10
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'19 tuchar)
                                                  tint))))))
                                      (Stmt.Sassign
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _depth (tarray tuchar 573))
                                            (Expr.Etempvar _node tint)
                                            (tptr tuchar)) tuchar)
                                        (Expr.Ecast
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'10 tint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint) tuchar)))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'11
                                            (Expr.Ecast
                                              (Expr.Ecast
                                                (Expr.Etempvar _node tint)
                                                tushort) tushort))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                    (Expr.Etempvar _m tint)
                                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                  (Ty.Tstruct _ct_data_s noattr))
                                                _dl
                                                (Ty.Tunion __1355 noattr))
                                              _dad tushort)
                                            (Expr.Etempvar _t'11 tushort)))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                  (Expr.Etempvar _n tint)
                                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Ty.Tstruct _ct_data_s noattr))
                                              _dl (Ty.Tunion __1355 noattr))
                                            _dad tushort)
                                          (Expr.Etempvar _t'11 tushort)))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'12
                                              (Expr.Etempvar _node tint))
                                            (Stmt.Sset _node
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _t'12 tint)
                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                tint)))
                                          (Stmt.Sassign
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _heap (tarray tint 573))
                                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                (tptr tint)) tint)
                                            (Expr.Etempvar _t'12 tint)))
                                        (Stmt.Scall none
                                          (Expr.Evar _pqdownheap (Ty.Tfunction
                                                                   [(tptr (Ty.Tstruct _internal_state noattr)),
                                                                    (tptr (Ty.Tstruct _ct_data_s noattr)),
                                                                    tint]
                                                                   tvoid
                                                                   cc_default))
                                          [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                                           (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr))),
                                           (Expr.Econst_int (Integers.Int.repr 1) tint)])))))))))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'16
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _heap_len tint))
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                              (Expr.Etempvar _t'16 tint)
                                              (Expr.Econst_int (Integers.Int.repr 2) tint)
                                              tint)
                            Stmt.Sskip
                            Stmt.Sbreak)))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'15
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _heap_max tint))
                              (Stmt.Sset _t'13
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _t'15 tint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tint) tint)))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _heap_max tint) (Expr.Etempvar _t'13 tint)))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'14
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  (tptr tint)) tint))
                            (Stmt.Sassign
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _heap (tarray tint 573))
                                  (Expr.Etempvar _t'13 tint) (tptr tint))
                                tint) (Expr.Etempvar _t'14 tint))))
                        (Stmt.Ssequence
                          (Stmt.Scall none
                            (Expr.Evar _gen_bitlen (Ty.Tfunction
                                                     [(tptr (Ty.Tstruct _internal_state noattr)),
                                                      (tptr (Ty.Tstruct _tree_desc_s noattr))]
                                                     tvoid cc_default))
                            [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                             (Expr.Ecast
                               (Expr.Etempvar _desc (tptr (Ty.Tstruct _tree_desc_s noattr)))
                               (tptr (Ty.Tstruct _tree_desc_s noattr)))])
                          (Stmt.Scall none
                            (Expr.Evar _gen_codes (Ty.Tfunction
                                                    [(tptr (Ty.Tstruct _ct_data_s noattr)),
                                                     tint, (tptr tushort)]
                                                    tvoid cc_default))
                            [(Expr.Ecast
                               (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                               (tptr (Ty.Tstruct _ct_data_s noattr))),
                             (Expr.Etempvar _max_code tint),
                             (Expr.Efield
                               (Expr.Ederef
                                 (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                 (Ty.Tstruct _internal_state noattr))
                               _bl_count (tarray tushort 16))]))))))))))))))
}

def f_scan_tree : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_tree, (tptr (Ty.Tstruct _ct_data_s noattr))),
                (_max_code, tint)],
  fn_vars := [],
  fn_temps := [(_n, tint), (_prevlen, tint), (_curlen, tint),
               (_nextlen, tint), (_count, tint), (_max_count, tint),
               (_min_count, tint), (_t'2, tint), (_t'1, tint),
               (_t'7, tushort), (_t'6, tushort), (_t'5, tushort),
               (_t'4, tushort), (_t'3, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _prevlen
    (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
  (Stmt.Ssequence
    (Stmt.Sset _nextlen
      (Expr.Efield
        (Expr.Efield
          (Expr.Ederef
            (Expr.Ebinop Binop.Oadd
              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
              (Expr.Econst_int (Integers.Int.repr 0) tint)
              (tptr (Ty.Tstruct _ct_data_s noattr)))
            (Ty.Tstruct _ct_data_s noattr)) _dl (Ty.Tunion __1355 noattr))
        _len tushort))
    (Stmt.Ssequence
      (Stmt.Sset _count (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Ssequence
        (Stmt.Sset _max_count (Expr.Econst_int (Integers.Int.repr 7) tint))
        (Stmt.Ssequence
          (Stmt.Sset _min_count (Expr.Econst_int (Integers.Int.repr 4) tint))
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _nextlen tint)
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                tint)
              (Stmt.Ssequence
                (Stmt.Sset _max_count
                  (Expr.Econst_int (Integers.Int.repr 138) tint))
                (Stmt.Sset _min_count
                  (Expr.Econst_int (Integers.Int.repr 3) tint)))
              Stmt.Sskip)
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _max_code tint)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                      (Ty.Tstruct _ct_data_s noattr)) _dl
                    (Ty.Tunion __1355 noattr)) _len tushort)
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 65535) tint)
                  tushort))
              (Stmt.Ssequence
                (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
                (Stmt.Sloop
                  (Stmt.Ssequence
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                        (Expr.Etempvar _n tint)
                                        (Expr.Etempvar _max_code tint) tint)
                      Stmt.Sskip
                      Stmt.Sbreak)
                    (Stmt.Ssequence
                      (Stmt.Sset _curlen (Expr.Etempvar _nextlen tint))
                      (Stmt.Ssequence
                        (Stmt.Sset _nextlen
                          (Expr.Efield
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _n tint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tint)
                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Ty.Tstruct _ct_data_s noattr)) _dl
                              (Ty.Tunion __1355 noattr)) _len tushort))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'1
                                  (Expr.Ecast
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _count tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) tint))
                                (Stmt.Sset _count (Expr.Etempvar _t'1 tint)))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                  (Expr.Etempvar _t'1 tint)
                                                  (Expr.Etempvar _max_count tint)
                                                  tint)
                                (Stmt.Sset _t'2
                                  (Expr.Ecast
                                    (Expr.Ebinop Binop.Oeq
                                      (Expr.Etempvar _curlen tint)
                                      (Expr.Etempvar _nextlen tint) tint)
                                    tbool))
                                (Stmt.Sset _t'2
                                  (Expr.Econst_int (Integers.Int.repr 0) tint))))
                            (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
                              Stmt.Scontinue
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                  (Expr.Etempvar _count tint)
                                                  (Expr.Etempvar _min_count tint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'7
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bl_tree
                                              (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                            (Expr.Etempvar _curlen tint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _fc
                                        (Ty.Tunion __1354 noattr)) _freq
                                      tushort))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bl_tree
                                              (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                            (Expr.Etempvar _curlen tint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _fc
                                        (Ty.Tunion __1354 noattr)) _freq
                                      tushort)
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'7 tushort)
                                      (Expr.Ecast (Expr.Etempvar _count tint)
                                        tushort) tint)))
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                    (Expr.Etempvar _curlen tint)
                                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                        (Expr.Etempvar _curlen tint)
                                                        (Expr.Etempvar _prevlen tint)
                                                        tint)
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'6
                                          (Expr.Efield
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bl_tree
                                                    (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                  (Expr.Etempvar _curlen tint)
                                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Ty.Tstruct _ct_data_s noattr))
                                              _fc (Ty.Tunion __1354 noattr))
                                            _freq tushort))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bl_tree
                                                    (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                  (Expr.Etempvar _curlen tint)
                                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Ty.Tstruct _ct_data_s noattr))
                                              _fc (Ty.Tunion __1354 noattr))
                                            _freq tushort)
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'6 tushort)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tint)))
                                      Stmt.Sskip)
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'5
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _t'5 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint))))
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                                      (Expr.Etempvar _count tint)
                                                      (Expr.Econst_int (Integers.Int.repr 10) tint)
                                                      tint)
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'4
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _t'4 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint)))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'3
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 18) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 18) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _fc (Ty.Tunion __1354 noattr))
                                          _freq tushort)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _t'3 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint))))))))
                          (Stmt.Ssequence
                            (Stmt.Sset _count
                              (Expr.Econst_int (Integers.Int.repr 0) tint))
                            (Stmt.Ssequence
                              (Stmt.Sset _prevlen
                                (Expr.Etempvar _curlen tint))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _nextlen tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sset _max_count
                                    (Expr.Econst_int (Integers.Int.repr 138) tint))
                                  (Stmt.Sset _min_count
                                    (Expr.Econst_int (Integers.Int.repr 3) tint)))
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                    (Expr.Etempvar _curlen tint)
                                                    (Expr.Etempvar _nextlen tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Sset _max_count
                                      (Expr.Econst_int (Integers.Int.repr 6) tint))
                                    (Stmt.Sset _min_count
                                      (Expr.Econst_int (Integers.Int.repr 3) tint)))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _max_count
                                      (Expr.Econst_int (Integers.Int.repr 7) tint))
                                    (Stmt.Sset _min_count
                                      (Expr.Econst_int (Integers.Int.repr 4) tint)))))))))))
                  (Stmt.Sset _n
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))))))))))
}

def f_send_tree : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_tree, (tptr (Ty.Tstruct _ct_data_s noattr))),
                (_max_code, tint)],
  fn_vars := [],
  fn_temps := [(_n, tint), (_prevlen, tint), (_curlen, tint),
               (_nextlen, tint), (_count, tint), (_max_count, tint),
               (_min_count, tint), (_len, tint), (_val, tint),
               (_len__1, tint), (_val__1, tint), (_len__2, tint),
               (_val__2, tint), (_len__3, tint), (_val__3, tint),
               (_len__4, tint), (_val__4, tint), (_len__5, tint),
               (_val__5, tint), (_len__6, tint), (_val__6, tint),
               (_len__7, tint), (_val__7, tint), (_t'19, tint),
               (_t'18, tint), (_t'17, tulong), (_t'16, tulong),
               (_t'15, tulong), (_t'14, tulong), (_t'13, tulong),
               (_t'12, tulong), (_t'11, tulong), (_t'10, tulong),
               (_t'9, tulong), (_t'8, tulong), (_t'7, tulong),
               (_t'6, tulong), (_t'5, tulong), (_t'4, tulong),
               (_t'3, tulong), (_t'2, tulong), (_t'1, tint),
               (_t'125, tushort), (_t'124, tint), (_t'123, tushort),
               (_t'122, tushort), (_t'121, (tptr tuchar)), (_t'120, tushort),
               (_t'119, (tptr tuchar)), (_t'118, tint), (_t'117, tint),
               (_t'116, tint), (_t'115, tushort), (_t'114, tushort),
               (_t'113, tint), (_t'112, tint), (_t'111, tushort),
               (_t'110, tint), (_t'109, tushort), (_t'108, tushort),
               (_t'107, (tptr tuchar)), (_t'106, tushort),
               (_t'105, (tptr tuchar)), (_t'104, tint), (_t'103, tint),
               (_t'102, tint), (_t'101, tushort), (_t'100, tushort),
               (_t'99, tint), (_t'98, tint), (_t'97, tushort), (_t'96, tint),
               (_t'95, tushort), (_t'94, tushort), (_t'93, (tptr tuchar)),
               (_t'92, tushort), (_t'91, (tptr tuchar)), (_t'90, tint),
               (_t'89, tint), (_t'88, tint), (_t'87, tushort),
               (_t'86, tushort), (_t'85, tint), (_t'84, tint), (_t'83, tint),
               (_t'82, tushort), (_t'81, tushort), (_t'80, (tptr tuchar)),
               (_t'79, tushort), (_t'78, (tptr tuchar)), (_t'77, tint),
               (_t'76, tint), (_t'75, tint), (_t'74, tushort), (_t'73, tint),
               (_t'72, tint), (_t'71, tushort), (_t'70, tint),
               (_t'69, tushort), (_t'68, tushort), (_t'67, (tptr tuchar)),
               (_t'66, tushort), (_t'65, (tptr tuchar)), (_t'64, tint),
               (_t'63, tint), (_t'62, tint), (_t'61, tushort),
               (_t'60, tushort), (_t'59, tint), (_t'58, tint), (_t'57, tint),
               (_t'56, tushort), (_t'55, tushort), (_t'54, (tptr tuchar)),
               (_t'53, tushort), (_t'52, (tptr tuchar)), (_t'51, tint),
               (_t'50, tint), (_t'49, tint), (_t'48, tushort), (_t'47, tint),
               (_t'46, tint), (_t'45, tushort), (_t'44, tint),
               (_t'43, tushort), (_t'42, tushort), (_t'41, (tptr tuchar)),
               (_t'40, tushort), (_t'39, (tptr tuchar)), (_t'38, tint),
               (_t'37, tint), (_t'36, tint), (_t'35, tushort),
               (_t'34, tushort), (_t'33, tint), (_t'32, tint), (_t'31, tint),
               (_t'30, tushort), (_t'29, tushort), (_t'28, (tptr tuchar)),
               (_t'27, tushort), (_t'26, (tptr tuchar)), (_t'25, tint),
               (_t'24, tint), (_t'23, tint), (_t'22, tushort), (_t'21, tint),
               (_t'20, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _prevlen
    (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
  (Stmt.Ssequence
    (Stmt.Sset _nextlen
      (Expr.Efield
        (Expr.Efield
          (Expr.Ederef
            (Expr.Ebinop Binop.Oadd
              (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
              (Expr.Econst_int (Integers.Int.repr 0) tint)
              (tptr (Ty.Tstruct _ct_data_s noattr)))
            (Ty.Tstruct _ct_data_s noattr)) _dl (Ty.Tunion __1355 noattr))
        _len tushort))
    (Stmt.Ssequence
      (Stmt.Sset _count (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Ssequence
        (Stmt.Sset _max_count (Expr.Econst_int (Integers.Int.repr 7) tint))
        (Stmt.Ssequence
          (Stmt.Sset _min_count (Expr.Econst_int (Integers.Int.repr 4) tint))
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _nextlen tint)
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                tint)
              (Stmt.Ssequence
                (Stmt.Sset _max_count
                  (Expr.Econst_int (Integers.Int.repr 138) tint))
                (Stmt.Sset _min_count
                  (Expr.Econst_int (Integers.Int.repr 3) tint)))
              Stmt.Sskip)
            (Stmt.Ssequence
              (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
              (Stmt.Sloop
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                      (Expr.Etempvar _n tint)
                                      (Expr.Etempvar _max_code tint) tint)
                    Stmt.Sskip
                    Stmt.Sbreak)
                  (Stmt.Ssequence
                    (Stmt.Sset _curlen (Expr.Etempvar _nextlen tint))
                    (Stmt.Ssequence
                      (Stmt.Sset _nextlen
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _tree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _n tint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _dl
                            (Ty.Tunion __1355 noattr)) _len tushort))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'18
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _count tint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tint) tint))
                              (Stmt.Sset _count (Expr.Etempvar _t'18 tint)))
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                (Expr.Etempvar _t'18 tint)
                                                (Expr.Etempvar _max_count tint)
                                                tint)
                              (Stmt.Sset _t'19
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Oeq
                                    (Expr.Etempvar _curlen tint)
                                    (Expr.Etempvar _nextlen tint) tint)
                                  tbool))
                              (Stmt.Sset _t'19
                                (Expr.Econst_int (Integers.Int.repr 0) tint))))
                          (Stmt.Sifthenelse (Expr.Etempvar _t'19 tint)
                            Stmt.Scontinue
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                (Expr.Etempvar _count tint)
                                                (Expr.Etempvar _min_count tint)
                                                tint)
                              (Stmt.Sloop
                                (Stmt.Ssequence
                                  (Stmt.Sset _len
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bl_tree
                                              (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                            (Expr.Etempvar _curlen tint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _dl
                                        (Ty.Tunion __1355 noattr)) _len
                                      tushort))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'112
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_valid tint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                        (Expr.Etempvar _t'112 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Ecast
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            tint)
                                                          (Expr.Etempvar _len tint)
                                                          tint) tint)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'125
                                            (Expr.Efield
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bl_tree
                                                      (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                    (Expr.Etempvar _curlen tint)
                                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                  (Ty.Tstruct _ct_data_s noattr))
                                                _fc
                                                (Ty.Tunion __1354 noattr))
                                              _code tushort))
                                          (Stmt.Sset _val
                                            (Expr.Ecast
                                              (Expr.Etempvar _t'125 tushort)
                                              tint)))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'123
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bi_buf tushort))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'124
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort)
                                                (Expr.Ebinop Binop.Oor
                                                  (Expr.Etempvar _t'123 tushort)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _val tint)
                                                      tushort)
                                                    (Expr.Etempvar _t'124 tint)
                                                    tint) tint))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'2
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong)
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'2 tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'121
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending_buf
                                                      (tptr tuchar)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'122
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'121 (tptr tuchar))
                                                          (Expr.Etempvar _t'2 tulong)
                                                          (tptr tuchar))
                                                        tuchar)
                                                      (Expr.Ecast
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'122 tushort)
                                                            (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                            tint) tuchar)
                                                        tuchar)))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'3
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong)
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'3 tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'119
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending_buf
                                                      (tptr tuchar)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'120
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'119 (tptr tuchar))
                                                          (Expr.Etempvar _t'3 tulong)
                                                          (tptr tuchar))
                                                        tuchar)
                                                      (Expr.Ecast
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Oshr
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _t'120 tushort)
                                                              tushort)
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            tint) tuchar)
                                                        tuchar))))))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'118
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort)
                                                  (Expr.Ebinop Binop.Oshr
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _val tint)
                                                      tushort)
                                                    (Expr.Ebinop Binop.Osub
                                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                      (Expr.Etempvar _t'118 tint)
                                                      tint) tint)))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'117
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'117 tint)
                                                    (Expr.Ebinop Binop.Osub
                                                      (Expr.Etempvar _len tint)
                                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                      tint) tint)))))))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'114
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'115
                                              (Expr.Efield
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bl_tree
                                                        (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                      (Expr.Etempvar _curlen tint)
                                                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                    (Ty.Tstruct _ct_data_s noattr))
                                                  _fc
                                                  (Ty.Tunion __1354 noattr))
                                                _code tushort))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'116
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort)
                                                (Expr.Ebinop Binop.Oor
                                                  (Expr.Etempvar _t'114 tushort)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'115 tushort)
                                                      tushort)
                                                    (Expr.Etempvar _t'116 tint)
                                                    tint) tint)))))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'113
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint)
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _t'113 tint)
                                              (Expr.Etempvar _len tint) tint)))))))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'1
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _count tint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint) tint))
                                    (Stmt.Sset _count
                                      (Expr.Etempvar _t'1 tint)))
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                      (Expr.Etempvar _t'1 tint)
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      tint)
                                    Stmt.Sskip
                                    Stmt.Sbreak)))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                  (Expr.Etempvar _curlen tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                      (Expr.Etempvar _curlen tint)
                                                      (Expr.Etempvar _prevlen tint)
                                                      tint)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _len__1
                                          (Expr.Efield
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bl_tree
                                                    (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                  (Expr.Etempvar _curlen tint)
                                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                (Ty.Tstruct _ct_data_s noattr))
                                              _dl (Ty.Tunion __1355 noattr))
                                            _len tushort))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'98
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                              (Expr.Etempvar _t'98 tint)
                                                              (Expr.Ebinop Binop.Osub
                                                                (Expr.Ecast
                                                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                  tint)
                                                                (Expr.Etempvar _len__1 tint)
                                                                tint) tint)
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'111
                                                  (Expr.Efield
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bl_tree
                                                            (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                          (Expr.Etempvar _curlen tint)
                                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Ty.Tstruct _ct_data_s noattr))
                                                      _fc
                                                      (Ty.Tunion __1354 noattr))
                                                    _code tushort))
                                                (Stmt.Sset _val__1
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _t'111 tushort)
                                                    tint)))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'109
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'110
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oor
                                                        (Expr.Etempvar _t'109 tushort)
                                                        (Expr.Ebinop Binop.Oshl
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _val__1 tint)
                                                            tushort)
                                                          (Expr.Etempvar _t'110 tint)
                                                          tint) tint))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'4
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong)
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _t'4 tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tulong)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'107
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending_buf
                                                            (tptr tuchar)))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'108
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                                (Ty.Tstruct _internal_state noattr))
                                                              _bi_buf
                                                              tushort))
                                                          (Stmt.Sassign
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _t'107 (tptr tuchar))
                                                                (Expr.Etempvar _t'4 tulong)
                                                                (tptr tuchar))
                                                              tuchar)
                                                            (Expr.Ecast
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.Oand
                                                                  (Expr.Etempvar _t'108 tushort)
                                                                  (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                  tint)
                                                                tuchar)
                                                              tuchar)))))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'5
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong)
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _t'5 tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tulong)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'105
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending_buf
                                                            (tptr tuchar)))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'106
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                                (Ty.Tstruct _internal_state noattr))
                                                              _bi_buf
                                                              tushort))
                                                          (Stmt.Sassign
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _t'105 (tptr tuchar))
                                                                (Expr.Etempvar _t'5 tulong)
                                                                (tptr tuchar))
                                                              tuchar)
                                                            (Expr.Ecast
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Ecast
                                                                    (Expr.Etempvar _t'106 tushort)
                                                                    tushort)
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  tint)
                                                                tuchar)
                                                              tuchar))))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'104
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_buf tushort)
                                                        (Expr.Ebinop Binop.Oshr
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _val__1 tint)
                                                            tushort)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            (Expr.Etempvar _t'104 tint)
                                                            tint) tint)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'103
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'103 tint)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _len__1 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            tint) tint)))))))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'100
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'101
                                                    (Expr.Efield
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                                (Ty.Tstruct _internal_state noattr))
                                                              _bl_tree
                                                              (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                            (Expr.Etempvar _curlen tint)
                                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                          (Ty.Tstruct _ct_data_s noattr))
                                                        _fc
                                                        (Ty.Tunion __1354 noattr))
                                                      _code tushort))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'102
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oor
                                                        (Expr.Etempvar _t'100 tushort)
                                                        (Expr.Ebinop Binop.Oshl
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _t'101 tushort)
                                                            tushort)
                                                          (Expr.Etempvar _t'102 tint)
                                                          tint) tint)))))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'99
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'99 tint)
                                                    (Expr.Etempvar _len__1 tint)
                                                    tint)))))))
                                      (Stmt.Sset _count
                                        (Expr.Ebinop Binop.Osub
                                          (Expr.Etempvar _count tint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint)))
                                    Stmt.Sskip)
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__2
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _dl (Ty.Tunion __1355 noattr))
                                          _len tushort))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'84
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'84 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__2 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'97
                                                (Expr.Efield
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bl_tree
                                                          (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Ty.Tstruct _ct_data_s noattr))
                                                    _fc
                                                    (Ty.Tunion __1354 noattr))
                                                  _code tushort))
                                              (Stmt.Sset _val__2
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'97 tushort)
                                                  tint)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'95
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'96
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'95 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__2 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'96 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'6
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'6 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'93
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'94
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'93 (tptr tuchar))
                                                              (Expr.Etempvar _t'6 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'94 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'7
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'7 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'91
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'92
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'91 (tptr tuchar))
                                                              (Expr.Etempvar _t'7 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'92 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'90
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__2 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'90 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'89
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'89 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__2 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'86
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'87
                                                  (Expr.Efield
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bl_tree
                                                            (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Ty.Tstruct _ct_data_s noattr))
                                                      _fc
                                                      (Ty.Tunion __1354 noattr))
                                                    _code tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'88
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'86 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'87 tushort)
                                                          tushort)
                                                        (Expr.Etempvar _t'88 tint)
                                                        tint) tint)))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'85
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'85 tint)
                                                  (Expr.Etempvar _len__2 tint)
                                                  tint)))))))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__3
                                        (Expr.Econst_int (Integers.Int.repr 2) tint))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'72
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'72 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__3 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _val__3
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Ecast
                                                  (Expr.Etempvar _count tint)
                                                  tint)
                                                (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                tint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'82
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'83
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'82 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__3 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'83 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'8
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'8 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'80
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'81
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'80 (tptr tuchar))
                                                              (Expr.Etempvar _t'8 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'81 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'9
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'9 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'78
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'79
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'78 (tptr tuchar))
                                                              (Expr.Etempvar _t'9 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'79 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'77
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__3 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'77 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'76
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'76 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__3 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'74
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'75
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort)
                                                  (Expr.Ebinop Binop.Oor
                                                    (Expr.Etempvar _t'74 tushort)
                                                    (Expr.Ebinop Binop.Oshl
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _count tint)
                                                          (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                          tint) tushort)
                                                      (Expr.Etempvar _t'75 tint)
                                                      tint) tint))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'73
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'73 tint)
                                                  (Expr.Etempvar _len__3 tint)
                                                  tint)))))))))
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                                    (Expr.Etempvar _count tint)
                                                    (Expr.Econst_int (Integers.Int.repr 10) tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__4
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _dl (Ty.Tunion __1355 noattr))
                                          _len tushort))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'58
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'58 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__4 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'71
                                                (Expr.Efield
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bl_tree
                                                          (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                        (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Ty.Tstruct _ct_data_s noattr))
                                                    _fc
                                                    (Ty.Tunion __1354 noattr))
                                                  _code tushort))
                                              (Stmt.Sset _val__4
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'71 tushort)
                                                  tint)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'69
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'70
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'69 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__4 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'70 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'10
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'10 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'67
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'68
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'67 (tptr tuchar))
                                                              (Expr.Etempvar _t'10 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'68 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'11
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'11 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'65
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'66
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'65 (tptr tuchar))
                                                              (Expr.Etempvar _t'11 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'66 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'64
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__4 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'64 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'63
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'63 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__4 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'60
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'61
                                                  (Expr.Efield
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bl_tree
                                                            (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                          (Expr.Econst_int (Integers.Int.repr 17) tint)
                                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Ty.Tstruct _ct_data_s noattr))
                                                      _fc
                                                      (Ty.Tunion __1354 noattr))
                                                    _code tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'62
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'60 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'61 tushort)
                                                          tushort)
                                                        (Expr.Etempvar _t'62 tint)
                                                        tint) tint)))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'59
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'59 tint)
                                                  (Expr.Etempvar _len__4 tint)
                                                  tint)))))))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__5
                                        (Expr.Econst_int (Integers.Int.repr 3) tint))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'46
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'46 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__5 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _val__5
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Ecast
                                                  (Expr.Etempvar _count tint)
                                                  tint)
                                                (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                tint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'56
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'57
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'56 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__5 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'57 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'12
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'12 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'54
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'55
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'54 (tptr tuchar))
                                                              (Expr.Etempvar _t'12 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'55 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'13
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'13 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'52
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'53
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'52 (tptr tuchar))
                                                              (Expr.Etempvar _t'13 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'53 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'51
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__5 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'51 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'50
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'50 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__5 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'48
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'49
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort)
                                                  (Expr.Ebinop Binop.Oor
                                                    (Expr.Etempvar _t'48 tushort)
                                                    (Expr.Ebinop Binop.Oshl
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _count tint)
                                                          (Expr.Econst_int (Integers.Int.repr 3) tint)
                                                          tint) tushort)
                                                      (Expr.Etempvar _t'49 tint)
                                                      tint) tint))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'47
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'47 tint)
                                                  (Expr.Etempvar _len__5 tint)
                                                  tint))))))))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__6
                                        (Expr.Efield
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bl_tree
                                                  (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                (Expr.Econst_int (Integers.Int.repr 18) tint)
                                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                                              (Ty.Tstruct _ct_data_s noattr))
                                            _dl (Ty.Tunion __1355 noattr))
                                          _len tushort))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'32
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'32 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__6 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'45
                                                (Expr.Efield
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bl_tree
                                                          (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                        (Expr.Econst_int (Integers.Int.repr 18) tint)
                                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Ty.Tstruct _ct_data_s noattr))
                                                    _fc
                                                    (Ty.Tunion __1354 noattr))
                                                  _code tushort))
                                              (Stmt.Sset _val__6
                                                (Expr.Ecast
                                                  (Expr.Etempvar _t'45 tushort)
                                                  tint)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'43
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'44
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'43 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__6 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'44 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'14
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'14 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'41
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'42
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'41 (tptr tuchar))
                                                              (Expr.Etempvar _t'14 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'42 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'15
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'15 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'39
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'40
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'39 (tptr tuchar))
                                                              (Expr.Etempvar _t'15 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'40 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'38
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__6 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'38 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'37
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'37 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__6 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'34
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'35
                                                  (Expr.Efield
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bl_tree
                                                            (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                                          (Expr.Econst_int (Integers.Int.repr 18) tint)
                                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                        (Ty.Tstruct _ct_data_s noattr))
                                                      _fc
                                                      (Ty.Tunion __1354 noattr))
                                                    _code tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'36
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'34 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _t'35 tushort)
                                                          tushort)
                                                        (Expr.Etempvar _t'36 tint)
                                                        tint) tint)))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'33
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'33 tint)
                                                  (Expr.Etempvar _len__6 tint)
                                                  tint)))))))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _len__7
                                        (Expr.Econst_int (Integers.Int.repr 7) tint))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'20
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _t'20 tint)
                                                            (Expr.Ebinop Binop.Osub
                                                              (Expr.Ecast
                                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                tint)
                                                              (Expr.Etempvar _len__7 tint)
                                                              tint) tint)
                                          (Stmt.Ssequence
                                            (Stmt.Sset _val__7
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Ecast
                                                  (Expr.Etempvar _count tint)
                                                  tint)
                                                (Expr.Econst_int (Integers.Int.repr 11) tint)
                                                tint))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'30
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'31
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'30 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__7 tint)
                                                          tushort)
                                                        (Expr.Etempvar _t'31 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'16
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'16 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'28
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'29
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'28 (tptr tuchar))
                                                              (Expr.Etempvar _t'16 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oand
                                                                (Expr.Etempvar _t'29 tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                tint) tuchar)
                                                            tuchar)))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'17
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending tulong)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'17 tulong)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'26
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _pending_buf
                                                          (tptr tuchar)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'27
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _bi_buf tushort))
                                                        (Stmt.Sassign
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _t'26 (tptr tuchar))
                                                              (Expr.Etempvar _t'17 tulong)
                                                              (tptr tuchar))
                                                            tuchar)
                                                          (Expr.Ecast
                                                            (Expr.Ecast
                                                              (Expr.Ebinop Binop.Oshr
                                                                (Expr.Ecast
                                                                  (Expr.Etempvar _t'27 tushort)
                                                                  tushort)
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                tint) tuchar)
                                                            tuchar))))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'25
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oshr
                                                        (Expr.Ecast
                                                          (Expr.Etempvar _val__7 tint)
                                                          tushort)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (Expr.Etempvar _t'25 tint)
                                                          tint) tint)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'24
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint)
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'24 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _len__7 tint)
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint) tint)))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'22
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'23
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort)
                                                  (Expr.Ebinop Binop.Oor
                                                    (Expr.Etempvar _t'22 tushort)
                                                    (Expr.Ebinop Binop.Oshl
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Etempvar _count tint)
                                                          (Expr.Econst_int (Integers.Int.repr 11) tint)
                                                          tint) tushort)
                                                      (Expr.Etempvar _t'23 tint)
                                                      tint) tint))))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'21
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'21 tint)
                                                  (Expr.Etempvar _len__7 tint)
                                                  tint)))))))))))))
                        (Stmt.Ssequence
                          (Stmt.Sset _count
                            (Expr.Econst_int (Integers.Int.repr 0) tint))
                          (Stmt.Ssequence
                            (Stmt.Sset _prevlen (Expr.Etempvar _curlen tint))
                            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                (Expr.Etempvar _nextlen tint)
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                tint)
                              (Stmt.Ssequence
                                (Stmt.Sset _max_count
                                  (Expr.Econst_int (Integers.Int.repr 138) tint))
                                (Stmt.Sset _min_count
                                  (Expr.Econst_int (Integers.Int.repr 3) tint)))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _curlen tint)
                                                  (Expr.Etempvar _nextlen tint)
                                                  tint)
                                (Stmt.Ssequence
                                  (Stmt.Sset _max_count
                                    (Expr.Econst_int (Integers.Int.repr 6) tint))
                                  (Stmt.Sset _min_count
                                    (Expr.Econst_int (Integers.Int.repr 3) tint)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _max_count
                                    (Expr.Econst_int (Integers.Int.repr 7) tint))
                                  (Stmt.Sset _min_count
                                    (Expr.Econst_int (Integers.Int.repr 4) tint)))))))))))
                (Stmt.Sset _n
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
                    (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))))))))
}

def f_build_bl_tree : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_max_blindex, tint), (_t'5, tint), (_t'4, tint),
               (_t'3, tushort), (_t'2, tuchar), (_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _t'5
      (Expr.Efield
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _l_desc
          (Ty.Tstruct _tree_desc_s noattr)) _max_code tint))
    (Stmt.Scall none
      (Expr.Evar _scan_tree (Ty.Tfunction
                              [(tptr (Ty.Tstruct _internal_state noattr)),
                               (tptr (Ty.Tstruct _ct_data_s noattr)), tint]
                              tvoid cc_default))
      [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
       (Expr.Ecast
         (Expr.Efield
           (Expr.Ederef
             (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
             (Ty.Tstruct _internal_state noattr)) _dyn_ltree
           (tarray (Ty.Tstruct _ct_data_s noattr) 573))
         (tptr (Ty.Tstruct _ct_data_s noattr))), (Expr.Etempvar _t'5 tint)]))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'4
        (Expr.Efield
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _d_desc
            (Ty.Tstruct _tree_desc_s noattr)) _max_code tint))
      (Stmt.Scall none
        (Expr.Evar _scan_tree (Ty.Tfunction
                                [(tptr (Ty.Tstruct _internal_state noattr)),
                                 (tptr (Ty.Tstruct _ct_data_s noattr)), tint]
                                tvoid cc_default))
        [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
         (Expr.Ecast
           (Expr.Efield
             (Expr.Ederef
               (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
               (Ty.Tstruct _internal_state noattr)) _dyn_dtree
             (tarray (Ty.Tstruct _ct_data_s noattr) 61))
           (tptr (Ty.Tstruct _ct_data_s noattr))), (Expr.Etempvar _t'4 tint)]))
    (Stmt.Ssequence
      (Stmt.Scall none
        (Expr.Evar _build_tree (Ty.Tfunction
                                 [(tptr (Ty.Tstruct _internal_state noattr)),
                                  (tptr (Ty.Tstruct _tree_desc_s noattr))]
                                 tvoid cc_default))
        [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
         (Expr.Ecast
           (Expr.Eaddrof
             (Expr.Efield
               (Expr.Ederef
                 (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                 (Ty.Tstruct _internal_state noattr)) _bl_desc
               (Ty.Tstruct _tree_desc_s noattr))
             (tptr (Ty.Tstruct _tree_desc_s noattr)))
           (tptr (Ty.Tstruct _tree_desc_s noattr)))])
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _max_blindex
            (Expr.Ebinop Binop.Osub
              (Expr.Econst_int (Integers.Int.repr 19) tint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
          (Stmt.Sloop
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                  (Expr.Etempvar _max_blindex tint)
                                  (Expr.Econst_int (Integers.Int.repr 3) tint)
                                  tint)
                Stmt.Sskip
                Stmt.Sbreak)
              (Stmt.Ssequence
                (Stmt.Sset _t'2
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Evar _bl_order (tarray tuchar 19))
                      (Expr.Etempvar _max_blindex tint) (tptr tuchar))
                    tuchar))
                (Stmt.Ssequence
                  (Stmt.Sset _t'3
                    (Expr.Efield
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bl_tree
                              (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                            (Expr.Etempvar _t'2 tuchar)
                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                          (Ty.Tstruct _ct_data_s noattr)) _dl
                        (Ty.Tunion __1355 noattr)) _len tushort))
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                      (Expr.Etempvar _t'3 tushort)
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      tint)
                    Stmt.Sbreak
                    Stmt.Sskip))))
            (Stmt.Sset _max_blindex
              (Expr.Ebinop Binop.Osub (Expr.Etempvar _max_blindex tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'1
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _opt_len tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _opt_len tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                (Expr.Ebinop Binop.Oadd
                  (Expr.Ebinop Binop.Oadd
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Ebinop Binop.Omul
                        (Expr.Econst_int (Integers.Int.repr 3) tint)
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Ecast (Expr.Etempvar _max_blindex tint)
                            tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong) tulong)
                      (Expr.Econst_int (Integers.Int.repr 5) tint) tulong)
                    (Expr.Econst_int (Integers.Int.repr 5) tint) tulong)
                  (Expr.Econst_int (Integers.Int.repr 4) tint) tulong)
                tulong)))
          (Stmt.Sreturn (some (Expr.Etempvar _max_blindex tint))))))))
}

def f_send_all_trees : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_lcodes, tint), (_dcodes, tint), (_blcodes, tint)],
  fn_vars := [],
  fn_temps := [(_rank, tint), (_len, tint), (_val, tint), (_len__1, tint),
               (_val__1, tint), (_len__2, tint), (_val__2, tint),
               (_len__3, tint), (_val__3, tint), (_t'8, tulong),
               (_t'7, tulong), (_t'6, tulong), (_t'5, tulong),
               (_t'4, tulong), (_t'3, tulong), (_t'2, tulong),
               (_t'1, tulong), (_t'60, tint), (_t'59, tushort),
               (_t'58, tushort), (_t'57, (tptr tuchar)), (_t'56, tushort),
               (_t'55, (tptr tuchar)), (_t'54, tint), (_t'53, tint),
               (_t'52, tint), (_t'51, tushort), (_t'50, tint), (_t'49, tint),
               (_t'48, tint), (_t'47, tushort), (_t'46, tushort),
               (_t'45, (tptr tuchar)), (_t'44, tushort),
               (_t'43, (tptr tuchar)), (_t'42, tint), (_t'41, tint),
               (_t'40, tint), (_t'39, tushort), (_t'38, tint), (_t'37, tint),
               (_t'36, tint), (_t'35, tushort), (_t'34, tushort),
               (_t'33, (tptr tuchar)), (_t'32, tushort),
               (_t'31, (tptr tuchar)), (_t'30, tint), (_t'29, tint),
               (_t'28, tint), (_t'27, tushort), (_t'26, tint), (_t'25, tint),
               (_t'24, tushort), (_t'23, tuchar), (_t'22, tint),
               (_t'21, tushort), (_t'20, tushort), (_t'19, (tptr tuchar)),
               (_t'18, tushort), (_t'17, (tptr tuchar)), (_t'16, tint),
               (_t'15, tint), (_t'14, tint), (_t'13, tushort),
               (_t'12, tuchar), (_t'11, tushort), (_t'10, tint),
               (_t'9, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _len (Expr.Econst_int (Integers.Int.repr 5) tint))
    (Stmt.Ssequence
      (Stmt.Sset _t'49
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'49 tint)
                          (Expr.Ebinop Binop.Osub
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tint) (Expr.Etempvar _len tint) tint) tint)
        (Stmt.Ssequence
          (Stmt.Sset _val
            (Expr.Ebinop Binop.Osub
              (Expr.Ecast (Expr.Etempvar _lcodes tint) tint)
              (Expr.Econst_int (Integers.Int.repr 257) tint) tint))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'59
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'60
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                  (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'59 tushort)
                    (Expr.Ebinop Binop.Oshl
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Etempvar _t'60 tint) tint) tint))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'1
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'57
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'58
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'57 (tptr tuchar))
                            (Expr.Etempvar _t'1 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oand
                              (Expr.Etempvar _t'58 tushort)
                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                              tint) tuchar) tuchar)))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'2
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'55
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'56
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'55 (tptr tuchar))
                            (Expr.Etempvar _t'2 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oshr
                              (Expr.Ecast (Expr.Etempvar _t'56 tushort)
                                tushort)
                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                              tint) tuchar) tuchar))))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'54
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Ebinop Binop.Osub
                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                        (Expr.Etempvar _t'54 tint) tint) tint)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'53
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'53 tint)
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tint)
                        (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                      tint)))))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'51
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
            (Stmt.Ssequence
              (Stmt.Sset _t'52
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'51 tushort)
                  (Expr.Ebinop Binop.Oshl
                    (Expr.Ecast
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _lcodes tint)
                        (Expr.Econst_int (Integers.Int.repr 257) tint) tint)
                      tushort) (Expr.Etempvar _t'52 tint) tint) tint))))
          (Stmt.Ssequence
            (Stmt.Sset _t'50
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'50 tint)
                (Expr.Etempvar _len tint) tint)))))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _len__1 (Expr.Econst_int (Integers.Int.repr 5) tint))
      (Stmt.Ssequence
        (Stmt.Sset _t'37
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'37 tint)
                            (Expr.Ebinop Binop.Osub
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                tint) (Expr.Etempvar _len__1 tint) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Sset _val__1
              (Expr.Ebinop Binop.Osub
                (Expr.Ecast (Expr.Etempvar _dcodes tint) tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'47
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'48
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'47 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _val__1 tint) tushort)
                        (Expr.Etempvar _t'48 tint) tint) tint))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'3
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'45
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'46
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'45 (tptr tuchar))
                              (Expr.Etempvar _t'3 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oand
                                (Expr.Etempvar _t'46 tushort)
                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                tint) tuchar) tuchar)))))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'4
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'4 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'43
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'44
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'43 (tptr tuchar))
                              (Expr.Etempvar _t'4 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oshr
                                (Expr.Ecast (Expr.Etempvar _t'44 tushort)
                                  tushort)
                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                tint) tuchar) tuchar))))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'42
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_buf
                        tushort)
                      (Expr.Ebinop Binop.Oshr
                        (Expr.Ecast (Expr.Etempvar _val__1 tint) tushort)
                        (Expr.Ebinop Binop.Osub
                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                          (Expr.Etempvar _t'42 tint) tint) tint)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'41
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'41 tint)
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _len__1 tint)
                          (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                        tint)))))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'39
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'40
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                  (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'39 tushort)
                    (Expr.Ebinop Binop.Oshl
                      (Expr.Ecast
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _dcodes tint)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                        tushort) (Expr.Etempvar _t'40 tint) tint) tint))))
            (Stmt.Ssequence
              (Stmt.Sset _t'38
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'38 tint)
                  (Expr.Etempvar _len__1 tint) tint)))))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _len__2 (Expr.Econst_int (Integers.Int.repr 4) tint))
        (Stmt.Ssequence
          (Stmt.Sset _t'25
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'25 tint)
                              (Expr.Ebinop Binop.Osub
                                (Expr.Ecast
                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                  tint) (Expr.Etempvar _len__2 tint) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Sset _val__2
                (Expr.Ebinop Binop.Osub
                  (Expr.Ecast (Expr.Etempvar _blcodes tint) tint)
                  (Expr.Econst_int (Integers.Int.repr 4) tint) tint))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'35
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'36
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_buf
                        tushort)
                      (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'35 tushort)
                        (Expr.Ebinop Binop.Oshl
                          (Expr.Ecast (Expr.Etempvar _val__2 tint) tushort)
                          (Expr.Etempvar _t'36 tint) tint) tint))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'5
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _pending
                            tulong))
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _pending
                            tulong)
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'5 tulong)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tulong)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'33
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr))
                            _pending_buf (tptr tuchar)))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'34
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort))
                          (Stmt.Sassign
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _t'33 (tptr tuchar))
                                (Expr.Etempvar _t'5 tulong) (tptr tuchar))
                              tuchar)
                            (Expr.Ecast
                              (Expr.Ecast
                                (Expr.Ebinop Binop.Oand
                                  (Expr.Etempvar _t'34 tushort)
                                  (Expr.Econst_int (Integers.Int.repr 255) tint)
                                  tint) tuchar) tuchar)))))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'6
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _pending
                            tulong))
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _pending
                            tulong)
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'6 tulong)
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            tulong)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'31
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr))
                            _pending_buf (tptr tuchar)))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'32
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort))
                          (Stmt.Sassign
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _t'31 (tptr tuchar))
                                (Expr.Etempvar _t'6 tulong) (tptr tuchar))
                              tuchar)
                            (Expr.Ecast
                              (Expr.Ecast
                                (Expr.Ebinop Binop.Oshr
                                  (Expr.Ecast (Expr.Etempvar _t'32 tushort)
                                    tushort)
                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                  tint) tuchar) tuchar))))))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'30
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_valid
                          tint))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort)
                        (Expr.Ebinop Binop.Oshr
                          (Expr.Ecast (Expr.Etempvar _val__2 tint) tushort)
                          (Expr.Ebinop Binop.Osub
                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                            (Expr.Etempvar _t'30 tint) tint) tint)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'29
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_valid
                          tint))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_valid
                          tint)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'29 tint)
                          (Expr.Ebinop Binop.Osub
                            (Expr.Etempvar _len__2 tint)
                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                            tint) tint)))))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'27
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'28
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'27 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast
                          (Expr.Ebinop Binop.Osub
                            (Expr.Etempvar _blcodes tint)
                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                            tint) tushort) (Expr.Etempvar _t'28 tint) tint)
                      tint))))
              (Stmt.Ssequence
                (Stmt.Sset _t'26
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'26 tint)
                    (Expr.Etempvar _len__2 tint) tint)))))))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _rank (Expr.Econst_int (Integers.Int.repr 0) tint))
          (Stmt.Sloop
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                  (Expr.Etempvar _rank tint)
                                  (Expr.Etempvar _blcodes tint) tint)
                Stmt.Sskip
                Stmt.Sbreak)
              (Stmt.Ssequence
                (Stmt.Sset _len__3
                  (Expr.Econst_int (Integers.Int.repr 3) tint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'9
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                      (Expr.Etempvar _t'9 tint)
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Ecast
                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                          tint) (Expr.Etempvar _len__3 tint)
                                        tint) tint)
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'23
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Evar _bl_order (tarray tuchar 19))
                              (Expr.Etempvar _rank tint) (tptr tuchar))
                            tuchar))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'24
                            (Expr.Efield
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bl_tree
                                      (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                    (Expr.Etempvar _t'23 tuchar)
                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                  (Ty.Tstruct _ct_data_s noattr)) _dl
                                (Ty.Tunion __1355 noattr)) _len tushort))
                          (Stmt.Sset _val__3
                            (Expr.Ecast (Expr.Etempvar _t'24 tushort) tint))))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'21
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'22
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_valid tint))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_buf tushort)
                              (Expr.Ebinop Binop.Oor
                                (Expr.Etempvar _t'21 tushort)
                                (Expr.Ebinop Binop.Oshl
                                  (Expr.Ecast (Expr.Etempvar _val__3 tint)
                                    tushort) (Expr.Etempvar _t'22 tint) tint)
                                tint))))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'7
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'7 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'19
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'20
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'19 (tptr tuchar))
                                        (Expr.Etempvar _t'7 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oand
                                          (Expr.Etempvar _t'20 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 255) tint)
                                          tint) tuchar) tuchar)))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'8
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'8 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'17
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'18
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'17 (tptr tuchar))
                                        (Expr.Etempvar _t'8 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oshr
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'18 tushort)
                                            tushort)
                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                          tint) tuchar) tuchar))))))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'16
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_buf tushort)
                                (Expr.Ebinop Binop.Oshr
                                  (Expr.Ecast (Expr.Etempvar _val__3 tint)
                                    tushort)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    (Expr.Etempvar _t'16 tint) tint) tint)))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'15
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint)
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _t'15 tint)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _len__3 tint)
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    tint) tint)))))))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'11
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'12
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Evar _bl_order (tarray tuchar 19))
                                (Expr.Etempvar _rank tint) (tptr tuchar))
                              tuchar))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'13
                              (Expr.Efield
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bl_tree
                                        (tarray (Ty.Tstruct _ct_data_s noattr) 39))
                                      (Expr.Etempvar _t'12 tuchar)
                                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                                    (Ty.Tstruct _ct_data_s noattr)) _dl
                                  (Ty.Tunion __1355 noattr)) _len tushort))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'14
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_buf tushort)
                                (Expr.Ebinop Binop.Oor
                                  (Expr.Etempvar _t'11 tushort)
                                  (Expr.Ebinop Binop.Oshl
                                    (Expr.Ecast (Expr.Etempvar _t'13 tushort)
                                      tushort) (Expr.Etempvar _t'14 tint)
                                    tint) tint))))))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'10
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint))
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint)
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'10 tint)
                            (Expr.Etempvar _len__3 tint) tint))))))))
            (Stmt.Sset _rank
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _rank tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
        (Stmt.Ssequence
          (Stmt.Scall none
            (Expr.Evar _send_tree (Ty.Tfunction
                                    [(tptr (Ty.Tstruct _internal_state noattr)),
                                     (tptr (Ty.Tstruct _ct_data_s noattr)),
                                     tint] tvoid cc_default))
            [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
             (Expr.Ecast
               (Expr.Efield
                 (Expr.Ederef
                   (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                   (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                 (tarray (Ty.Tstruct _ct_data_s noattr) 573))
               (tptr (Ty.Tstruct _ct_data_s noattr))),
             (Expr.Ebinop Binop.Osub (Expr.Etempvar _lcodes tint)
               (Expr.Econst_int (Integers.Int.repr 1) tint) tint)])
          (Stmt.Scall none
            (Expr.Evar _send_tree (Ty.Tfunction
                                    [(tptr (Ty.Tstruct _internal_state noattr)),
                                     (tptr (Ty.Tstruct _ct_data_s noattr)),
                                     tint] tvoid cc_default))
            [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
             (Expr.Ecast
               (Expr.Efield
                 (Expr.Ederef
                   (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                   (Ty.Tstruct _internal_state noattr)) _dyn_dtree
                 (tarray (Ty.Tstruct _ct_data_s noattr) 61))
               (tptr (Ty.Tstruct _ct_data_s noattr))),
             (Expr.Ebinop Binop.Osub (Expr.Etempvar _dcodes tint)
               (Expr.Econst_int (Integers.Int.repr 1) tint) tint)]))))))
}

def f__tr_stored_block : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_buf, (tptr tschar)), (_stored_len, tulong), (_last, tint)],
  fn_vars := [],
  fn_temps := [(_len, tint), (_val, tint), (_t'6, tulong), (_t'5, tulong),
               (_t'4, tulong), (_t'3, tulong), (_t'2, tulong),
               (_t'1, tulong), (_t'25, tint), (_t'24, tushort),
               (_t'23, tushort), (_t'22, (tptr tuchar)), (_t'21, tushort),
               (_t'20, (tptr tuchar)), (_t'19, tint), (_t'18, tint),
               (_t'17, tint), (_t'16, tushort), (_t'15, tint), (_t'14, tint),
               (_t'13, (tptr tuchar)), (_t'12, (tptr tuchar)),
               (_t'11, (tptr tuchar)), (_t'10, (tptr tuchar)),
               (_t'9, tulong), (_t'8, (tptr tuchar)), (_t'7, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _len (Expr.Econst_int (Integers.Int.repr 3) tint))
    (Stmt.Ssequence
      (Stmt.Sset _t'14
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'14 tint)
                          (Expr.Ebinop Binop.Osub
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tint) (Expr.Etempvar _len tint) tint) tint)
        (Stmt.Ssequence
          (Stmt.Sset _val
            (Expr.Ebinop Binop.Oadd
              (Expr.Ecast
                (Expr.Ebinop Binop.Oshl
                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tint) tint)
              (Expr.Etempvar _last tint) tint))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'24
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'25
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                  (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'24 tushort)
                    (Expr.Ebinop Binop.Oshl
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Etempvar _t'25 tint) tint) tint))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'1
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'22
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'23
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'22 (tptr tuchar))
                            (Expr.Etempvar _t'1 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oand
                              (Expr.Etempvar _t'23 tushort)
                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                              tint) tuchar) tuchar)))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'2
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'20
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'21
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'20 (tptr tuchar))
                            (Expr.Etempvar _t'2 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oshr
                              (Expr.Ecast (Expr.Etempvar _t'21 tushort)
                                tushort)
                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                              tint) tuchar) tuchar))))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'19
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Ebinop Binop.Osub
                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                        (Expr.Etempvar _t'19 tint) tint) tint)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'18
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'18 tint)
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tint)
                        (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                      tint)))))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'16
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
            (Stmt.Ssequence
              (Stmt.Sset _t'17
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'16 tushort)
                  (Expr.Ebinop Binop.Oshl
                    (Expr.Ecast
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Ebinop Binop.Oshl
                          (Expr.Econst_int (Integers.Int.repr 0) tint)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                        (Expr.Etempvar _last tint) tint) tushort)
                    (Expr.Etempvar _t'17 tint) tint) tint))))
          (Stmt.Ssequence
            (Stmt.Sset _t'15
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'15 tint)
                (Expr.Etempvar _len tint) tint)))))))
  (Stmt.Ssequence
    (Stmt.Scall none
      (Expr.Evar _bi_windup (Ty.Tfunction
                              [(tptr (Ty.Tstruct _internal_state noattr))]
                              tvoid cc_default))
      [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'3
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'13
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Sassign
              (Expr.Ederef
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'13 (tptr tuchar))
                  (Expr.Etempvar _t'3 tulong) (tptr tuchar)) tuchar)
              (Expr.Ecast
                (Expr.Ecast
                  (Expr.Ebinop Binop.Oand
                    (Expr.Ecast (Expr.Etempvar _stored_len tulong) tushort)
                    (Expr.Econst_int (Integers.Int.repr 255) tint) tint)
                  tuchar) tuchar))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'4
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'4 tulong)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
          (Stmt.Ssequence
            (Stmt.Sset _t'12
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending_buf
                (tptr tuchar)))
            (Stmt.Sassign
              (Expr.Ederef
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'12 (tptr tuchar))
                  (Expr.Etempvar _t'4 tulong) (tptr tuchar)) tuchar)
              (Expr.Ecast
                (Expr.Ecast
                  (Expr.Ebinop Binop.Oshr
                    (Expr.Ecast
                      (Expr.Ecast (Expr.Etempvar _stored_len tulong) tushort)
                      tushort) (Expr.Econst_int (Integers.Int.repr 8) tint)
                    tint) tuchar) tuchar)))))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'5
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'5 tulong)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
            (Stmt.Ssequence
              (Stmt.Sset _t'11
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending_buf
                  (tptr tuchar)))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'11 (tptr tuchar))
                    (Expr.Etempvar _t'5 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oand
                      (Expr.Ecast
                        (Expr.Eunop Unop.Onotint
                          (Expr.Etempvar _stored_len tulong) tulong) tushort)
                      (Expr.Econst_int (Integers.Int.repr 255) tint) tint)
                    tuchar) tuchar))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'6
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending tulong)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'6 tulong)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
            (Stmt.Ssequence
              (Stmt.Sset _t'10
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending_buf
                  (tptr tuchar)))
              (Stmt.Sassign
                (Expr.Ederef
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'10 (tptr tuchar))
                    (Expr.Etempvar _t'6 tulong) (tptr tuchar)) tuchar)
                (Expr.Ecast
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast
                        (Expr.Ecast
                          (Expr.Eunop Unop.Onotint
                            (Expr.Etempvar _stored_len tulong) tulong)
                          tushort) tushort)
                      (Expr.Econst_int (Integers.Int.repr 8) tint) tint)
                    tuchar) tuchar)))))
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Etempvar _stored_len tulong)
            (Stmt.Ssequence
              (Stmt.Sset _t'8
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _pending_buf
                  (tptr tuchar)))
              (Stmt.Ssequence
                (Stmt.Sset _t'9
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _pending tulong))
                (Stmt.Scall none
                  (Expr.Evar _memcpy (Ty.Tfunction
                                       [(tptr tvoid), (tptr tvoid), tulong]
                                       (tptr tvoid) cc_default))
                  [(Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'8 (tptr tuchar))
                     (Expr.Etempvar _t'9 tulong) (tptr tuchar)),
                   (Expr.Ecast (Expr.Etempvar _buf (tptr tschar))
                     (tptr tuchar)), (Expr.Etempvar _stored_len tulong)])))
            Stmt.Sskip)
          (Stmt.Ssequence
            (Stmt.Sset _t'7
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _pending tulong)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'7 tulong)
                (Expr.Etempvar _stored_len tulong) tulong))))))))
}

def f__tr_flush_bits : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [],
  fn_body :=
(Stmt.Scall none
  (Expr.Evar _bi_flush (Ty.Tfunction
                         [(tptr (Ty.Tstruct _internal_state noattr))] tvoid
                         cc_default))
  [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
}

def f__tr_align : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_len, tint), (_val, tint), (_len__1, tint), (_val__1, tint),
               (_t'4, tulong), (_t'3, tulong), (_t'2, tulong),
               (_t'1, tulong), (_t'30, tint), (_t'29, tushort),
               (_t'28, tushort), (_t'27, (tptr tuchar)), (_t'26, tushort),
               (_t'25, (tptr tuchar)), (_t'24, tint), (_t'23, tint),
               (_t'22, tint), (_t'21, tushort), (_t'20, tint), (_t'19, tint),
               (_t'18, tushort), (_t'17, tint), (_t'16, tushort),
               (_t'15, tushort), (_t'14, (tptr tuchar)), (_t'13, tushort),
               (_t'12, (tptr tuchar)), (_t'11, tint), (_t'10, tint),
               (_t'9, tint), (_t'8, tushort), (_t'7, tushort), (_t'6, tint),
               (_t'5, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _len (Expr.Econst_int (Integers.Int.repr 3) tint))
    (Stmt.Ssequence
      (Stmt.Sset _t'19
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'19 tint)
                          (Expr.Ebinop Binop.Osub
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tint) (Expr.Etempvar _len tint) tint) tint)
        (Stmt.Ssequence
          (Stmt.Sset _val
            (Expr.Ebinop Binop.Oshl
              (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'29
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'30
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                (Stmt.Sassign
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                  (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'29 tushort)
                    (Expr.Ebinop Binop.Oshl
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Etempvar _t'30 tint) tint) tint))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'1
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'27
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'28
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'27 (tptr tuchar))
                            (Expr.Etempvar _t'1 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oand
                              (Expr.Etempvar _t'28 tushort)
                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                              tint) tuchar) tuchar)))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'2
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending
                        tulong)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tulong)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'25
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _pending_buf
                        (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'26
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_buf
                          tushort))
                      (Stmt.Sassign
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'25 (tptr tuchar))
                            (Expr.Etempvar _t'2 tulong) (tptr tuchar))
                          tuchar)
                        (Expr.Ecast
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oshr
                              (Expr.Ecast (Expr.Etempvar _t'26 tushort)
                                tushort)
                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                              tint) tuchar) tuchar))))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'24
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oshr
                      (Expr.Ecast (Expr.Etempvar _val tint) tushort)
                      (Expr.Ebinop Binop.Osub
                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                        (Expr.Etempvar _t'24 tint) tint) tint)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'23
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'23 tint)
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tint)
                        (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                      tint)))))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'21
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
            (Stmt.Ssequence
              (Stmt.Sset _t'22
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'21 tushort)
                  (Expr.Ebinop Binop.Oshl
                    (Expr.Ecast
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
                      tushort) (Expr.Etempvar _t'22 tint) tint) tint))))
          (Stmt.Ssequence
            (Stmt.Sset _t'20
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'20 tint)
                (Expr.Etempvar _len tint) tint)))))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _len__1
        (Expr.Efield
          (Expr.Efield
            (Expr.Ederef
              (Expr.Ebinop Binop.Oadd
                (Expr.Evar _static_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 288))
                (Expr.Econst_int (Integers.Int.repr 256) tint)
                (tptr (Ty.Tstruct _ct_data_s noattr)))
              (Ty.Tstruct _ct_data_s noattr)) _dl (Ty.Tunion __1355 noattr))
          _len tushort))
      (Stmt.Ssequence
        (Stmt.Sset _t'5
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'5 tint)
                            (Expr.Ebinop Binop.Osub
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                tint) (Expr.Etempvar _len__1 tint) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'18
                (Expr.Efield
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Evar _static_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 288))
                        (Expr.Econst_int (Integers.Int.repr 256) tint)
                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                      (Ty.Tstruct _ct_data_s noattr)) _fc
                    (Ty.Tunion __1354 noattr)) _code tushort))
              (Stmt.Sset _val__1
                (Expr.Ecast (Expr.Etempvar _t'18 tushort) tint)))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'16
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'17
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'16 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _val__1 tint) tushort)
                        (Expr.Etempvar _t'17 tint) tint) tint))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'3
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'14
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'15
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'14 (tptr tuchar))
                              (Expr.Etempvar _t'3 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oand
                                (Expr.Etempvar _t'15 tushort)
                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                tint) tuchar) tuchar)))))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'4
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'4 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'12
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'13
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'12 (tptr tuchar))
                              (Expr.Etempvar _t'4 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oshr
                                (Expr.Ecast (Expr.Etempvar _t'13 tushort)
                                  tushort)
                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                tint) tuchar) tuchar))))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'11
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_buf
                        tushort)
                      (Expr.Ebinop Binop.Oshr
                        (Expr.Ecast (Expr.Etempvar _val__1 tint) tushort)
                        (Expr.Ebinop Binop.Osub
                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                          (Expr.Etempvar _t'11 tint) tint) tint)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'10
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'10 tint)
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _len__1 tint)
                          (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                        tint)))))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'7
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'8
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Evar _static_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 288))
                          (Expr.Econst_int (Integers.Int.repr 256) tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _code tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'9
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'7 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _t'8 tushort) tushort)
                        (Expr.Etempvar _t'9 tint) tint) tint)))))
            (Stmt.Ssequence
              (Stmt.Sset _t'6
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'6 tint)
                  (Expr.Etempvar _len__1 tint) tint)))))))
    (Stmt.Scall none
      (Expr.Evar _bi_flush (Ty.Tfunction
                             [(tptr (Ty.Tstruct _internal_state noattr))]
                             tvoid cc_default))
      [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])))
}

def f_compress_block : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_ltree, (tptr (Ty.Tstruct _ct_data_s noattr))),
                (_dtree, (tptr (Ty.Tstruct _ct_data_s noattr)))],
  fn_vars := [],
  fn_temps := [(_dist, tuint), (_lc, tint), (_sx, tuint), (_code, tuint),
               (_extra, tint), (_len, tint), (_val, tint), (_len__1, tint),
               (_val__1, tint), (_len__2, tint), (_val__2, tint),
               (_len__3, tint), (_val__3, tint), (_len__4, tint),
               (_val__4, tint), (_len__5, tint), (_val__5, tint),
               (_t'16, tulong), (_t'15, tulong), (_t'14, tulong),
               (_t'13, tulong), (_t'12, tulong), (_t'11, tulong),
               (_t'10, tint), (_t'9, tulong), (_t'8, tulong), (_t'7, tulong),
               (_t'6, tulong), (_t'5, tulong), (_t'4, tulong), (_t'3, tuint),
               (_t'2, tuint), (_t'1, tuint), (_t'107, tuchar),
               (_t'106, (tptr tuchar)), (_t'105, tuchar),
               (_t'104, (tptr tuchar)), (_t'103, (tptr tuchar)),
               (_t'102, tushort), (_t'101, tint), (_t'100, tushort),
               (_t'99, tushort), (_t'98, (tptr tuchar)), (_t'97, tushort),
               (_t'96, (tptr tuchar)), (_t'95, tint), (_t'94, tint),
               (_t'93, tint), (_t'92, tushort), (_t'91, tushort),
               (_t'90, tint), (_t'89, tint), (_t'88, tushort), (_t'87, tint),
               (_t'86, tushort), (_t'85, tushort), (_t'84, (tptr tuchar)),
               (_t'83, tushort), (_t'82, (tptr tuchar)), (_t'81, tint),
               (_t'80, tint), (_t'79, tint), (_t'78, tushort),
               (_t'77, tushort), (_t'76, tint), (_t'75, tint), (_t'74, tint),
               (_t'73, tint), (_t'72, tushort), (_t'71, tushort),
               (_t'70, (tptr tuchar)), (_t'69, tushort),
               (_t'68, (tptr tuchar)), (_t'67, tint), (_t'66, tint),
               (_t'65, tint), (_t'64, tushort), (_t'63, tint), (_t'62, tint),
               (_t'61, tuchar), (_t'60, tuchar), (_t'59, tushort),
               (_t'58, tint), (_t'57, tushort), (_t'56, tushort),
               (_t'55, (tptr tuchar)), (_t'54, tushort),
               (_t'53, (tptr tuchar)), (_t'52, tint), (_t'51, tint),
               (_t'50, tint), (_t'49, tushort), (_t'48, tushort),
               (_t'47, tint), (_t'46, tint), (_t'45, tint), (_t'44, tint),
               (_t'43, tushort), (_t'42, tushort), (_t'41, (tptr tuchar)),
               (_t'40, tushort), (_t'39, (tptr tuchar)), (_t'38, tint),
               (_t'37, tint), (_t'36, tint), (_t'35, tushort), (_t'34, tint),
               (_t'33, tint), (_t'32, tuint), (_t'31, tuint),
               (_t'30, tushort), (_t'29, tint), (_t'28, tushort),
               (_t'27, tushort), (_t'26, (tptr tuchar)), (_t'25, tushort),
               (_t'24, (tptr tuchar)), (_t'23, tint), (_t'22, tint),
               (_t'21, tint), (_t'20, tushort), (_t'19, tushort),
               (_t'18, tint), (_t'17, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _sx (Expr.Econst_int (Integers.Int.repr 0) tint))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'31
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.One (Expr.Etempvar _t'31 tuint)
                          (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
        (Stmt.Sloop
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'1 (Expr.Etempvar _sx tuint))
                (Stmt.Sset _sx
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tuint)
                    (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
              (Stmt.Ssequence
                (Stmt.Sset _t'106
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _sym_buf
                    (tptr tuchar)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'107
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Etempvar _t'106 (tptr tuchar))
                        (Expr.Etempvar _t'1 tuint) (tptr tuchar)) tuchar))
                  (Stmt.Sset _dist
                    (Expr.Ebinop Binop.Oand (Expr.Etempvar _t'107 tuchar)
                      (Expr.Econst_int (Integers.Int.repr 255) tint) tint)))))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'2 (Expr.Etempvar _sx tuint))
                  (Stmt.Sset _sx
                    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tuint)
                      (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
                (Stmt.Ssequence
                  (Stmt.Sset _t'104
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _sym_buf
                      (tptr tuchar)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'105
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _t'104 (tptr tuchar))
                          (Expr.Etempvar _t'2 tuint) (tptr tuchar)) tuchar))
                    (Stmt.Sset _dist
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _dist tuint)
                        (Expr.Ebinop Binop.Oshl
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oand
                              (Expr.Etempvar _t'105 tuchar)
                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                              tint) tuint)
                          (Expr.Econst_int (Integers.Int.repr 8) tint) tuint)
                        tuint)))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'3 (Expr.Etempvar _sx tuint))
                    (Stmt.Sset _sx
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tuint)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'103
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _sym_buf
                        (tptr tuchar)))
                    (Stmt.Sset _lc
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _t'103 (tptr tuchar))
                          (Expr.Etempvar _t'3 tuint) (tptr tuchar)) tuchar))))
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                    (Expr.Etempvar _dist tuint)
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    tint)
                  (Stmt.Ssequence
                    (Stmt.Sset _len
                      (Expr.Efield
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Expr.Etempvar _lc tint)
                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Ty.Tstruct _ct_data_s noattr)) _dl
                          (Ty.Tunion __1355 noattr)) _len tushort))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'89
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _bi_valid
                          tint))
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                          (Expr.Etempvar _t'89 tint)
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Ecast
                                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                                              tint) (Expr.Etempvar _len tint)
                                            tint) tint)
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'102
                              (Expr.Efield
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                      (Expr.Etempvar _lc tint)
                                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                                    (Ty.Tstruct _ct_data_s noattr)) _fc
                                  (Ty.Tunion __1354 noattr)) _code tushort))
                            (Stmt.Sset _val
                              (Expr.Ecast (Expr.Etempvar _t'102 tushort)
                                tint)))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'100
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_buf tushort))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'101
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_valid tint))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_buf tushort)
                                  (Expr.Ebinop Binop.Oor
                                    (Expr.Etempvar _t'100 tushort)
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Ecast (Expr.Etempvar _val tint)
                                        tushort) (Expr.Etempvar _t'101 tint)
                                      tint) tint))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'4
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending tulong))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending tulong)
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'4 tulong)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tulong)))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'98
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending_buf (tptr tuchar)))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'99
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_buf tushort))
                                      (Stmt.Sassign
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'98 (tptr tuchar))
                                            (Expr.Etempvar _t'4 tulong)
                                            (tptr tuchar)) tuchar)
                                        (Expr.Ecast
                                          (Expr.Ecast
                                            (Expr.Ebinop Binop.Oand
                                              (Expr.Etempvar _t'99 tushort)
                                              (Expr.Econst_int (Integers.Int.repr 255) tint)
                                              tint) tuchar) tuchar)))))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'5
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending tulong))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending tulong)
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'5 tulong)
                                        (Expr.Econst_int (Integers.Int.repr 1) tint)
                                        tulong)))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'96
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _pending_buf (tptr tuchar)))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'97
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_buf tushort))
                                      (Stmt.Sassign
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'96 (tptr tuchar))
                                            (Expr.Etempvar _t'5 tulong)
                                            (tptr tuchar)) tuchar)
                                        (Expr.Ecast
                                          (Expr.Ecast
                                            (Expr.Ebinop Binop.Oshr
                                              (Expr.Ecast
                                                (Expr.Etempvar _t'97 tushort)
                                                tushort)
                                              (Expr.Econst_int (Integers.Int.repr 8) tint)
                                              tint) tuchar) tuchar))))))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'95
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_valid tint))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort)
                                    (Expr.Ebinop Binop.Oshr
                                      (Expr.Ecast (Expr.Etempvar _val tint)
                                        tushort)
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                                        (Expr.Etempvar _t'95 tint) tint)
                                      tint)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'94
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_valid tint))
                                  (Stmt.Sassign
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_valid tint)
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _t'94 tint)
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Etempvar _len tint)
                                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                                        tint) tint)))))))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'91
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_buf tushort))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'92
                                (Expr.Efield
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Expr.Etempvar _lc tint)
                                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                                      (Ty.Tstruct _ct_data_s noattr)) _fc
                                    (Ty.Tunion __1354 noattr)) _code tushort))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'93
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_valid tint))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_buf tushort)
                                  (Expr.Ebinop Binop.Oor
                                    (Expr.Etempvar _t'91 tushort)
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Ecast
                                        (Expr.Etempvar _t'92 tushort)
                                        tushort) (Expr.Etempvar _t'93 tint)
                                      tint) tint)))))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'90
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_valid tint))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_valid tint)
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _t'90 tint)
                                (Expr.Etempvar _len tint) tint)))))))
                  (Stmt.Ssequence
                    (Stmt.Sset _code
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Evar __length_code (tarray tuchar 256))
                          (Expr.Etempvar _lc tint) (tptr tuchar)) tuchar))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _len__1
                          (Expr.Efield
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _code tuint)
                                      (Expr.Econst_int (Integers.Int.repr 256) tint)
                                      tuint)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tuint)
                                  (tptr (Ty.Tstruct _ct_data_s noattr)))
                                (Ty.Tstruct _ct_data_s noattr)) _dl
                              (Ty.Tunion __1355 noattr)) _len tushort))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'75
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _bi_valid tint))
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                              (Expr.Etempvar _t'75 tint)
                                              (Expr.Ebinop Binop.Osub
                                                (Expr.Ecast
                                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                  tint)
                                                (Expr.Etempvar _len__1 tint)
                                                tint) tint)
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'88
                                  (Expr.Efield
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _code tuint)
                                              (Expr.Econst_int (Integers.Int.repr 256) tint)
                                              tuint)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tuint)
                                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                                        (Ty.Tstruct _ct_data_s noattr)) _fc
                                      (Ty.Tunion __1354 noattr)) _code
                                    tushort))
                                (Stmt.Sset _val__1
                                  (Expr.Ecast (Expr.Etempvar _t'88 tushort)
                                    tint)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'86
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'87
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_valid tint))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_buf tushort)
                                      (Expr.Ebinop Binop.Oor
                                        (Expr.Etempvar _t'86 tushort)
                                        (Expr.Ebinop Binop.Oshl
                                          (Expr.Ecast
                                            (Expr.Etempvar _val__1 tint)
                                            tushort)
                                          (Expr.Etempvar _t'87 tint) tint)
                                        tint))))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'6
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending tulong))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending tulong)
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'6 tulong)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tulong)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'84
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending_buf (tptr tuchar)))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'85
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort))
                                          (Stmt.Sassign
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _t'84 (tptr tuchar))
                                                (Expr.Etempvar _t'6 tulong)
                                                (tptr tuchar)) tuchar)
                                            (Expr.Ecast
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oand
                                                  (Expr.Etempvar _t'85 tushort)
                                                  (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                  tint) tuchar) tuchar)))))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'7
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending tulong))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending tulong)
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'7 tulong)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tulong)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'82
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _pending_buf (tptr tuchar)))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'83
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort))
                                          (Stmt.Sassign
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _t'82 (tptr tuchar))
                                                (Expr.Etempvar _t'7 tulong)
                                                (tptr tuchar)) tuchar)
                                            (Expr.Ecast
                                              (Expr.Ecast
                                                (Expr.Ebinop Binop.Oshr
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _t'83 tushort)
                                                    tushort)
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  tint) tuchar) tuchar))))))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'81
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_valid tint))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_buf tushort)
                                        (Expr.Ebinop Binop.Oshr
                                          (Expr.Ecast
                                            (Expr.Etempvar _val__1 tint)
                                            tushort)
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                            (Expr.Etempvar _t'81 tint) tint)
                                          tint)))
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'80
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_valid tint))
                                      (Stmt.Sassign
                                        (Expr.Efield
                                          (Expr.Ederef
                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                            (Ty.Tstruct _internal_state noattr))
                                          _bi_valid tint)
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _t'80 tint)
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _len__1 tint)
                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                            tint) tint)))))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'77
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_buf tushort))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'78
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _code tuint)
                                                (Expr.Econst_int (Integers.Int.repr 256) tint)
                                                tuint)
                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                              tuint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _fc
                                        (Ty.Tunion __1354 noattr)) _code
                                      tushort))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'79
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_valid tint))
                                    (Stmt.Sassign
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_buf tushort)
                                      (Expr.Ebinop Binop.Oor
                                        (Expr.Etempvar _t'77 tushort)
                                        (Expr.Ebinop Binop.Oshl
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'78 tushort)
                                            tushort)
                                          (Expr.Etempvar _t'79 tint) tint)
                                        tint)))))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'76
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_valid tint))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _bi_valid tint)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'76 tint)
                                    (Expr.Etempvar _len__1 tint) tint)))))))
                      (Stmt.Ssequence
                        (Stmt.Sset _extra
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Evar _extra_lbits (tarray tint 29))
                              (Expr.Etempvar _code tuint) (tptr tint)) tint))
                        (Stmt.Ssequence
                          (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                              (Expr.Etempvar _extra tint)
                                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                                              tint)
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'74
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Evar _base_length (tarray tint 29))
                                      (Expr.Etempvar _code tuint)
                                      (tptr tint)) tint))
                                (Stmt.Sset _lc
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _lc tint)
                                    (Expr.Etempvar _t'74 tint) tint)))
                              (Stmt.Ssequence
                                (Stmt.Sset _len__2
                                  (Expr.Etempvar _extra tint))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'62
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_valid tint))
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                      (Expr.Etempvar _t'62 tint)
                                                      (Expr.Ebinop Binop.Osub
                                                        (Expr.Ecast
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          tint)
                                                        (Expr.Etempvar _len__2 tint)
                                                        tint) tint)
                                    (Stmt.Ssequence
                                      (Stmt.Sset _val__2
                                        (Expr.Ecast (Expr.Etempvar _lc tint)
                                          tint))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'72
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'73
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bi_valid tint))
                                            (Stmt.Sassign
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bi_buf tushort)
                                              (Expr.Ebinop Binop.Oor
                                                (Expr.Etempvar _t'72 tushort)
                                                (Expr.Ebinop Binop.Oshl
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _val__2 tint)
                                                    tushort)
                                                  (Expr.Etempvar _t'73 tint)
                                                  tint) tint))))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'8
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending tulong))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending tulong)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'8 tulong)
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                    tulong)))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'70
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending_buf
                                                    (tptr tuchar)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'71
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort))
                                                  (Stmt.Sassign
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'70 (tptr tuchar))
                                                        (Expr.Etempvar _t'8 tulong)
                                                        (tptr tuchar))
                                                      tuchar)
                                                    (Expr.Ecast
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oand
                                                          (Expr.Etempvar _t'71 tushort)
                                                          (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                          tint) tuchar)
                                                      tuchar)))))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'9
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending tulong))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending tulong)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'9 tulong)
                                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                    tulong)))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'68
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _pending_buf
                                                    (tptr tuchar)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'69
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort))
                                                  (Stmt.Sassign
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _t'68 (tptr tuchar))
                                                        (Expr.Etempvar _t'9 tulong)
                                                        (tptr tuchar))
                                                      tuchar)
                                                    (Expr.Ecast
                                                      (Expr.Ecast
                                                        (Expr.Ebinop Binop.Oshr
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _t'69 tushort)
                                                            tushort)
                                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                          tint) tuchar)
                                                      tuchar))))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'67
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort)
                                                (Expr.Ebinop Binop.Oshr
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _val__2 tint)
                                                    tushort)
                                                  (Expr.Ebinop Binop.Osub
                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                    (Expr.Etempvar _t'67 tint)
                                                    tint) tint)))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'66
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint)
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _t'66 tint)
                                                  (Expr.Ebinop Binop.Osub
                                                    (Expr.Etempvar _len__2 tint)
                                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                    tint) tint)))))))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'64
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_buf tushort))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'65
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort)
                                            (Expr.Ebinop Binop.Oor
                                              (Expr.Etempvar _t'64 tushort)
                                              (Expr.Ebinop Binop.Oshl
                                                (Expr.Ecast
                                                  (Expr.Etempvar _lc tint)
                                                  tushort)
                                                (Expr.Etempvar _t'65 tint)
                                                tint) tint))))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'63
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Ederef
                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                              (Ty.Tstruct _internal_state noattr))
                                            _bi_valid tint)
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _t'63 tint)
                                            (Expr.Etempvar _len__2 tint)
                                            tint))))))))
                            Stmt.Sskip)
                          (Stmt.Ssequence
                            (Stmt.Sset _dist
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _dist tuint)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tuint))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                                    (Expr.Etempvar _dist tuint)
                                                    (Expr.Econst_int (Integers.Int.repr 256) tint)
                                                    tint)
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'61
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Evar __dist_code (tarray tuchar 512))
                                          (Expr.Etempvar _dist tuint)
                                          (tptr tuchar)) tuchar))
                                    (Stmt.Sset _t'10
                                      (Expr.Ecast
                                        (Expr.Etempvar _t'61 tuchar) tint)))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'60
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Evar __dist_code (tarray tuchar 512))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Econst_int (Integers.Int.repr 256) tint)
                                            (Expr.Ebinop Binop.Oshr
                                              (Expr.Etempvar _dist tuint)
                                              (Expr.Econst_int (Integers.Int.repr 7) tint)
                                              tuint) tuint) (tptr tuchar))
                                        tuchar))
                                    (Stmt.Sset _t'10
                                      (Expr.Ecast
                                        (Expr.Etempvar _t'60 tuchar) tint))))
                                (Stmt.Sset _code (Expr.Etempvar _t'10 tint)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _len__3
                                    (Expr.Efield
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _dtree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                            (Expr.Etempvar _code tuint)
                                            (tptr (Ty.Tstruct _ct_data_s noattr)))
                                          (Ty.Tstruct _ct_data_s noattr)) _dl
                                        (Ty.Tunion __1355 noattr)) _len
                                      tushort))
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'46
                                      (Expr.Efield
                                        (Expr.Ederef
                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                          (Ty.Tstruct _internal_state noattr))
                                        _bi_valid tint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                        (Expr.Etempvar _t'46 tint)
                                                        (Expr.Ebinop Binop.Osub
                                                          (Expr.Ecast
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            tint)
                                                          (Expr.Etempvar _len__3 tint)
                                                          tint) tint)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'59
                                            (Expr.Efield
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _dtree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                    (Expr.Etempvar _code tuint)
                                                    (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                  (Ty.Tstruct _ct_data_s noattr))
                                                _fc
                                                (Ty.Tunion __1354 noattr))
                                              _code tushort))
                                          (Stmt.Sset _val__3
                                            (Expr.Ecast
                                              (Expr.Etempvar _t'59 tushort)
                                              tint)))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'57
                                              (Expr.Efield
                                                (Expr.Ederef
                                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                  (Ty.Tstruct _internal_state noattr))
                                                _bi_buf tushort))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'58
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort)
                                                (Expr.Ebinop Binop.Oor
                                                  (Expr.Etempvar _t'57 tushort)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _val__3 tint)
                                                      tushort)
                                                    (Expr.Etempvar _t'58 tint)
                                                    tint) tint))))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'11
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong)
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'11 tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'55
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending_buf
                                                      (tptr tuchar)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'56
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'55 (tptr tuchar))
                                                          (Expr.Etempvar _t'11 tulong)
                                                          (tptr tuchar))
                                                        tuchar)
                                                      (Expr.Ecast
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Oand
                                                            (Expr.Etempvar _t'56 tushort)
                                                            (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                            tint) tuchar)
                                                        tuchar)))))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'12
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending tulong)
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _t'12 tulong)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'53
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _pending_buf
                                                      (tptr tuchar)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'54
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort))
                                                    (Stmt.Sassign
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'53 (tptr tuchar))
                                                          (Expr.Etempvar _t'12 tulong)
                                                          (tptr tuchar))
                                                        tuchar)
                                                      (Expr.Ecast
                                                        (Expr.Ecast
                                                          (Expr.Ebinop Binop.Oshr
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _t'54 tushort)
                                                              tushort)
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            tint) tuchar)
                                                        tuchar))))))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'52
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort)
                                                  (Expr.Ebinop Binop.Oshr
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _val__3 tint)
                                                      tushort)
                                                    (Expr.Ebinop Binop.Osub
                                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                      (Expr.Etempvar _t'52 tint)
                                                      tint) tint)))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'51
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'51 tint)
                                                    (Expr.Ebinop Binop.Osub
                                                      (Expr.Etempvar _len__3 tint)
                                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                      tint) tint)))))))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'48
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_buf tushort))
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'49
                                              (Expr.Efield
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _dtree (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                      (Expr.Etempvar _code tuint)
                                                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                                                    (Ty.Tstruct _ct_data_s noattr))
                                                  _fc
                                                  (Ty.Tunion __1354 noattr))
                                                _code tushort))
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'50
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_valid tint))
                                              (Stmt.Sassign
                                                (Expr.Efield
                                                  (Expr.Ederef
                                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                    (Ty.Tstruct _internal_state noattr))
                                                  _bi_buf tushort)
                                                (Expr.Ebinop Binop.Oor
                                                  (Expr.Etempvar _t'48 tushort)
                                                  (Expr.Ebinop Binop.Oshl
                                                    (Expr.Ecast
                                                      (Expr.Etempvar _t'49 tushort)
                                                      tushort)
                                                    (Expr.Etempvar _t'50 tint)
                                                    tint) tint)))))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'47
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint)
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _t'47 tint)
                                              (Expr.Etempvar _len__3 tint)
                                              tint)))))))
                                (Stmt.Ssequence
                                  (Stmt.Sset _extra
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Evar _extra_dbits (tarray tint 30))
                                        (Expr.Etempvar _code tuint)
                                        (tptr tint)) tint))
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                                      (Expr.Etempvar _extra tint)
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      tint)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'45
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Evar _base_dist (tarray tint 30))
                                              (Expr.Etempvar _code tuint)
                                              (tptr tint)) tint))
                                        (Stmt.Sset _dist
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _dist tuint)
                                            (Expr.Ecast
                                              (Expr.Etempvar _t'45 tint)
                                              tuint) tuint)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _len__4
                                          (Expr.Etempvar _extra tint))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'33
                                            (Expr.Efield
                                              (Expr.Ederef
                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                (Ty.Tstruct _internal_state noattr))
                                              _bi_valid tint))
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                              (Expr.Etempvar _t'33 tint)
                                                              (Expr.Ebinop Binop.Osub
                                                                (Expr.Ecast
                                                                  (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                                  tint)
                                                                (Expr.Etempvar _len__4 tint)
                                                                tint) tint)
                                            (Stmt.Ssequence
                                              (Stmt.Sset _val__4
                                                (Expr.Ecast
                                                  (Expr.Ecast
                                                    (Expr.Etempvar _dist tuint)
                                                    tint) tint))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'43
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort))
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'44
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_valid tint))
                                                    (Stmt.Sassign
                                                      (Expr.Efield
                                                        (Expr.Ederef
                                                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                          (Ty.Tstruct _internal_state noattr))
                                                        _bi_buf tushort)
                                                      (Expr.Ebinop Binop.Oor
                                                        (Expr.Etempvar _t'43 tushort)
                                                        (Expr.Ebinop Binop.Oshl
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _val__4 tint)
                                                            tushort)
                                                          (Expr.Etempvar _t'44 tint)
                                                          tint) tint))))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'13
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong)
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _t'13 tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tulong)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'41
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending_buf
                                                            (tptr tuchar)))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'42
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                                (Ty.Tstruct _internal_state noattr))
                                                              _bi_buf
                                                              tushort))
                                                          (Stmt.Sassign
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _t'41 (tptr tuchar))
                                                                (Expr.Etempvar _t'13 tulong)
                                                                (tptr tuchar))
                                                              tuchar)
                                                            (Expr.Ecast
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.Oand
                                                                  (Expr.Etempvar _t'42 tushort)
                                                                  (Expr.Econst_int (Integers.Int.repr 255) tint)
                                                                  tint)
                                                                tuchar)
                                                              tuchar)))))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'14
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong))
                                                        (Stmt.Sassign
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending tulong)
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _t'14 tulong)
                                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                            tulong)))
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'39
                                                          (Expr.Efield
                                                            (Expr.Ederef
                                                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                              (Ty.Tstruct _internal_state noattr))
                                                            _pending_buf
                                                            (tptr tuchar)))
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'40
                                                            (Expr.Efield
                                                              (Expr.Ederef
                                                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                                (Ty.Tstruct _internal_state noattr))
                                                              _bi_buf
                                                              tushort))
                                                          (Stmt.Sassign
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _t'39 (tptr tuchar))
                                                                (Expr.Etempvar _t'14 tulong)
                                                                (tptr tuchar))
                                                              tuchar)
                                                            (Expr.Ecast
                                                              (Expr.Ecast
                                                                (Expr.Ebinop Binop.Oshr
                                                                  (Expr.Ecast
                                                                    (Expr.Etempvar _t'40 tushort)
                                                                    tushort)
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  tint)
                                                                tuchar)
                                                              tuchar))))))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'38
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_buf tushort)
                                                        (Expr.Ebinop Binop.Oshr
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _val__4 tint)
                                                            tushort)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            (Expr.Etempvar _t'38 tint)
                                                            tint) tint)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'37
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint))
                                                      (Stmt.Sassign
                                                        (Expr.Efield
                                                          (Expr.Ederef
                                                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                            (Ty.Tstruct _internal_state noattr))
                                                          _bi_valid tint)
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _t'37 tint)
                                                          (Expr.Ebinop Binop.Osub
                                                            (Expr.Etempvar _len__4 tint)
                                                            (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                            tint) tint)))))))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'35
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_buf tushort))
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'36
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_valid tint))
                                                  (Stmt.Sassign
                                                    (Expr.Efield
                                                      (Expr.Ederef
                                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                        (Ty.Tstruct _internal_state noattr))
                                                      _bi_buf tushort)
                                                    (Expr.Ebinop Binop.Oor
                                                      (Expr.Etempvar _t'35 tushort)
                                                      (Expr.Ebinop Binop.Oshl
                                                        (Expr.Ecast
                                                          (Expr.Ecast
                                                            (Expr.Etempvar _dist tuint)
                                                            tint) tushort)
                                                        (Expr.Etempvar _t'36 tint)
                                                        tint) tint))))
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'34
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint))
                                                (Stmt.Sassign
                                                  (Expr.Efield
                                                    (Expr.Ederef
                                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                                      (Ty.Tstruct _internal_state noattr))
                                                    _bi_valid tint)
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _t'34 tint)
                                                    (Expr.Etempvar _len__4 tint)
                                                    tint))))))))
                                    Stmt.Sskip)))))))))))))
          (Stmt.Ssequence
            (Stmt.Sset _t'32
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                (Expr.Etempvar _sx tuint)
                                (Expr.Etempvar _t'32 tuint) tint)
              Stmt.Sskip
              Stmt.Sbreak)))
        Stmt.Sskip))
    (Stmt.Ssequence
      (Stmt.Sset _len__5
        (Expr.Efield
          (Expr.Efield
            (Expr.Ederef
              (Expr.Ebinop Binop.Oadd
                (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                (Expr.Econst_int (Integers.Int.repr 256) tint)
                (tptr (Ty.Tstruct _ct_data_s noattr)))
              (Ty.Tstruct _ct_data_s noattr)) _dl (Ty.Tunion __1355 noattr))
          _len tushort))
      (Stmt.Ssequence
        (Stmt.Sset _t'17
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'17 tint)
                            (Expr.Ebinop Binop.Osub
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                tint) (Expr.Etempvar _len__5 tint) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'30
                (Expr.Efield
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Expr.Econst_int (Integers.Int.repr 256) tint)
                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                      (Ty.Tstruct _ct_data_s noattr)) _fc
                    (Ty.Tunion __1354 noattr)) _code tushort))
              (Stmt.Sset _val__5
                (Expr.Ecast (Expr.Etempvar _t'30 tushort) tint)))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _t'28
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                      (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'29
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'28 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _val__5 tint) tushort)
                        (Expr.Etempvar _t'29 tint) tint) tint))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'15
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'15 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'26
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'27
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'26 (tptr tuchar))
                              (Expr.Etempvar _t'15 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oand
                                (Expr.Etempvar _t'27 tushort)
                                (Expr.Econst_int (Integers.Int.repr 255) tint)
                                tint) tuchar) tuchar)))))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'16
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending
                          tulong)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'16 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'24
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _pending_buf
                          (tptr tuchar)))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'25
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Sassign
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'24 (tptr tuchar))
                              (Expr.Etempvar _t'16 tulong) (tptr tuchar))
                            tuchar)
                          (Expr.Ecast
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oshr
                                (Expr.Ecast (Expr.Etempvar _t'25 tushort)
                                  tushort)
                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                tint) tuchar) tuchar))))))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'23
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_buf
                        tushort)
                      (Expr.Ebinop Binop.Oshr
                        (Expr.Ecast (Expr.Etempvar _val__5 tint) tushort)
                        (Expr.Ebinop Binop.Osub
                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                          (Expr.Etempvar _t'23 tint) tint) tint)))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'22
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _bi_valid
                        tint)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'22 tint)
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _len__5 tint)
                          (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                        tint)))))))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'19
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_buf tushort))
              (Stmt.Ssequence
                (Stmt.Sset _t'20
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Etempvar _ltree (tptr (Ty.Tstruct _ct_data_s noattr)))
                          (Expr.Econst_int (Integers.Int.repr 256) tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _code tushort))
                (Stmt.Ssequence
                  (Stmt.Sset _t'21
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sassign
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_buf tushort)
                    (Expr.Ebinop Binop.Oor (Expr.Etempvar _t'19 tushort)
                      (Expr.Ebinop Binop.Oshl
                        (Expr.Ecast (Expr.Etempvar _t'20 tushort) tushort)
                        (Expr.Etempvar _t'21 tint) tint) tint)))))
            (Stmt.Ssequence
              (Stmt.Sset _t'18
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _bi_valid tint)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'18 tint)
                  (Expr.Etempvar _len__5 tint) tint)))))))))
}

def f_detect_data_type : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr)))],
  fn_vars := [],
  fn_temps := [(_block_mask, tulong), (_n, tint), (_t'3, tint), (_t'2, tint),
               (_t'1, tint), (_t'8, tushort), (_t'7, tushort),
               (_t'6, tushort), (_t'5, tushort), (_t'4, tushort)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _block_mask
    (Expr.Econst_long (Integers.Int64.repr 4093624447) tulong))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 0) tint))
      (Stmt.Sloop
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole (Expr.Etempvar _n tint)
                              (Expr.Econst_int (Integers.Int.repr 31) tint)
                              tint)
            Stmt.Sskip
            Stmt.Sbreak)
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oand
                                (Expr.Etempvar _block_mask tulong)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tulong)
              (Stmt.Ssequence
                (Stmt.Sset _t'8
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                            (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                          (Expr.Etempvar _n tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _freq tushort))
                (Stmt.Sset _t'1
                  (Expr.Ecast
                    (Expr.Ebinop Binop.One (Expr.Etempvar _t'8 tushort)
                      (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
                    tbool)))
              (Stmt.Sset _t'1 (Expr.Econst_int (Integers.Int.repr 0) tint)))
            (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
              (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))
              Stmt.Sskip)))
        (Stmt.Ssequence
          (Stmt.Sset _n
            (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint))
          (Stmt.Sset _block_mask
            (Expr.Ebinop Binop.Oshr (Expr.Etempvar _block_mask tulong)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tulong)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'6
              (Expr.Efield
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                        (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                      (Expr.Econst_int (Integers.Int.repr 9) tint)
                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                    (Ty.Tstruct _ct_data_s noattr)) _fc
                  (Ty.Tunion __1354 noattr)) _freq tushort))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                (Expr.Etempvar _t'6 tushort)
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                tint)
              (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
              (Stmt.Ssequence
                (Stmt.Sset _t'7
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                            (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                          (Expr.Econst_int (Integers.Int.repr 10) tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _freq tushort))
                (Stmt.Sset _t'2
                  (Expr.Ecast
                    (Expr.Ebinop Binop.One (Expr.Etempvar _t'7 tushort)
                      (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
                    tbool)))))
          (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
            (Stmt.Sset _t'3 (Expr.Econst_int (Integers.Int.repr 1) tint))
            (Stmt.Ssequence
              (Stmt.Sset _t'5
                (Expr.Efield
                  (Expr.Efield
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                          (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                        (Expr.Econst_int (Integers.Int.repr 13) tint)
                        (tptr (Ty.Tstruct _ct_data_s noattr)))
                      (Ty.Tstruct _ct_data_s noattr)) _fc
                    (Ty.Tunion __1354 noattr)) _freq tushort))
              (Stmt.Sset _t'3
                (Expr.Ecast
                  (Expr.Ebinop Binop.One (Expr.Etempvar _t'5 tushort)
                    (Expr.Econst_int (Integers.Int.repr 0) tint) tint) tbool)))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
          (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
          Stmt.Sskip))
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _n (Expr.Econst_int (Integers.Int.repr 32) tint))
          (Stmt.Sloop
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                  (Expr.Etempvar _n tint)
                                  (Expr.Econst_int (Integers.Int.repr 256) tint)
                                  tint)
                Stmt.Sskip
                Stmt.Sbreak)
              (Stmt.Ssequence
                (Stmt.Sset _t'4
                  (Expr.Efield
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                            (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                          (Expr.Etempvar _n tint)
                          (tptr (Ty.Tstruct _ct_data_s noattr)))
                        (Ty.Tstruct _ct_data_s noattr)) _fc
                      (Ty.Tunion __1354 noattr)) _freq tushort))
                (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                    (Expr.Etempvar _t'4 tushort)
                                    (Expr.Econst_int (Integers.Int.repr 0) tint)
                                    tint)
                  (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 1) tint)))
                  Stmt.Sskip)))
            (Stmt.Sset _n
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _n tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))
        (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))))))
}

def f__tr_flush_block : Function := {
  fn_return := tvoid,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_buf, (tptr tschar)), (_stored_len, tulong), (_last, tint)],
  fn_vars := [],
  fn_temps := [(_opt_lenb, tulong), (_static_lenb, tulong),
               (_max_blindex, tint), (_len, tint), (_val, tint),
               (_len__1, tint), (_val__1, tint), (_t'9, tint),
               (_t'8, tulong), (_t'7, tulong), (_t'6, tulong),
               (_t'5, tulong), (_t'4, tulong), (_t'3, tint), (_t'2, tint),
               (_t'1, tint), (_t'42, (tptr (Ty.Tstruct _z_stream_s noattr))),
               (_t'41, tint),
               (_t'40, (tptr (Ty.Tstruct _z_stream_s noattr))),
               (_t'39, tulong), (_t'38, tulong), (_t'37, tint),
               (_t'36, tint), (_t'35, tint), (_t'34, tushort),
               (_t'33, tushort), (_t'32, (tptr tuchar)), (_t'31, tushort),
               (_t'30, (tptr tuchar)), (_t'29, tint), (_t'28, tint),
               (_t'27, tint), (_t'26, tushort), (_t'25, tint), (_t'24, tint),
               (_t'23, tint), (_t'22, tushort), (_t'21, tushort),
               (_t'20, (tptr tuchar)), (_t'19, tushort),
               (_t'18, (tptr tuchar)), (_t'17, tint), (_t'16, tint),
               (_t'15, tint), (_t'14, tushort), (_t'13, tint), (_t'12, tint),
               (_t'11, tint), (_t'10, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _max_blindex (Expr.Econst_int (Integers.Int.repr 0) tint))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'36
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _level tint))
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt (Expr.Etempvar _t'36 tint)
                          (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'40
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _strm
                (tptr (Ty.Tstruct _z_stream_s noattr))))
            (Stmt.Ssequence
              (Stmt.Sset _t'41
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _t'40 (tptr (Ty.Tstruct _z_stream_s noattr)))
                    (Ty.Tstruct _z_stream_s noattr)) _data_type tint))
              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                  (Expr.Etempvar _t'41 tint)
                                  (Expr.Econst_int (Integers.Int.repr 2) tint)
                                  tint)
                (Stmt.Ssequence
                  (Stmt.Scall (some _t'1)
                    (Expr.Evar _detect_data_type (Ty.Tfunction
                                                   [(tptr (Ty.Tstruct _internal_state noattr))]
                                                   tint cc_default))
                    [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
                  (Stmt.Ssequence
                    (Stmt.Sset _t'42
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _strm
                        (tptr (Ty.Tstruct _z_stream_s noattr))))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _t'42 (tptr (Ty.Tstruct _z_stream_s noattr)))
                          (Ty.Tstruct _z_stream_s noattr)) _data_type tint)
                      (Expr.Etempvar _t'1 tint))))
                Stmt.Sskip)))
          (Stmt.Ssequence
            (Stmt.Scall none
              (Expr.Evar _build_tree (Ty.Tfunction
                                       [(tptr (Ty.Tstruct _internal_state noattr)),
                                        (tptr (Ty.Tstruct _tree_desc_s noattr))]
                                       tvoid cc_default))
              [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
               (Expr.Ecast
                 (Expr.Eaddrof
                   (Expr.Efield
                     (Expr.Ederef
                       (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                       (Ty.Tstruct _internal_state noattr)) _l_desc
                     (Ty.Tstruct _tree_desc_s noattr))
                   (tptr (Ty.Tstruct _tree_desc_s noattr)))
                 (tptr (Ty.Tstruct _tree_desc_s noattr)))])
            (Stmt.Ssequence
              (Stmt.Scall none
                (Expr.Evar _build_tree (Ty.Tfunction
                                         [(tptr (Ty.Tstruct _internal_state noattr)),
                                          (tptr (Ty.Tstruct _tree_desc_s noattr))]
                                         tvoid cc_default))
                [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                 (Expr.Ecast
                   (Expr.Eaddrof
                     (Expr.Efield
                       (Expr.Ederef
                         (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                         (Ty.Tstruct _internal_state noattr)) _d_desc
                       (Ty.Tstruct _tree_desc_s noattr))
                     (tptr (Ty.Tstruct _tree_desc_s noattr)))
                   (tptr (Ty.Tstruct _tree_desc_s noattr)))])
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Scall (some _t'2)
                    (Expr.Evar _build_bl_tree (Ty.Tfunction
                                                [(tptr (Ty.Tstruct _internal_state noattr))]
                                                tint cc_default))
                    [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
                  (Stmt.Sset _max_blindex (Expr.Etempvar _t'2 tint)))
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Sset _t'39
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _opt_len
                        tulong))
                    (Stmt.Sset _opt_lenb
                      (Expr.Ebinop Binop.Oshr
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'39 tulong)
                            (Expr.Econst_int (Integers.Int.repr 3) tint)
                            tulong)
                          (Expr.Econst_int (Integers.Int.repr 7) tint)
                          tulong)
                        (Expr.Econst_int (Integers.Int.repr 3) tint) tulong)))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'38
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _static_len
                          tulong))
                      (Stmt.Sset _static_lenb
                        (Expr.Ebinop Binop.Oshr
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _t'38 tulong)
                              (Expr.Econst_int (Integers.Int.repr 3) tint)
                              tulong)
                            (Expr.Econst_int (Integers.Int.repr 7) tint)
                            tulong)
                          (Expr.Econst_int (Integers.Int.repr 3) tint)
                          tulong)))
                    (Stmt.Ssequence
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                                          (Expr.Etempvar _static_lenb tulong)
                                          (Expr.Etempvar _opt_lenb tulong)
                                          tint)
                        (Stmt.Sset _t'3
                          (Expr.Econst_int (Integers.Int.repr 1) tint))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'37
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _strategy tint))
                          (Stmt.Sset _t'3
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Oeq
                                (Expr.Etempvar _t'37 tint)
                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                tint) tbool))))
                      (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
                        (Stmt.Sset _opt_lenb
                          (Expr.Etempvar _static_lenb tulong))
                        Stmt.Sskip))))))))
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'4
              (Expr.Ecast
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _stored_len tulong)
                  (Expr.Econst_int (Integers.Int.repr 5) tint) tulong)
                tulong))
            (Stmt.Sset _static_lenb (Expr.Etempvar _t'4 tulong)))
          (Stmt.Sset _opt_lenb (Expr.Etempvar _t'4 tulong)))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ole
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _stored_len tulong)
                              (Expr.Econst_int (Integers.Int.repr 4) tint)
                              tulong) (Expr.Etempvar _opt_lenb tulong) tint)
          (Stmt.Sset _t'9
            (Expr.Ecast
              (Expr.Ebinop Binop.One (Expr.Etempvar _buf (tptr tschar))
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (tptr tschar)) tint) tbool))
          (Stmt.Sset _t'9 (Expr.Econst_int (Integers.Int.repr 0) tint)))
        (Stmt.Sifthenelse (Expr.Etempvar _t'9 tint)
          (Stmt.Scall none
            (Expr.Evar __tr_stored_block (Ty.Tfunction
                                           [(tptr (Ty.Tstruct _internal_state noattr)),
                                            (tptr tschar), tulong, tint]
                                           tvoid cc_default))
            [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
             (Expr.Etempvar _buf (tptr tschar)),
             (Expr.Etempvar _stored_len tulong), (Expr.Etempvar _last tint)])
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                              (Expr.Etempvar _static_lenb tulong)
                              (Expr.Etempvar _opt_lenb tulong) tint)
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _len (Expr.Econst_int (Integers.Int.repr 3) tint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'24
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                      (Expr.Etempvar _t'24 tint)
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Ecast
                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                          tint) (Expr.Etempvar _len tint)
                                        tint) tint)
                    (Stmt.Ssequence
                      (Stmt.Sset _val
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oshl
                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                              tint) tint) (Expr.Etempvar _last tint) tint))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'34
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'35
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_valid tint))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_buf tushort)
                              (Expr.Ebinop Binop.Oor
                                (Expr.Etempvar _t'34 tushort)
                                (Expr.Ebinop Binop.Oshl
                                  (Expr.Ecast (Expr.Etempvar _val tint)
                                    tushort) (Expr.Etempvar _t'35 tint) tint)
                                tint))))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'5
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'5 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'32
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'33
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'32 (tptr tuchar))
                                        (Expr.Etempvar _t'5 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oand
                                          (Expr.Etempvar _t'33 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 255) tint)
                                          tint) tuchar) tuchar)))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'6
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'6 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'30
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'31
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'30 (tptr tuchar))
                                        (Expr.Etempvar _t'6 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oshr
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'31 tushort)
                                            tushort)
                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                          tint) tuchar) tuchar))))))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'29
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_buf tushort)
                                (Expr.Ebinop Binop.Oshr
                                  (Expr.Ecast (Expr.Etempvar _val tint)
                                    tushort)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    (Expr.Etempvar _t'29 tint) tint) tint)))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'28
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint)
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _t'28 tint)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _len tint)
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    tint) tint)))))))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'26
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'27
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _bi_valid tint))
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort)
                            (Expr.Ebinop Binop.Oor
                              (Expr.Etempvar _t'26 tushort)
                              (Expr.Ebinop Binop.Oshl
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) (Expr.Etempvar _last tint) tint)
                                  tushort) (Expr.Etempvar _t'27 tint) tint)
                              tint))))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'25
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint))
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint)
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'25 tint)
                            (Expr.Etempvar _len tint) tint)))))))
              (Stmt.Scall none
                (Expr.Evar _compress_block (Ty.Tfunction
                                             [(tptr (Ty.Tstruct _internal_state noattr)),
                                              (tptr (Ty.Tstruct _ct_data_s noattr)),
                                              (tptr (Ty.Tstruct _ct_data_s noattr))]
                                             tvoid cc_default))
                [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                 (Expr.Ecast
                   (Expr.Evar _static_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 288))
                   (tptr (Ty.Tstruct _ct_data_s noattr))),
                 (Expr.Ecast
                   (Expr.Evar _static_dtree (tarray (Ty.Tstruct _ct_data_s noattr) 30))
                   (tptr (Ty.Tstruct _ct_data_s noattr)))]))
            (Stmt.Ssequence
              (Stmt.Ssequence
                (Stmt.Sset _len__1
                  (Expr.Econst_int (Integers.Int.repr 3) tint))
                (Stmt.Ssequence
                  (Stmt.Sset _t'12
                    (Expr.Efield
                      (Expr.Ederef
                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                        (Ty.Tstruct _internal_state noattr)) _bi_valid tint))
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                      (Expr.Etempvar _t'12 tint)
                                      (Expr.Ebinop Binop.Osub
                                        (Expr.Ecast
                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                          tint) (Expr.Etempvar _len__1 tint)
                                        tint) tint)
                    (Stmt.Ssequence
                      (Stmt.Sset _val__1
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Ecast
                            (Expr.Ebinop Binop.Oshl
                              (Expr.Econst_int (Integers.Int.repr 2) tint)
                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                              tint) tint) (Expr.Etempvar _last tint) tint))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'22
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort))
                          (Stmt.Ssequence
                            (Stmt.Sset _t'23
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_valid tint))
                            (Stmt.Sassign
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _bi_buf tushort)
                              (Expr.Ebinop Binop.Oor
                                (Expr.Etempvar _t'22 tushort)
                                (Expr.Ebinop Binop.Oshl
                                  (Expr.Ecast (Expr.Etempvar _val__1 tint)
                                    tushort) (Expr.Etempvar _t'23 tint) tint)
                                tint))))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'7
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'7 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'20
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'21
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'20 (tptr tuchar))
                                        (Expr.Etempvar _t'7 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oand
                                          (Expr.Etempvar _t'21 tushort)
                                          (Expr.Econst_int (Integers.Int.repr 255) tint)
                                          tint) tuchar) tuchar)))))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'8
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong))
                                (Stmt.Sassign
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending tulong)
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'8 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 1) tint)
                                    tulong)))
                              (Stmt.Ssequence
                                (Stmt.Sset _t'18
                                  (Expr.Efield
                                    (Expr.Ederef
                                      (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                      (Ty.Tstruct _internal_state noattr))
                                    _pending_buf (tptr tuchar)))
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'19
                                    (Expr.Efield
                                      (Expr.Ederef
                                        (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                        (Ty.Tstruct _internal_state noattr))
                                      _bi_buf tushort))
                                  (Stmt.Sassign
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _t'18 (tptr tuchar))
                                        (Expr.Etempvar _t'8 tulong)
                                        (tptr tuchar)) tuchar)
                                    (Expr.Ecast
                                      (Expr.Ecast
                                        (Expr.Ebinop Binop.Oshr
                                          (Expr.Ecast
                                            (Expr.Etempvar _t'19 tushort)
                                            tushort)
                                          (Expr.Econst_int (Integers.Int.repr 8) tint)
                                          tint) tuchar) tuchar))))))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'17
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_buf tushort)
                                (Expr.Ebinop Binop.Oshr
                                  (Expr.Ecast (Expr.Etempvar _val__1 tint)
                                    tushort)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    (Expr.Etempvar _t'17 tint) tint) tint)))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'16
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint))
                              (Stmt.Sassign
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _bi_valid tint)
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _t'16 tint)
                                  (Expr.Ebinop Binop.Osub
                                    (Expr.Etempvar _len__1 tint)
                                    (Expr.Econst_int (Integers.Int.repr 16) tint)
                                    tint) tint)))))))
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'14
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_buf
                            tushort))
                        (Stmt.Ssequence
                          (Stmt.Sset _t'15
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr))
                              _bi_valid tint))
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Ederef
                                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                (Ty.Tstruct _internal_state noattr)) _bi_buf
                              tushort)
                            (Expr.Ebinop Binop.Oor
                              (Expr.Etempvar _t'14 tushort)
                              (Expr.Ebinop Binop.Oshl
                                (Expr.Ecast
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Econst_int (Integers.Int.repr 2) tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) (Expr.Etempvar _last tint) tint)
                                  tushort) (Expr.Etempvar _t'15 tint) tint)
                              tint))))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'13
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint))
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                              (Ty.Tstruct _internal_state noattr)) _bi_valid
                            tint)
                          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'13 tint)
                            (Expr.Etempvar _len__1 tint) tint)))))))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'10
                    (Expr.Efield
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _l_desc
                        (Ty.Tstruct _tree_desc_s noattr)) _max_code tint))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'11
                      (Expr.Efield
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                            (Ty.Tstruct _internal_state noattr)) _d_desc
                          (Ty.Tstruct _tree_desc_s noattr)) _max_code tint))
                    (Stmt.Scall none
                      (Expr.Evar _send_all_trees (Ty.Tfunction
                                                   [(tptr (Ty.Tstruct _internal_state noattr)),
                                                    tint, tint, tint] tvoid
                                                   cc_default))
                      [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                       (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'10 tint)
                         (Expr.Econst_int (Integers.Int.repr 1) tint) tint),
                       (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'11 tint)
                         (Expr.Econst_int (Integers.Int.repr 1) tint) tint),
                       (Expr.Ebinop Binop.Oadd
                         (Expr.Etempvar _max_blindex tint)
                         (Expr.Econst_int (Integers.Int.repr 1) tint) tint)])))
                (Stmt.Scall none
                  (Expr.Evar _compress_block (Ty.Tfunction
                                               [(tptr (Ty.Tstruct _internal_state noattr)),
                                                (tptr (Ty.Tstruct _ct_data_s noattr)),
                                                (tptr (Ty.Tstruct _ct_data_s noattr))]
                                               tvoid cc_default))
                  [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr))),
                   (Expr.Ecast
                     (Expr.Efield
                       (Expr.Ederef
                         (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                         (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                       (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                     (tptr (Ty.Tstruct _ct_data_s noattr))),
                   (Expr.Ecast
                     (Expr.Efield
                       (Expr.Ederef
                         (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                         (Ty.Tstruct _internal_state noattr)) _dyn_dtree
                       (tarray (Ty.Tstruct _ct_data_s noattr) 61))
                     (tptr (Ty.Tstruct _ct_data_s noattr)))]))))))
      (Stmt.Ssequence
        (Stmt.Scall none
          (Expr.Evar _init_block (Ty.Tfunction
                                   [(tptr (Ty.Tstruct _internal_state noattr))]
                                   tvoid cc_default))
          [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
        (Stmt.Sifthenelse (Expr.Etempvar _last tint)
          (Stmt.Scall none
            (Expr.Evar _bi_windup (Ty.Tfunction
                                    [(tptr (Ty.Tstruct _internal_state noattr))]
                                    tvoid cc_default))
            [(Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))])
          Stmt.Sskip)))))
}

def f__tr_tally : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_s, (tptr (Ty.Tstruct _internal_state noattr))),
                (_dist, tuint), (_lc, tuint)],
  fn_vars := [],
  fn_temps := [(_t'4, tint), (_t'3, tuint), (_t'2, tuint), (_t'1, tuint),
               (_t'17, (tptr tuchar)), (_t'16, (tptr tuchar)),
               (_t'15, (tptr tuchar)), (_t'14, tushort), (_t'13, tuint),
               (_t'12, tushort), (_t'11, tuchar), (_t'10, tuchar),
               (_t'9, tuchar), (_t'8, tuchar), (_t'7, tushort),
               (_t'6, tuint), (_t'5, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Sset _t'1
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
      (Stmt.Sassign
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _sym_next tuint)
        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'1 tuint)
          (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
    (Stmt.Ssequence
      (Stmt.Sset _t'17
        (Expr.Efield
          (Expr.Ederef
            (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr)) _sym_buf (tptr tuchar)))
      (Stmt.Sassign
        (Expr.Ederef
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'17 (tptr tuchar))
            (Expr.Etempvar _t'1 tuint) (tptr tuchar)) tuchar)
        (Expr.Ecast (Expr.Etempvar _dist tuint) tuchar))))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'2
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
        (Stmt.Sassign
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _sym_next tuint)
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'2 tuint)
            (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
      (Stmt.Ssequence
        (Stmt.Sset _t'16
          (Expr.Efield
            (Expr.Ederef
              (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr)) _sym_buf (tptr tuchar)))
        (Stmt.Sassign
          (Expr.Ederef
            (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'16 (tptr tuchar))
              (Expr.Etempvar _t'2 tuint) (tptr tuchar)) tuchar)
          (Expr.Ecast
            (Expr.Ebinop Binop.Oshr (Expr.Etempvar _dist tuint)
              (Expr.Econst_int (Integers.Int.repr 8) tint) tuint) tuchar))))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sset _t'3
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
          (Stmt.Sassign
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _sym_next tuint)
            (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'3 tuint)
              (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
        (Stmt.Ssequence
          (Stmt.Sset _t'15
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _sym_buf (tptr tuchar)))
          (Stmt.Sassign
            (Expr.Ederef
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'15 (tptr tuchar))
                (Expr.Etempvar _t'3 tuint) (tptr tuchar)) tuchar)
            (Expr.Ecast (Expr.Etempvar _lc tuint) tuchar))))
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _dist tuint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                            tint)
          (Stmt.Ssequence
            (Stmt.Sset _t'14
              (Expr.Efield
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Efield
                        (Expr.Ederef
                          (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                          (Ty.Tstruct _internal_state noattr)) _dyn_ltree
                        (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                      (Expr.Etempvar _lc tuint)
                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                    (Ty.Tstruct _ct_data_s noattr)) _fc
                  (Ty.Tunion __1354 noattr)) _freq tushort))
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
                      (Expr.Etempvar _lc tuint)
                      (tptr (Ty.Tstruct _ct_data_s noattr)))
                    (Ty.Tstruct _ct_data_s noattr)) _fc
                  (Ty.Tunion __1354 noattr)) _freq tushort)
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'14 tushort)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))
          (Stmt.Ssequence
            (Stmt.Ssequence
              (Stmt.Sset _t'13
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _matches tuint))
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Ederef
                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                    (Ty.Tstruct _internal_state noattr)) _matches tuint)
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'13 tuint)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tuint)))
            (Stmt.Ssequence
              (Stmt.Sset _dist
                (Expr.Ebinop Binop.Osub (Expr.Etempvar _dist tuint)
                  (Expr.Econst_int (Integers.Int.repr 1) tint) tuint))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Sset _t'10
                    (Expr.Ederef
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Evar __length_code (tarray tuchar 256))
                        (Expr.Etempvar _lc tuint) (tptr tuchar)) tuchar))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'11
                      (Expr.Ederef
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Evar __length_code (tarray tuchar 256))
                          (Expr.Etempvar _lc tuint) (tptr tuchar)) tuchar))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'12
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _dyn_ltree
                                  (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'11 tuchar)
                                    (Expr.Econst_int (Integers.Int.repr 256) tint)
                                    tint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _fc
                            (Ty.Tunion __1354 noattr)) _freq tushort))
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Efield
                            (Expr.Ederef
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Efield
                                  (Expr.Ederef
                                    (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                    (Ty.Tstruct _internal_state noattr))
                                  _dyn_ltree
                                  (tarray (Ty.Tstruct _ct_data_s noattr) 573))
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _t'10 tuchar)
                                    (Expr.Econst_int (Integers.Int.repr 256) tint)
                                    tint)
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  tint)
                                (tptr (Ty.Tstruct _ct_data_s noattr)))
                              (Ty.Tstruct _ct_data_s noattr)) _fc
                            (Ty.Tunion __1354 noattr)) _freq tushort)
                        (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'12 tushort)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)))))
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                                      (Expr.Etempvar _dist tuint)
                                      (Expr.Econst_int (Integers.Int.repr 256) tint)
                                      tint)
                    (Stmt.Ssequence
                      (Stmt.Sset _t'9
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Evar __dist_code (tarray tuchar 512))
                            (Expr.Etempvar _dist tuint) (tptr tuchar))
                          tuchar))
                      (Stmt.Sset _t'4
                        (Expr.Ecast (Expr.Etempvar _t'9 tuchar) tint)))
                    (Stmt.Ssequence
                      (Stmt.Sset _t'8
                        (Expr.Ederef
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Evar __dist_code (tarray tuchar 512))
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Econst_int (Integers.Int.repr 256) tint)
                              (Expr.Ebinop Binop.Oshr
                                (Expr.Etempvar _dist tuint)
                                (Expr.Econst_int (Integers.Int.repr 7) tint)
                                tuint) tuint) (tptr tuchar)) tuchar))
                      (Stmt.Sset _t'4
                        (Expr.Ecast (Expr.Etempvar _t'8 tuchar) tint))))
                  (Stmt.Ssequence
                    (Stmt.Sset _t'7
                      (Expr.Efield
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _dyn_dtree
                                (tarray (Ty.Tstruct _ct_data_s noattr) 61))
                              (Expr.Etempvar _t'4 tint)
                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Ty.Tstruct _ct_data_s noattr)) _fc
                          (Ty.Tunion __1354 noattr)) _freq tushort))
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Efield
                          (Expr.Ederef
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Efield
                                (Expr.Ederef
                                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                                  (Ty.Tstruct _internal_state noattr))
                                _dyn_dtree
                                (tarray (Ty.Tstruct _ct_data_s noattr) 61))
                              (Expr.Etempvar _t'4 tint)
                              (tptr (Ty.Tstruct _ct_data_s noattr)))
                            (Ty.Tstruct _ct_data_s noattr)) _fc
                          (Ty.Tunion __1354 noattr)) _freq tushort)
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _t'7 tushort)
                        (Expr.Econst_int (Integers.Int.repr 1) tint) tint))))))))
        (Stmt.Ssequence
          (Stmt.Sset _t'5
            (Expr.Efield
              (Expr.Ederef
                (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr)) _sym_next tuint))
          (Stmt.Ssequence
            (Stmt.Sset _t'6
              (Expr.Efield
                (Expr.Ederef
                  (Expr.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                  (Ty.Tstruct _internal_state noattr)) _sym_end tuint))
            (Stmt.Sreturn (some (Expr.Ebinop Binop.Oeq
                                  (Expr.Etempvar _t'5 tuint)
                                  (Expr.Etempvar _t'6 tuint) tint)))))))))
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
   noattr),
 (CompositeDef.Composite _static_tree_desc_s SU.Struct
   [(Member.Member_plain _static_tree (tptr (Ty.Tstruct _ct_data_s noattr))),
    (Member.Member_plain _extra_bits (tptr tint)),
    (Member.Member_plain _extra_base tint),
    (Member.Member_plain _elems tint),
    (Member.Member_plain _max_length tint)]
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
 (_memcpy,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "memcpy"
                                   (mksignature
                                     [XType.Xptr, XType.Xptr, XType.Xlong]
                                     XType.Xptr cc_default))
     [(tptr tvoid), (tptr tvoid), tulong] (tptr tvoid) cc_default)),
 (_extra_lbits, GlobDef.Gvar v_extra_lbits),
 (_extra_dbits, GlobDef.Gvar v_extra_dbits),
 (_extra_blbits, GlobDef.Gvar v_extra_blbits),
 (_bl_order, GlobDef.Gvar v_bl_order),
 (_static_ltree, GlobDef.Gvar v_static_ltree),
 (_static_dtree, GlobDef.Gvar v_static_dtree),
 (__dist_code, GlobDef.Gvar v__dist_code),
 (__length_code, GlobDef.Gvar v__length_code),
 (_base_length, GlobDef.Gvar v_base_length),
 (_base_dist, GlobDef.Gvar v_base_dist),
 (_static_l_desc, GlobDef.Gvar v_static_l_desc),
 (_static_d_desc, GlobDef.Gvar v_static_d_desc),
 (_static_bl_desc, GlobDef.Gvar v_static_bl_desc),
 (_bi_reverse, GlobDef.Gfun (FunDef.Internal f_bi_reverse)),
 (_bi_flush, GlobDef.Gfun (FunDef.Internal f_bi_flush)),
 (_bi_windup, GlobDef.Gfun (FunDef.Internal f_bi_windup)),
 (_gen_codes, GlobDef.Gfun (FunDef.Internal f_gen_codes)),
 (_tr_static_init, GlobDef.Gfun (FunDef.Internal f_tr_static_init)),
 (_init_block, GlobDef.Gfun (FunDef.Internal f_init_block)),
 (__tr_init, GlobDef.Gfun (FunDef.Internal f__tr_init)),
 (_pqdownheap, GlobDef.Gfun (FunDef.Internal f_pqdownheap)),
 (_gen_bitlen, GlobDef.Gfun (FunDef.Internal f_gen_bitlen)),
 (_build_tree, GlobDef.Gfun (FunDef.Internal f_build_tree)),
 (_scan_tree, GlobDef.Gfun (FunDef.Internal f_scan_tree)),
 (_send_tree, GlobDef.Gfun (FunDef.Internal f_send_tree)),
 (_build_bl_tree, GlobDef.Gfun (FunDef.Internal f_build_bl_tree)),
 (_send_all_trees, GlobDef.Gfun (FunDef.Internal f_send_all_trees)),
 (__tr_stored_block, GlobDef.Gfun (FunDef.Internal f__tr_stored_block)),
 (__tr_flush_bits, GlobDef.Gfun (FunDef.Internal f__tr_flush_bits)),
 (__tr_align, GlobDef.Gfun (FunDef.Internal f__tr_align)),
 (_compress_block, GlobDef.Gfun (FunDef.Internal f_compress_block)),
 (_detect_data_type, GlobDef.Gfun (FunDef.Internal f_detect_data_type)),
 (__tr_flush_block, GlobDef.Gfun (FunDef.Internal f__tr_flush_block)),
 (__tr_tally, GlobDef.Gfun (FunDef.Internal f__tr_tally))]

def public_idents : List Ident :=
[__tr_tally, __tr_flush_block, __tr_align, __tr_flush_bits,
 __tr_stored_block, __tr_init, __length_code, __dist_code, _memcpy,
 ___builtin_debug, ___builtin_fmin, ___builtin_fmax, ___builtin_fnmsub,
 ___builtin_fnmadd, ___builtin_fmsub, ___builtin_fmadd, ___builtin_clsll,
 ___builtin_clsl, ___builtin_cls, ___builtin_expect, ___builtin_unreachable,
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

end Trees

