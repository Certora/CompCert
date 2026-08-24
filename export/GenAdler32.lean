import Clightdefs
open CC

namespace Adler32

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
  def source_file : String := "adler32.c"
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
def _adler : Ident := identOfString "adler"
def _adler1 : Ident := identOfString "adler1"
def _adler2 : Ident := identOfString "adler2"
def _adler32 : Ident := identOfString "adler32"
def _adler32_combine : Ident := identOfString "adler32_combine"
def _adler32_combine64 : Ident := identOfString "adler32_combine64"
def _adler32_combine_ : Ident := identOfString "adler32_combine_"
def _adler32_z : Ident := identOfString "adler32_z"
def _buf : Ident := identOfString "buf"
def _len : Ident := identOfString "len"
def _len2 : Ident := identOfString "len2"
def _main : Ident := identOfString "main"
def _n : Ident := identOfString "n"
def _rem : Ident := identOfString "rem"
def _sum1 : Ident := identOfString "sum1"
def _sum2 : Ident := identOfString "sum2"
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
def _t'5 : Ident := (Positive.ofNat 132)
def _t'6 : Ident := (Positive.ofNat 133)
def _t'7 : Ident := (Positive.ofNat 134)
def _t'8 : Ident := (Positive.ofNat 135)
def _t'9 : Ident := (Positive.ofNat 136)

