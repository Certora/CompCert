import Clightdefs
open CC

namespace Compress

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
  def source_file : String := "compress.c"
  def normalized : Bool := true
end Info

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
def _adler : Ident := identOfString "adler"
def _avail_in : Ident := identOfString "avail_in"
def _avail_out : Ident := identOfString "avail_out"
def _bound : Ident := identOfString "bound"
def _compress : Ident := identOfString "compress"
def _compress2 : Ident := identOfString "compress2"
def _compress2_z : Ident := identOfString "compress2_z"
def _compressBound : Ident := identOfString "compressBound"
def _compressBound_z : Ident := identOfString "compressBound_z"
def _compress_z : Ident := identOfString "compress_z"
def _data_type : Ident := identOfString "data_type"
def _deflate : Ident := identOfString "deflate"
def _deflateEnd : Ident := identOfString "deflateEnd"
def _deflateInit_ : Ident := identOfString "deflateInit_"
def _dest : Ident := identOfString "dest"
def _destLen : Ident := identOfString "destLen"
def _err : Ident := identOfString "err"
def _got : Ident := identOfString "got"
def _internal_state : Ident := identOfString "internal_state"
def _left : Ident := identOfString "left"
def _level : Ident := identOfString "level"
def _main : Ident := identOfString "main"
def _max : Ident := identOfString "max"
def _msg : Ident := identOfString "msg"
def _next_in : Ident := identOfString "next_in"
def _next_out : Ident := identOfString "next_out"
def _opaque : Ident := identOfString "opaque"
def _reserved : Ident := identOfString "reserved"
def _ret : Ident := identOfString "ret"
def _source : Ident := identOfString "source"
def _sourceLen : Ident := identOfString "sourceLen"
def _state : Ident := identOfString "state"
def _stream : Ident := identOfString "stream"
def _total_in : Ident := identOfString "total_in"
def _total_out : Ident := identOfString "total_out"
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
def _t'2 : Ident := (Positive.ofNat 129)
def _t'3 : Ident := (Positive.ofNat 130)
def _t'4 : Ident := (Positive.ofNat 131)
def _t'5 : Ident := (Positive.ofNat 132)
def _t'6 : Ident := (Positive.ofNat 133)
def _t'7 : Ident := (Positive.ofNat 134)
def _t'8 : Ident := (Positive.ofNat 135)
def _t'9 : Ident := (Positive.ofNat 136)

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