def f_adler32_z : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_adler, tulong), (_buf, (tptr tuchar)), (_len, tulong)],
  fn_vars := [],
  fn_temps := [(_sum2, tulong), (_n, tuint), (_t'5, (tptr tuchar)),
               (_t'4, tulong), (_t'3, tuint), (_t'2, (tptr tuchar)),
               (_t'1, tulong), (_t'40, tuchar), (_t'39, tuchar),
               (_t'38, tuchar), (_t'37, tuchar), (_t'36, tuchar),
               (_t'35, tuchar), (_t'34, tuchar), (_t'33, tuchar),
               (_t'32, tuchar), (_t'31, tuchar), (_t'30, tuchar),
               (_t'29, tuchar), (_t'28, tuchar), (_t'27, tuchar),
               (_t'26, tuchar), (_t'25, tuchar), (_t'24, tuchar),
               (_t'23, tuchar), (_t'22, tuchar), (_t'21, tuchar),
               (_t'20, tuchar), (_t'19, tuchar), (_t'18, tuchar),
               (_t'17, tuchar), (_t'16, tuchar), (_t'15, tuchar),
               (_t'14, tuchar), (_t'13, tuchar), (_t'12, tuchar),
               (_t'11, tuchar), (_t'10, tuchar), (_t'9, tuchar),
               (_t'8, tuchar), (_t'7, tuchar), (_t'6, tuchar)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sset _sum2
    (Expr.Ebinop Binop.Oand
      (Expr.Ebinop Binop.Oshr (Expr.Etempvar _adler tulong)
        (Expr.Econst_int (Integers.Int.repr 16) tint) tulong)
      (Expr.Econst_int (Integers.Int.repr 65535) tint) tulong))
  (Stmt.Ssequence
    (Stmt.Sset _adler
      (Expr.Ebinop Binop.Oand (Expr.Etempvar _adler tulong)
        (Expr.Econst_int (Integers.Int.repr 65535) tint) tulong))
    (Stmt.Ssequence
      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq (Expr.Etempvar _len tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
        (Stmt.Ssequence
          (Stmt.Ssequence
            (Stmt.Sset _t'40
              (Expr.Ederef
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _buf (tptr tuchar))
                  (Expr.Econst_int (Integers.Int.repr 0) tint) (tptr tuchar))
                tuchar))
            (Stmt.Sset _adler
              (Expr.Ebinop Binop.Oadd (Expr.Etempvar _adler tulong)
                (Expr.Etempvar _t'40 tuchar) tulong)))
          (Stmt.Ssequence
            (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                (Expr.Etempvar _adler tulong)
                                (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                tint)
              (Stmt.Sset _adler
                (Expr.Ebinop Binop.Osub (Expr.Etempvar _adler tulong)
                  (Expr.Econst_int (Integers.Int.repr 65521) tuint) tulong))
              Stmt.Sskip)
            (Stmt.Ssequence
              (Stmt.Sset _sum2
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sum2 tulong)
                  (Expr.Etempvar _adler tulong) tulong))
              (Stmt.Ssequence
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                    (Expr.Etempvar _sum2 tulong)
                                    (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                    tint)
                  (Stmt.Sset _sum2
                    (Expr.Ebinop Binop.Osub (Expr.Etempvar _sum2 tulong)
                      (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                      tulong))
                  Stmt.Sskip)
                (Stmt.Sreturn (some (Expr.Ebinop Binop.Oor
                                      (Expr.Etempvar _adler tulong)
                                      (Expr.Ebinop Binop.Oshl
                                        (Expr.Etempvar _sum2 tulong)
                                        (Expr.Econst_int (Integers.Int.repr 16) tint)
                                        tulong) tulong)))))))
        Stmt.Sskip)
      (Stmt.Ssequence
        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oeq
                            (Expr.Etempvar _buf (tptr tuchar))
                            (Expr.Ecast
                              (Expr.Econst_int (Integers.Int.repr 0) tint)
                              (tptr tvoid)) tint)
          (Stmt.Sreturn (some (Expr.Econst_long (Integers.Int64.repr 1) tlong)))
          Stmt.Sskip)
        (Stmt.Ssequence
          (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt
                              (Expr.Etempvar _len tulong)
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tint)
            (Stmt.Ssequence
              (Stmt.Sloop
                (Stmt.Ssequence
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Sset _t'1 (Expr.Etempvar _len tulong))
                      (Stmt.Sset _len
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _t'1 tulong)
                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                          tulong)))
                    (Stmt.Sifthenelse (Expr.Etempvar _t'1 tulong)
                      Stmt.Sskip
                      Stmt.Sbreak))
                  (Stmt.Ssequence
                    (Stmt.Ssequence
                      (Stmt.Ssequence
                        (Stmt.Sset _t'2 (Expr.Etempvar _buf (tptr tuchar)))
                        (Stmt.Sset _buf
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _t'2 (tptr tuchar))
                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                            (tptr tuchar))))
                      (Stmt.Ssequence
                        (Stmt.Sset _t'39
                          (Expr.Ederef (Expr.Etempvar _t'2 (tptr tuchar))
                            tuchar))
                        (Stmt.Sset _adler
                          (Expr.Ebinop Binop.Oadd
                            (Expr.Etempvar _adler tulong)
                            (Expr.Etempvar _t'39 tuchar) tulong))))
                    (Stmt.Sset _sum2
                      (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sum2 tulong)
                        (Expr.Etempvar _adler tulong) tulong))))
                Stmt.Sskip)
              (Stmt.Ssequence
                (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                    (Expr.Etempvar _adler tulong)
                                    (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                    tint)
                  (Stmt.Sset _adler
                    (Expr.Ebinop Binop.Osub (Expr.Etempvar _adler tulong)
                      (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                      tulong))
                  Stmt.Sskip)
                (Stmt.Ssequence
                  (Stmt.Sset _sum2
                    (Expr.Ebinop Binop.Omod (Expr.Etempvar _sum2 tulong)
                      (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                      tulong))
                  (Stmt.Sreturn (some (Expr.Ebinop Binop.Oor
                                        (Expr.Etempvar _adler tulong)
                                        (Expr.Ebinop Binop.Oshl
                                          (Expr.Etempvar _sum2 tulong)
                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                          tulong) tulong))))))
            Stmt.Sskip)
          (Stmt.Ssequence
            (swhile
              (Expr.Ebinop Binop.Oge (Expr.Etempvar _len tulong)
                (Expr.Econst_int (Integers.Int.repr 5552) tint) tint)
              (Stmt.Ssequence
                (Stmt.Sset _len
                  (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tulong)
                    (Expr.Econst_int (Integers.Int.repr 5552) tint) tulong))
                (Stmt.Ssequence
                  (Stmt.Sset _n
                    (Expr.Ebinop Binop.Odiv
                      (Expr.Econst_int (Integers.Int.repr 5552) tint)
                      (Expr.Econst_int (Integers.Int.repr 16) tint) tint))
                  (Stmt.Ssequence
                    (Stmt.Sloop
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'38
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _buf (tptr tuchar))
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  (tptr tuchar)) tuchar))
                            (Stmt.Sset _adler
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _adler tulong)
                                (Expr.Etempvar _t'38 tuchar) tulong)))
                          (Stmt.Sset _sum2
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _sum2 tulong)
                              (Expr.Etempvar _adler tulong) tulong)))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'37
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _buf (tptr tuchar))
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) (tptr tuchar)) tuchar))
                              (Stmt.Sset _adler
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _adler tulong)
                                  (Expr.Etempvar _t'37 tuchar) tulong)))
                            (Stmt.Sset _sum2
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _sum2 tulong)
                                (Expr.Etempvar _adler tulong) tulong)))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'36
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _buf (tptr tuchar))
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                        tint) (tptr tuchar)) tuchar))
                                (Stmt.Sset _adler
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _adler tulong)
                                    (Expr.Etempvar _t'36 tuchar) tulong)))
                              (Stmt.Sset _sum2
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _sum2 tulong)
                                  (Expr.Etempvar _adler tulong) tulong)))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'35
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _buf (tptr tuchar))
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                                            tint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint) (tptr tuchar)) tuchar))
                                  (Stmt.Sset _adler
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _adler tulong)
                                      (Expr.Etempvar _t'35 tuchar) tulong)))
                                (Stmt.Sset _sum2
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _sum2 tulong)
                                    (Expr.Etempvar _adler tulong) tulong)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'34
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _buf (tptr tuchar))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                            tint) (tptr tuchar)) tuchar))
                                    (Stmt.Sset _adler
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _adler tulong)
                                        (Expr.Etempvar _t'34 tuchar) tulong)))
                                  (Stmt.Sset _sum2
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _sum2 tulong)
                                      (Expr.Etempvar _adler tulong) tulong)))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'33
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _buf (tptr tuchar))
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                tint)
                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                              tint) (tptr tuchar)) tuchar))
                                      (Stmt.Sset _adler
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _adler tulong)
                                          (Expr.Etempvar _t'33 tuchar)
                                          tulong)))
                                    (Stmt.Sset _sum2
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _sum2 tulong)
                                        (Expr.Etempvar _adler tulong) tulong)))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'32
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _buf (tptr tuchar))
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                  tint)
                                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                tint) (tptr tuchar)) tuchar))
                                        (Stmt.Sset _adler
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _adler tulong)
                                            (Expr.Etempvar _t'32 tuchar)
                                            tulong)))
                                      (Stmt.Sset _sum2
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _sum2 tulong)
                                          (Expr.Etempvar _adler tulong)
                                          tulong)))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'31
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _buf (tptr tuchar))
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                      tint)
                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                    tint)
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  tint) (tptr tuchar))
                                              tuchar))
                                          (Stmt.Sset _adler
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _adler tulong)
                                              (Expr.Etempvar _t'31 tuchar)
                                              tulong)))
                                        (Stmt.Sset _sum2
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _sum2 tulong)
                                            (Expr.Etempvar _adler tulong)
                                            tulong)))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'30
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _buf (tptr tuchar))
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  (tptr tuchar)) tuchar))
                                            (Stmt.Sset _adler
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _adler tulong)
                                                (Expr.Etempvar _t'30 tuchar)
                                                tulong)))
                                          (Stmt.Sset _sum2
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _sum2 tulong)
                                              (Expr.Etempvar _adler tulong)
                                              tulong)))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'29
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _buf (tptr tuchar))
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint) (tptr tuchar))
                                                  tuchar))
                                              (Stmt.Sset _adler
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _adler tulong)
                                                  (Expr.Etempvar _t'29 tuchar)
                                                  tulong)))
                                            (Stmt.Sset _sum2
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _sum2 tulong)
                                                (Expr.Etempvar _adler tulong)
                                                tulong)))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'28
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _buf (tptr tuchar))
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                        tint) (tptr tuchar))
                                                    tuchar))
                                                (Stmt.Sset _adler
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _adler tulong)
                                                    (Expr.Etempvar _t'28 tuchar)
                                                    tulong)))
                                              (Stmt.Sset _sum2
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _sum2 tulong)
                                                  (Expr.Etempvar _adler tulong)
                                                  tulong)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'27
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _buf (tptr tuchar))
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                            tint)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tint)
                                                        (tptr tuchar))
                                                      tuchar))
                                                  (Stmt.Sset _adler
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _adler tulong)
                                                      (Expr.Etempvar _t'27 tuchar)
                                                      tulong)))
                                                (Stmt.Sset _sum2
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _sum2 tulong)
                                                    (Expr.Etempvar _adler tulong)
                                                    tulong)))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'26
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _buf (tptr tuchar))
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                            tint)
                                                          (tptr tuchar))
                                                        tuchar))
                                                    (Stmt.Sset _adler
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _adler tulong)
                                                        (Expr.Etempvar _t'26 tuchar)
                                                        tulong)))
                                                  (Stmt.Sset _sum2
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _sum2 tulong)
                                                      (Expr.Etempvar _adler tulong)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'25
                                                        (Expr.Ederef
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _buf (tptr tuchar))
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                tint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tint)
                                                            (tptr tuchar))
                                                          tuchar))
                                                      (Stmt.Sset _adler
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _adler tulong)
                                                          (Expr.Etempvar _t'25 tuchar)
                                                          tulong)))
                                                    (Stmt.Sset _sum2
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _sum2 tulong)
                                                        (Expr.Etempvar _adler tulong)
                                                        tulong)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'24
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _buf (tptr tuchar))
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                  tint)
                                                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                tint)
                                                              (tptr tuchar))
                                                            tuchar))
                                                        (Stmt.Sset _adler
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _adler tulong)
                                                            (Expr.Etempvar _t'24 tuchar)
                                                            tulong)))
                                                      (Stmt.Sset _sum2
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _sum2 tulong)
                                                          (Expr.Etempvar _adler tulong)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'23
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _buf (tptr tuchar))
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tint)
                                                                (tptr tuchar))
                                                              tuchar))
                                                          (Stmt.Sset _adler
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _adler tulong)
                                                              (Expr.Etempvar _t'23 tuchar)
                                                              tulong)))
                                                        (Stmt.Sset _sum2
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _sum2 tulong)
                                                            (Expr.Etempvar _adler tulong)
                                                            tulong)))
                                                      (Stmt.Sset _buf
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _buf (tptr tuchar))
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (tptr tuchar)))))))))))))))))))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Sset _t'3
                            (Expr.Ecast
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _n tuint)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tuint) tuint))
                          (Stmt.Sset _n (Expr.Etempvar _t'3 tuint)))
                        (Stmt.Sifthenelse (Expr.Etempvar _t'3 tuint)
                          Stmt.Sskip
                          Stmt.Sbreak)))
                    (Stmt.Ssequence
                      (Stmt.Sset _adler
                        (Expr.Ebinop Binop.Omod (Expr.Etempvar _adler tulong)
                          (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                          tulong))
                      (Stmt.Sset _sum2
                        (Expr.Ebinop Binop.Omod (Expr.Etempvar _sum2 tulong)
                          (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                          tulong)))))))
            (Stmt.Ssequence
              (Stmt.Sifthenelse (Expr.Etempvar _len tulong)
                (Stmt.Ssequence
                  (swhile
                    (Expr.Ebinop Binop.Oge (Expr.Etempvar _len tulong)
                      (Expr.Econst_int (Integers.Int.repr 16) tint) tint)
                    (Stmt.Ssequence
                      (Stmt.Sset _len
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _len tulong)
                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                          tulong))
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'22
                              (Expr.Ederef
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _buf (tptr tuchar))
                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                  (tptr tuchar)) tuchar))
                            (Stmt.Sset _adler
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _adler tulong)
                                (Expr.Etempvar _t'22 tuchar) tulong)))
                          (Stmt.Sset _sum2
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _sum2 tulong)
                              (Expr.Etempvar _adler tulong) tulong)))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'21
                                (Expr.Ederef
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _buf (tptr tuchar))
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                      tint) (tptr tuchar)) tuchar))
                              (Stmt.Sset _adler
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _adler tulong)
                                  (Expr.Etempvar _t'21 tuchar) tulong)))
                            (Stmt.Sset _sum2
                              (Expr.Ebinop Binop.Oadd
                                (Expr.Etempvar _sum2 tulong)
                                (Expr.Etempvar _adler tulong) tulong)))
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Sset _t'20
                                  (Expr.Ederef
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _buf (tptr tuchar))
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Econst_int (Integers.Int.repr 0) tint)
                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                        tint) (tptr tuchar)) tuchar))
                                (Stmt.Sset _adler
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _adler tulong)
                                    (Expr.Etempvar _t'20 tuchar) tulong)))
                              (Stmt.Sset _sum2
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _sum2 tulong)
                                  (Expr.Etempvar _adler tulong) tulong)))
                            (Stmt.Ssequence
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Sset _t'19
                                    (Expr.Ederef
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _buf (tptr tuchar))
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                                            tint)
                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                          tint) (tptr tuchar)) tuchar))
                                  (Stmt.Sset _adler
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _adler tulong)
                                      (Expr.Etempvar _t'19 tuchar) tulong)))
                                (Stmt.Sset _sum2
                                  (Expr.Ebinop Binop.Oadd
                                    (Expr.Etempvar _sum2 tulong)
                                    (Expr.Etempvar _adler tulong) tulong)))
                              (Stmt.Ssequence
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Sset _t'18
                                      (Expr.Ederef
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _buf (tptr tuchar))
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Econst_int (Integers.Int.repr 0) tint)
                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                            tint) (tptr tuchar)) tuchar))
                                    (Stmt.Sset _adler
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _adler tulong)
                                        (Expr.Etempvar _t'18 tuchar) tulong)))
                                  (Stmt.Sset _sum2
                                    (Expr.Ebinop Binop.Oadd
                                      (Expr.Etempvar _sum2 tulong)
                                      (Expr.Etempvar _adler tulong) tulong)))
                                (Stmt.Ssequence
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Sset _t'17
                                        (Expr.Ederef
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _buf (tptr tuchar))
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                tint)
                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                              tint) (tptr tuchar)) tuchar))
                                      (Stmt.Sset _adler
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _adler tulong)
                                          (Expr.Etempvar _t'17 tuchar)
                                          tulong)))
                                    (Stmt.Sset _sum2
                                      (Expr.Ebinop Binop.Oadd
                                        (Expr.Etempvar _sum2 tulong)
                                        (Expr.Etempvar _adler tulong) tulong)))
                                  (Stmt.Ssequence
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Sset _t'16
                                          (Expr.Ederef
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _buf (tptr tuchar))
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                  tint)
                                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                tint) (tptr tuchar)) tuchar))
                                        (Stmt.Sset _adler
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _adler tulong)
                                            (Expr.Etempvar _t'16 tuchar)
                                            tulong)))
                                      (Stmt.Sset _sum2
                                        (Expr.Ebinop Binop.Oadd
                                          (Expr.Etempvar _sum2 tulong)
                                          (Expr.Etempvar _adler tulong)
                                          tulong)))
                                    (Stmt.Ssequence
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Sset _t'15
                                            (Expr.Ederef
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _buf (tptr tuchar))
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Econst_int (Integers.Int.repr 0) tint)
                                                      (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                      tint)
                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                    tint)
                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                  tint) (tptr tuchar))
                                              tuchar))
                                          (Stmt.Sset _adler
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _adler tulong)
                                              (Expr.Etempvar _t'15 tuchar)
                                              tulong)))
                                        (Stmt.Sset _sum2
                                          (Expr.Ebinop Binop.Oadd
                                            (Expr.Etempvar _sum2 tulong)
                                            (Expr.Etempvar _adler tulong)
                                            tulong)))
                                      (Stmt.Ssequence
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Sset _t'14
                                              (Expr.Ederef
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _buf (tptr tuchar))
                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                  (tptr tuchar)) tuchar))
                                            (Stmt.Sset _adler
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _adler tulong)
                                                (Expr.Etempvar _t'14 tuchar)
                                                tulong)))
                                          (Stmt.Sset _sum2
                                            (Expr.Ebinop Binop.Oadd
                                              (Expr.Etempvar _sum2 tulong)
                                              (Expr.Etempvar _adler tulong)
                                              tulong)))
                                        (Stmt.Ssequence
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Sset _t'13
                                                (Expr.Ederef
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _buf (tptr tuchar))
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                      (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                      tint) (tptr tuchar))
                                                  tuchar))
                                              (Stmt.Sset _adler
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _adler tulong)
                                                  (Expr.Etempvar _t'13 tuchar)
                                                  tulong)))
                                            (Stmt.Sset _sum2
                                              (Expr.Ebinop Binop.Oadd
                                                (Expr.Etempvar _sum2 tulong)
                                                (Expr.Etempvar _adler tulong)
                                                tulong)))
                                          (Stmt.Ssequence
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Sset _t'12
                                                  (Expr.Ederef
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _buf (tptr tuchar))
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                        (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                        tint) (tptr tuchar))
                                                    tuchar))
                                                (Stmt.Sset _adler
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _adler tulong)
                                                    (Expr.Etempvar _t'12 tuchar)
                                                    tulong)))
                                              (Stmt.Sset _sum2
                                                (Expr.Ebinop Binop.Oadd
                                                  (Expr.Etempvar _sum2 tulong)
                                                  (Expr.Etempvar _adler tulong)
                                                  tulong)))
                                            (Stmt.Ssequence
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Sset _t'11
                                                    (Expr.Ederef
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _buf (tptr tuchar))
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                            tint)
                                                          (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                          tint)
                                                        (tptr tuchar))
                                                      tuchar))
                                                  (Stmt.Sset _adler
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _adler tulong)
                                                      (Expr.Etempvar _t'11 tuchar)
                                                      tulong)))
                                                (Stmt.Sset _sum2
                                                  (Expr.Ebinop Binop.Oadd
                                                    (Expr.Etempvar _sum2 tulong)
                                                    (Expr.Etempvar _adler tulong)
                                                    tulong)))
                                              (Stmt.Ssequence
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Sset _t'10
                                                      (Expr.Ederef
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _buf (tptr tuchar))
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                            (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                            tint)
                                                          (tptr tuchar))
                                                        tuchar))
                                                    (Stmt.Sset _adler
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _adler tulong)
                                                        (Expr.Etempvar _t'10 tuchar)
                                                        tulong)))
                                                  (Stmt.Sset _sum2
                                                    (Expr.Ebinop Binop.Oadd
                                                      (Expr.Etempvar _sum2 tulong)
                                                      (Expr.Etempvar _adler tulong)
                                                      tulong)))
                                                (Stmt.Ssequence
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Sset _t'9
                                                        (Expr.Ederef
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _buf (tptr tuchar))
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                tint)
                                                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                              tint)
                                                            (tptr tuchar))
                                                          tuchar))
                                                      (Stmt.Sset _adler
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _adler tulong)
                                                          (Expr.Etempvar _t'9 tuchar)
                                                          tulong)))
                                                    (Stmt.Sset _sum2
                                                      (Expr.Ebinop Binop.Oadd
                                                        (Expr.Etempvar _sum2 tulong)
                                                        (Expr.Etempvar _adler tulong)
                                                        tulong)))
                                                  (Stmt.Ssequence
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Sset _t'8
                                                          (Expr.Ederef
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _buf (tptr tuchar))
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                  tint)
                                                                (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                tint)
                                                              (tptr tuchar))
                                                            tuchar))
                                                        (Stmt.Sset _adler
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _adler tulong)
                                                            (Expr.Etempvar _t'8 tuchar)
                                                            tulong)))
                                                      (Stmt.Sset _sum2
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _sum2 tulong)
                                                          (Expr.Etempvar _adler tulong)
                                                          tulong)))
                                                    (Stmt.Ssequence
                                                      (Stmt.Ssequence
                                                        (Stmt.Ssequence
                                                          (Stmt.Sset _t'7
                                                            (Expr.Ederef
                                                              (Expr.Ebinop Binop.Oadd
                                                                (Expr.Etempvar _buf (tptr tuchar))
                                                                (Expr.Ebinop Binop.Oadd
                                                                  (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Ebinop Binop.Oadd
                                                                    (Expr.Econst_int (Integers.Int.repr 8) tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 4) tint)
                                                                    tint)
                                                                    (Expr.Econst_int (Integers.Int.repr 2) tint)
                                                                    tint)
                                                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                                                  tint)
                                                                (tptr tuchar))
                                                              tuchar))
                                                          (Stmt.Sset _adler
                                                            (Expr.Ebinop Binop.Oadd
                                                              (Expr.Etempvar _adler tulong)
                                                              (Expr.Etempvar _t'7 tuchar)
                                                              tulong)))
                                                        (Stmt.Sset _sum2
                                                          (Expr.Ebinop Binop.Oadd
                                                            (Expr.Etempvar _sum2 tulong)
                                                            (Expr.Etempvar _adler tulong)
                                                            tulong)))
                                                      (Stmt.Sset _buf
                                                        (Expr.Ebinop Binop.Oadd
                                                          (Expr.Etempvar _buf (tptr tuchar))
                                                          (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                          (tptr tuchar)))))))))))))))))))))
                  (Stmt.Ssequence
                    (Stmt.Sloop
                      (Stmt.Ssequence
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Sset _t'4 (Expr.Etempvar _len tulong))
                            (Stmt.Sset _len
                              (Expr.Ebinop Binop.Osub
                                (Expr.Etempvar _t'4 tulong)
                                (Expr.Econst_int (Integers.Int.repr 1) tint)
                                tulong)))
                          (Stmt.Sifthenelse (Expr.Etempvar _t'4 tulong)
                            Stmt.Sskip
                            Stmt.Sbreak))
                        (Stmt.Ssequence
                          (Stmt.Ssequence
                            (Stmt.Ssequence
                              (Stmt.Sset _t'5
                                (Expr.Etempvar _buf (tptr tuchar)))
                              (Stmt.Sset _buf
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _t'5 (tptr tuchar))
                                  (Expr.Econst_int (Integers.Int.repr 1) tint)
                                  (tptr tuchar))))
                            (Stmt.Ssequence
                              (Stmt.Sset _t'6
                                (Expr.Ederef
                                  (Expr.Etempvar _t'5 (tptr tuchar)) tuchar))
                              (Stmt.Sset _adler
                                (Expr.Ebinop Binop.Oadd
                                  (Expr.Etempvar _adler tulong)
                                  (Expr.Etempvar _t'6 tuchar) tulong))))
                          (Stmt.Sset _sum2
                            (Expr.Ebinop Binop.Oadd
                              (Expr.Etempvar _sum2 tulong)
                              (Expr.Etempvar _adler tulong) tulong))))
                      Stmt.Sskip)
                    (Stmt.Ssequence
                      (Stmt.Sset _adler
                        (Expr.Ebinop Binop.Omod (Expr.Etempvar _adler tulong)
                          (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                          tulong))
                      (Stmt.Sset _sum2
                        (Expr.Ebinop Binop.Omod (Expr.Etempvar _sum2 tulong)
                          (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                          tulong)))))
                Stmt.Sskip)
              (Stmt.Sreturn (some (Expr.Ebinop Binop.Oor
                                    (Expr.Etempvar _adler tulong)
                                    (Expr.Ebinop Binop.Oshl
                                      (Expr.Etempvar _sum2 tulong)
                                      (Expr.Econst_int (Integers.Int.repr 16) tint)
                                      tulong) tulong))))))))))
}

def f_adler32 : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_adler, tulong), (_buf, (tptr tuchar)), (_len, tuint)],
  fn_vars := [],
  fn_temps := [(_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _adler32_z (Ty.Tfunction [tulong, (tptr tuchar), tulong]
                            tulong cc_default))
    [(Expr.Etempvar _adler tulong), (Expr.Etempvar _buf (tptr tuchar)),
     (Expr.Etempvar _len tuint)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tulong))))
}

def f_adler32_combine_ : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_adler1, tulong), (_adler2, tulong), (_len2, tlong)],
  fn_vars := [],
  fn_temps := [(_sum1, tulong), (_sum2, tulong), (_rem, tuint)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Sifthenelse (Expr.Ebinop Binop.Olt (Expr.Etempvar _len2 tlong)
                      (Expr.Econst_int (Integers.Int.repr 0) tint) tint)
    (Stmt.Sreturn (some (Expr.Econst_long (Integers.Int64.repr 4294967295) tulong)))
    Stmt.Sskip)
  (Stmt.Ssequence
    (Stmt.Sset _len2
      (Expr.Ebinop Binop.Omod (Expr.Etempvar _len2 tlong)
        (Expr.Econst_int (Integers.Int.repr 65521) tuint) tlong))
    (Stmt.Ssequence
      (Stmt.Sset _rem (Expr.Ecast (Expr.Etempvar _len2 tlong) tuint))
      (Stmt.Ssequence
        (Stmt.Sset _sum1
          (Expr.Ebinop Binop.Oand (Expr.Etempvar _adler1 tulong)
            (Expr.Econst_int (Integers.Int.repr 65535) tint) tulong))
        (Stmt.Ssequence
          (Stmt.Sset _sum2
            (Expr.Ebinop Binop.Omul (Expr.Etempvar _rem tuint)
              (Expr.Etempvar _sum1 tulong) tulong))
          (Stmt.Ssequence
            (Stmt.Sset _sum2
              (Expr.Ebinop Binop.Omod (Expr.Etempvar _sum2 tulong)
                (Expr.Econst_int (Integers.Int.repr 65521) tuint) tulong))
            (Stmt.Ssequence
              (Stmt.Sset _sum1
                (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sum1 tulong)
                  (Expr.Ebinop Binop.Osub
                    (Expr.Ebinop Binop.Oadd
                      (Expr.Ebinop Binop.Oand (Expr.Etempvar _adler2 tulong)
                        (Expr.Econst_int (Integers.Int.repr 65535) tint)
                        tulong)
                      (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                      tulong) (Expr.Econst_int (Integers.Int.repr 1) tint)
                    tulong) tulong))
              (Stmt.Ssequence
                (Stmt.Sset _sum2
                  (Expr.Ebinop Binop.Oadd (Expr.Etempvar _sum2 tulong)
                    (Expr.Ebinop Binop.Osub
                      (Expr.Ebinop Binop.Oadd
                        (Expr.Ebinop Binop.Oadd
                          (Expr.Ebinop Binop.Oand
                            (Expr.Ebinop Binop.Oshr
                              (Expr.Etempvar _adler1 tulong)
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tulong)
                            (Expr.Econst_int (Integers.Int.repr 65535) tint)
                            tulong)
                          (Expr.Ebinop Binop.Oand
                            (Expr.Ebinop Binop.Oshr
                              (Expr.Etempvar _adler2 tulong)
                              (Expr.Econst_int (Integers.Int.repr 16) tint)
                              tulong)
                            (Expr.Econst_int (Integers.Int.repr 65535) tint)
                            tulong) tulong)
                        (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                        tulong) (Expr.Etempvar _rem tuint) tulong) tulong))
                (Stmt.Ssequence
                  (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                      (Expr.Etempvar _sum1 tulong)
                                      (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                      tint)
                    (Stmt.Sset _sum1
                      (Expr.Ebinop Binop.Osub (Expr.Etempvar _sum1 tulong)
                        (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                        tulong))
                    Stmt.Sskip)
                  (Stmt.Ssequence
                    (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                        (Expr.Etempvar _sum1 tulong)
                                        (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                        tint)
                      (Stmt.Sset _sum1
                        (Expr.Ebinop Binop.Osub (Expr.Etempvar _sum1 tulong)
                          (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                          tulong))
                      Stmt.Sskip)
                    (Stmt.Ssequence
                      (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                          (Expr.Etempvar _sum2 tulong)
                                          (Expr.Ebinop Binop.Oshl
                                            (Expr.Ecast
                                              (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                              tulong)
                                            (Expr.Econst_int (Integers.Int.repr 1) tint)
                                            tulong) tint)
                        (Stmt.Sset _sum2
                          (Expr.Ebinop Binop.Osub
                            (Expr.Etempvar _sum2 tulong)
                            (Expr.Ebinop Binop.Oshl
                              (Expr.Ecast
                                (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                tulong)
                              (Expr.Econst_int (Integers.Int.repr 1) tint)
                              tulong) tulong))
                        Stmt.Sskip)
                      (Stmt.Ssequence
                        (Stmt.Sifthenelse (Expr.Ebinop Binop.Oge
                                            (Expr.Etempvar _sum2 tulong)
                                            (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                                            tint)
                          (Stmt.Sset _sum2
                            (Expr.Ebinop Binop.Osub
                              (Expr.Etempvar _sum2 tulong)
                              (Expr.Econst_int (Integers.Int.repr 65521) tuint)
                              tulong))
                          Stmt.Sskip)
                        (Stmt.Sreturn (some (Expr.Ebinop Binop.Oor
                                              (Expr.Etempvar _sum1 tulong)
                                              (Expr.Ebinop Binop.Oshl
                                                (Expr.Etempvar _sum2 tulong)
                                                (Expr.Econst_int (Integers.Int.repr 16) tint)
                                                tulong) tulong)))))))))))))))
}

def f_adler32_combine : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_adler1, tulong), (_adler2, tulong), (_len2, tlong)],
  fn_vars := [],
  fn_temps := [(_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _adler32_combine_ (Ty.Tfunction [tulong, tulong, tlong] tulong
                                   cc_default))
    [(Expr.Etempvar _adler1 tulong), (Expr.Etempvar _adler2 tulong),
     (Expr.Etempvar _len2 tlong)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tulong))))
}