def f_compress2_z : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_dest, (tptr tuchar)), (_destLen, (tptr tulong)),
                (_source, (tptr tuchar)), (_sourceLen, tulong),
                (_level, tint)],
  fn_vars := [(_stream, (Ty.Tstruct _z_stream_s noattr))],
  fn_temps := [(_err, tint), (_max, tuint), (_left, tulong), (_t'9, tint),
               (_t'8, tint), (_t'7, tint), (_t'6, tuint), (_t'5, tuint),
               (_t'4, tint), (_t'3, tint), (_t'2, tint), (_t'1, tint),
               (_t'15, tulong), (_t'14, tuint), (_t'13, tuint),
               (_t'12, tuint), (_t'11, tuint), (_t'10, (tptr tuchar))],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _max
    (Expr.Ecast
      (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint)
        tint) tuint))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                              (Expr.Etempvar _sourceLen tulong)
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              tint)
            (Stmt.Sset _t'1
              (Expr.Ecast
                (Expr.Ebinop Binop.Oeq (Expr.Etempvar _source (tptr tuchar))
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    (tptr tvoid)) tint) tbool))
            (Stmt.Sset _t'1 (Expr.Econst_int (Integers.Int.repr 0) tint)))
          (Stmt.Sifthenelse (Expr.Etempvar _t'1 tint)
            (Stmt.Sset _t'2 (Expr.Econst_int (Integers.Int.repr 1) tint))
            (Stmt.Sset _t'2
              (Expr.Ecast
                (Expr.Ebinop Binop.Oeq (Expr.Etempvar _destLen (tptr tulong))
                  (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                    (tptr tvoid)) tint) tbool))))
        (Stmt.Sifthenelse (Expr.Etempvar _t'2 tint)
          (Stmt.Sset _t'3 (Expr.Econst_int (Integers.Int.repr 1) tint))
          (Stmt.Ssequence
            (Stmt.Sset _t'15
              (Expr.Ederef (Expr.Etempvar _destLen (tptr tulong)) tulong))
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                (Expr.Etempvar _t'15 tulong)
                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                tint)
              (Stmt.Ssequence
                (Stmt.Sset _t'3
                  (Expr.Ecast
                    (Expr.Ebinop Binop.Oeq
                      (Expr.Etempvar _dest (tptr tuchar))
                      (Expr.Ecast
                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                        (tptr tvoid)) tint) tbool))
                (Stmt.Sset _t'3 (Expr.Ecast (Expr.Etempvar _t'3 tint) tbool)))
              (Stmt.Sset _t'3
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  tbool))))))
      (Stmt.Sifthenelse (Expr.Etempvar _t'3 tint)
        (Stmt.Sreturn (some (Expr.Eunop Unop.Oneg
                              (Expr.Econst_int (Integers.Int.repr 2) tint)
                              tint)))
        Stmt.Sskip))
    (Stmt.Ssequence
      (Stmt.Sset _left
        (Expr.Ederef (Expr.Etempvar _destLen (tptr tulong)) tulong))
      (Stmt.Ssequence
        (Stmt.Sassign
          (Expr.Ederef (Expr.Etempvar _destLen (tptr tulong)) tulong)
          (Expr.Econst_int (Integers.Int.repr 0) tint))
        (Stmt.Ssequence
          (Stmt.Sassign
            (Expr.Efield (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
              _zalloc
              (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                      cc_default)))
            (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
              (tptr (Ty.Tfunction [(tptr tvoid), tuint, tuint] (tptr tvoid)
                      cc_default))))
          (Stmt.Ssequence
            (Stmt.Sassign
              (Expr.Efield
                (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr)) _zfree
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default)))
              (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                (tptr (Ty.Tfunction [(tptr tvoid), (tptr tvoid)] tvoid
                        cc_default))))
            (Stmt.Ssequence
              (Stmt.Sassign
                (Expr.Efield
                  (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr)) _opaque
                  (tptr tvoid))
                (Expr.Ecast (Expr.Econst_int (Integers.Int.repr 0) tint)
                  (tptr tvoid)))
              (Stmt.Ssequence
                (Stmt.Ssequence
                  (Stmt.Scall (some _t'4)
                    (Expr.Evar _deflateInit_ (Ty.Tfunction
                                               [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                                tint, (tptr tschar), tint]
                                               tint cc_default))
                    [(Expr.Eaddrof
                       (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                       (tptr (Ty.Tstruct _z_stream_s noattr))),
                     (Expr.Etempvar _level tint),
                     (Expr.Evar ___stringlit_1 (tarray tschar 6)),
                     (Expr.Ecast
                       (Expr.Esizeof (Ty.Tstruct _z_stream_s noattr) tulong)
                       tint)])
                  (Stmt.Sset _err (Expr.Etempvar _t'4 tint)))
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                                      (Expr.Etempvar _err tint)
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      tint)
                    (Stmt.Sreturn (some (Expr.Etempvar _err tint)))
                    Stmt.Sskip)
                  (Stmt.Ssequence
                    (Stmt.Sassign
                      (Expr.Efield
                        (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                        _next_out (tptr tuchar))
                      (Expr.Etempvar _dest (tptr tuchar)))
                    (Stmt.Ssequence
                      (Stmt.Sassign
                        (Expr.Efield
                          (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                          _avail_out tuint)
                        (Expr.Econst_int (Integers.Int.repr 0) tint))
                      (Stmt.Ssequence
                        (Stmt.Sassign
                          (Expr.Efield
                            (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                            _next_in (tptr tuchar))
                          (Expr.Ecast (Expr.Etempvar _source (tptr tuchar))
                            (tptr tuchar)))
                        (Stmt.Ssequence
                          (Stmt.Sassign
                            (Expr.Efield
                              (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                              _avail_in tuint)
                            (Expr.Econst_int (Integers.Int.repr 0) tint))
                          (Stmt.Ssequence
                            (Stmt.Sloop
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'13
                                    (Expr.Efield
                                      (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                      _avail_out tuint))
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                      (Expr.Etempvar _t'13 tuint)
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      tint)
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                            (Expr.Etempvar _left tulong)
                                                            (Expr.Ecast
                                                              (Expr.Etempvar _max tuint)
                                                              tulong) tint)
                                          (Stmt.Sset _t'5
                                            (Expr.Ecast
                                              (Expr.Etempvar _max tuint)
                                              tuint))
                                          (Stmt.Sset _t'5
                                            (Expr.Ecast
                                              (Expr.Ecast
                                                (Expr.Etempvar _left tulong)
                                                tuint) tuint)))
                                        (Stmt.Sassign
                                          (Expr.Efield
                                            (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                            _avail_out tuint)
                                          (Expr.Etempvar _t'5 tuint)))
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'14
                                          (Expr.Efield
                                            (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                            _avail_out tuint))
                                        (Stmt.Sset _left
                                          (Expr.Ebinop Binop.Osub
                                            (Expr.Etempvar _left tulong)
                                            (Expr.Etempvar _t'14 tuint)
                                            tulong))))
                                    Stmt.Sskip))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'11
                                      (Expr.Efield
                                        (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                        _avail_in tuint))
                                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                        (Expr.Etempvar _t'11 tuint)
                                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                        tint)
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sifthenelse (Expr.Ebinop Binop.Ogt
                                                              (Expr.Etempvar _sourceLen tulong)
                                                              (Expr.Ecast
                                                                (Expr.Etempvar _max tuint)
                                                                tulong) tint)
                                            (Stmt.Sset _t'6
                                              (Expr.Ecast
                                                (Expr.Etempvar _max tuint)
                                                tuint))
                                            (Stmt.Sset _t'6
                                              (Expr.Ecast
                                                (Expr.Ecast
                                                  (Expr.Etempvar _sourceLen tulong)
                                                  tuint) tuint)))
                                          (Stmt.Sassign
                                            (Expr.Efield
                                              (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                              _avail_in tuint)
                                            (Expr.Etempvar _t'6 tuint)))
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'12
                                            (Expr.Efield
                                              (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                              _avail_in tuint))
                                          (Stmt.Sset _sourceLen
                                            (Expr.Ebinop Binop.Osub
                                              (Expr.Etempvar _sourceLen tulong)
                                              (Expr.Etempvar _t'12 tuint)
                                              tulong))))
                                      Stmt.Sskip))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sifthenelse (Expr.Etempvar _sourceLen tulong)
                                        (Stmt.Sset _t'7
                                          (Expr.Ecast
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            tint))
                                        (Stmt.Sset _t'7
                                          (Expr.Ecast
                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                            tint)))
                                      (Stmt.Scall (some _t'8)
                                        (Expr.Evar _deflate (Ty.Tfunction
                                                              [(tptr (Ty.Tstruct _z_stream_s noattr)),
                                                               tint] tint
                                                              cc_default))
                                        [(Expr.Eaddrof
                                           (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                           (tptr (Ty.Tstruct _z_stream_s noattr))),
                                         (Expr.Etempvar _t'7 tint)]))
                                    (Stmt.Sset _err
                                      (Expr.Etempvar _t'8 tint)))))
                              (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                  (Expr.Etempvar _err tint)
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  tint)
                                Stmt.Sskip
                                Stmt.Sbreak))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'10
                                  (Expr.Efield
                                    (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                    _next_out (tptr tuchar)))
                                (Stmt.Sassign
                                  (Expr.Ederef
                                    (Expr.Etempvar _destLen (tptr tulong))
                                    tulong)
                                  (Expr.Ecast
                                    (Expr.Ebinop Binop.Osub
                                      (Expr.Etempvar _t'10 (tptr tuchar))
                                      (Expr.Etempvar _dest (tptr tuchar))
                                      tlong) tulong)))
                              (Stmt.Ssequence
                                (Stmt.Scall none
                                  (Expr.Evar _deflateEnd (Ty.Tfunction
                                                           [(tptr (Ty.Tstruct _z_stream_s noattr))]
                                                           tint cc_default))
                                  [(Expr.Eaddrof
                                     (Expr.Evar _stream (Ty.Tstruct _z_stream_s noattr))
                                     (tptr (Ty.Tstruct _z_stream_s noattr)))])
                                (Stmt.Ssequence
                                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                                                      (Expr.Etempvar _err tint)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint)
                                    (Stmt.Sset _t'9
                                      (Expr.Ecast
                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                        tint))
                                    (Stmt.Sset _t'9
                                      (Expr.Ecast (Expr.Etempvar _err tint)
                                        tint)))
                                  (Stmt.Sreturn (some (Expr.Etempvar _t'9 tint))))))))))))))))))))
}

def f_compress2 : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_dest, (tptr tuchar)), (_destLen, (tptr tulong)),
                (_source, (tptr tuchar)), (_sourceLen, tulong),
                (_level, tint)],
  fn_vars := [(_got, tulong)],
  fn_temps := [(_ret, tint), (_t'1, tint), (_t'3, tulong), (_t'2, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Sset _t'3
      (Expr.Ederef (Expr.Etempvar _destLen (tptr tulong)) tulong))
    (Stmt.Sassign (Expr.Evar _got tulong) (Expr.Etempvar _t'3 tulong)))
  (Stmt.Ssequence
    (Stmt.Ssequence
      (Stmt.Scall (some _t'1)
        (Expr.Evar _compress2_z (Ty.Tfunction
                                  [(tptr tuchar), (tptr tulong),
                                   (tptr tuchar), tulong, tint] tint
                                  cc_default))
        [(Expr.Etempvar _dest (tptr tuchar)),
         (Expr.Eaddrof (Expr.Evar _got tulong) (tptr tulong)),
         (Expr.Etempvar _source (tptr tuchar)),
         (Expr.Etempvar _sourceLen tulong), (Expr.Etempvar _level tint)])
      (Stmt.Sset _ret (Expr.Etempvar _t'1 tint)))
    (Stmt.Ssequence
      (Stmt.Ssequence
        (Stmt.Sset _t'2 (Expr.Evar _got tulong))
        (Stmt.Sassign
          (Expr.Ederef (Expr.Etempvar _destLen (tptr tulong)) tulong)
          (Expr.Ecast (Expr.Etempvar _t'2 tulong) tulong)))
      (Stmt.Sreturn (some (Expr.Etempvar _ret tint))))))
}

def f_compress_z : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_dest, (tptr tuchar)), (_destLen, (tptr tulong)),
                (_source, (tptr tuchar)), (_sourceLen, tulong)],
  fn_vars := [],
  fn_temps := [(_t'1, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _compress2_z (Ty.Tfunction
                              [(tptr tuchar), (tptr tulong), (tptr tuchar),
                               tulong, tint] tint cc_default))
    [(Expr.Etempvar _dest (tptr tuchar)),
     (Expr.Etempvar _destLen (tptr tulong)),
     (Expr.Etempvar _source (tptr tuchar)),
     (Expr.Etempvar _sourceLen tulong),
     (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint) tint)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tint))))
}

def f_compress : Function := {
  fn_return := tint,
  fn_callconv := cc_default,
  fn_params := [(_dest, (tptr tuchar)), (_destLen, (tptr tulong)),
                (_source, (tptr tuchar)), (_sourceLen, tulong)],
  fn_vars := [],
  fn_temps := [(_t'1, tint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _compress2 (Ty.Tfunction
                            [(tptr tuchar), (tptr tulong), (tptr tuchar),
                             tulong, tint] tint cc_default))
    [(Expr.Etempvar _dest (tptr tuchar)),
     (Expr.Etempvar _destLen (tptr tulong)),
     (Expr.Etempvar _source (tptr tuchar)),
     (Expr.Etempvar _sourceLen tulong),
     (Expr.Eunop Unop.Oneg (Expr.Econst_int (Integers.Int.repr 1) tint) tint)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tint))))
}

def f_compressBound_z : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_sourceLen, tulong)],
  fn_vars := [],
  fn_temps := [(_bound, tulong), (_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _bound
    (Expr.Ebinop Binop.Oadd
      (Expr.Ebinop Binop.Oadd
        (Expr.Ebinop Binop.Oadd
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sourceLen tulong)
            (Expr.Ebinop Binop.Oshr (Expr.Etempvar _sourceLen tulong)
              (Expr.Econst_int (Integers.Int.repr 12) tint) tulong) tulong)
          (Expr.Ebinop Binop.Oshr (Expr.Etempvar _sourceLen tulong)
            (Expr.Econst_int (Integers.Int.repr 14) tint) tulong) tulong)
        (Expr.Ebinop Binop.Oshr (Expr.Etempvar _sourceLen tulong)
          (Expr.Econst_int (Integers.Int.repr 25) tint) tulong) tulong)
      (Expr.Econst_int (Integers.Int.repr 13) tint) tulong))
  (Stmt.Ssequence
    (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _bound tulong)
                        (Expr.Etempvar _sourceLen tulong) tint)
      (Stmt.Sset _t'1
        (Expr.Ecast
          (Expr.Ecast
            (Expr.Eunop Unop.Oneg
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint) tulong)
          tulong))
      (Stmt.Sset _t'1 (Expr.Ecast (Expr.Etempvar _bound tulong) tulong)))
    (Stmt.Sreturn (some (Expr.Etempvar _t'1 tulong)))))
}

def f_compressBound : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_sourceLen, tulong)],
  fn_vars := [],
  fn_temps := [(_bound, tulong), (_t'2, tulong), (_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Ssequence
    (Stmt.Scall (some _t'1)
      (Expr.Evar _compressBound_z (Ty.Tfunction [tulong] tulong cc_default))
      [(Expr.Etempvar _sourceLen tulong)])
    (Stmt.Sset _bound (Expr.Etempvar _t'1 tulong)))
  (Stmt.Ssequence
    (Stmt.Sifthenelse (Expr.Ebinop Binop.One
                        (Expr.Ecast (Expr.Etempvar _bound tulong) tulong)
                        (Expr.Etempvar _bound tulong) tint)
      (Stmt.Sset _t'2
        (Expr.Ecast
          (Expr.Ecast
            (Expr.Eunop Unop.Oneg
              (Expr.Econst_int (Integers.Int.repr 1) tint) tint) tulong)
          tulong))
      (Stmt.Sset _t'2
        (Expr.Ecast (Expr.Ecast (Expr.Etempvar _bound tulong) tulong) tulong)))
    (Stmt.Sreturn (some (Expr.Etempvar _t'2 tulong)))))
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
 (___stringlit_1, GlobDef.Gvar v___stringlit_1),
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
 (_deflate,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "deflate"
                                   (mksignature [XType.Xptr, XType.Xint]
                                     XType.Xint cc_default))
     [(tptr (Ty.Tstruct _z_stream_s noattr)), tint] tint cc_default)),
 (_deflateEnd,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "deflateEnd"
                                   (mksignature [XType.Xptr] XType.Xint
                                     cc_default))
     [(tptr (Ty.Tstruct _z_stream_s noattr))] tint cc_default)),
 (_deflateInit_,
   GlobDef.Gfun (FunDef.External (ExtFun.EF_external "deflateInit_"
                                   (mksignature
                                     [XType.Xptr, XType.Xint, XType.Xptr,
                                      XType.Xint] XType.Xint cc_default))
     [(tptr (Ty.Tstruct _z_stream_s noattr)), tint, (tptr tschar), tint] tint
     cc_default)),
 (_compress2_z, GlobDef.Gfun (FunDef.Internal f_compress2_z)),
 (_compress2, GlobDef.Gfun (FunDef.Internal f_compress2)),
 (_compress_z, GlobDef.Gfun (FunDef.Internal f_compress_z)),
 (_compress, GlobDef.Gfun (FunDef.Internal f_compress)),
 (_compressBound_z, GlobDef.Gfun (FunDef.Internal f_compressBound_z)),
 (_compressBound, GlobDef.Gfun (FunDef.Internal f_compressBound))]

def public_idents : List Ident :=
[_compressBound, _compressBound_z, _compress, _compress_z, _compress2,
 _compress2_z, _deflateInit_, _deflateEnd, _deflate, ___builtin_debug,
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

end Compress