def f_adler32_combine64 : Function := {
  fn_return := tulong,
  fn_callconv := cc_default,
  fn_params := [(_adler1, tulong), (_adler2, tulong), (_len2, tlong)],
  fn_vars := [],
  fn_temps := [(_t'1, tulong)],
  fn_body :=
(Stmt.Ssequence
  (Stmt.Scall (some _t'1)
    (Expr.Evar _adler32_combine_ (Ty.Tfunction [tulong, tulong, tlong] tulong
                                   cc_default))
    [(Expr.Etempvar _adler1 tulong), (Expr.Etempvar _adler2 tulong),
     (Expr.Etempvar _len2 tlong)])
  (Stmt.Sreturn (some (Expr.Etempvar _t'1 tulong))))
}

def composites : List CompositeDef :=
[]

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
 (_adler32_z, GlobDef.Gfun (FunDef.Internal f_adler32_z)),
 (_adler32, GlobDef.Gfun (FunDef.Internal f_adler32)),
 (_adler32_combine_, GlobDef.Gfun (FunDef.Internal f_adler32_combine_)),
 (_adler32_combine, GlobDef.Gfun (FunDef.Internal f_adler32_combine)),
 (_adler32_combine64, GlobDef.Gfun (FunDef.Internal f_adler32_combine64))]

def public_idents : List Ident :=
[_adler32_combine64, _adler32_combine, _adler32, _adler32_z,
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

end Adler32

