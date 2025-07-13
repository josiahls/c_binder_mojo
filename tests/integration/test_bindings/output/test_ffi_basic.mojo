from sys.ffi import DLHandle
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from sys.ffi import DLHandle
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3508 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias test_int_identity = fn (value: Int32) -> Int32

alias test_uint_identity = fn (value: UInt32) -> UInt32

alias test_long_identity = fn (value: Int64) -> Int64

alias test_float_identity = fn (value: Float32) -> Float32

alias test_double_identity = fn (value: Float64) -> Float64


alias TestFFIBasic_test_int_identity = ExternalFunction['test_int_identity', test_int_identity]
alias TestFFIBasic_test_uint_identity = ExternalFunction['test_uint_identity', test_uint_identity]
alias TestFFIBasic_test_long_identity = ExternalFunction['test_long_identity', test_long_identity]
alias TestFFIBasic_test_float_identity = ExternalFunction['test_float_identity', test_float_identity]
alias TestFFIBasic_test_double_identity = ExternalFunction['test_double_identity', test_double_identity]

@fieldwise_init
struct TestFFIBasic(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var test_int_identity: TestFFIBasic_test_int_identity.type
    var test_uint_identity: TestFFIBasic_test_uint_identity.type
    var test_long_identity: TestFFIBasic_test_long_identity.type
    var test_float_identity: TestFFIBasic_test_float_identity.type
    var test_double_identity: TestFFIBasic_test_double_identity.type

    fn __init__(out self):
        try:
            self.lib = DLHandle('/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so')
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load TestFFIBasic from", '/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so', ":\n", e)
            )

    
        self.test_int_identity = TestFFIBasic_test_int_identity.load(self.lib)
        self.test_uint_identity = TestFFIBasic_test_uint_identity.load(self.lib)
        self.test_long_identity = TestFFIBasic_test_long_identity.load(self.lib)
        self.test_float_identity = TestFFIBasic_test_float_identity.load(self.lib)
        self.test_double_identity = TestFFIBasic_test_double_identity.load(self.lib)



alias TestFFIBasic___ctype_get_mb_cur_max = ExternalFunction['__ctype_get_mb_cur_max', __ctype_get_mb_cur_max]
alias TestFFIBasic_atof = ExternalFunction['atof', atof]
alias TestFFIBasic_atoi = ExternalFunction['atoi', atoi]
alias TestFFIBasic_atol = ExternalFunction['atol', atol]
alias TestFFIBasic_atoll = ExternalFunction['atoll', atoll]
alias TestFFIBasic_strtod = ExternalFunction['strtod', strtod]
alias TestFFIBasic_strtod = ExternalFunction['strtod', strtod]
alias TestFFIBasic_strtof = ExternalFunction['strtof', strtof]
alias TestFFIBasic_strtof = ExternalFunction['strtof', strtof]
alias TestFFIBasic_strtold = ExternalFunction['strtold', strtold]
alias TestFFIBasic_strtold = ExternalFunction['strtold', strtold]
alias TestFFIBasic_strtol = ExternalFunction['strtol', strtol]
alias TestFFIBasic_strtol = ExternalFunction['strtol', strtol]
alias TestFFIBasic_strtoul = ExternalFunction['strtoul', strtoul]
alias TestFFIBasic_strtoul = ExternalFunction['strtoul', strtoul]
alias TestFFIBasic_strtoq = ExternalFunction['strtoq', strtoq]
alias TestFFIBasic_strtouq = ExternalFunction['strtouq', strtouq]
alias TestFFIBasic_strtoll = ExternalFunction['strtoll', strtoll]
alias TestFFIBasic_strtoll = ExternalFunction['strtoll', strtoll]
alias TestFFIBasic_strtoull = ExternalFunction['strtoull', strtoull]
alias TestFFIBasic_strtoull = ExternalFunction['strtoull', strtoull]
alias TestFFIBasic_l64a = ExternalFunction['l64a', l64a]
alias TestFFIBasic_a64l = ExternalFunction['a64l', a64l]
alias TestFFIBasic___bswap_16 = ExternalFunction['__bswap_16', __bswap_16]
alias TestFFIBasic___bswap_32 = ExternalFunction['__bswap_32', __bswap_32]
alias TestFFIBasic___bswap_64 = ExternalFunction['__bswap_64', __bswap_64]
alias TestFFIBasic___uint16_identity = ExternalFunction['__uint16_identity', __uint16_identity]
alias TestFFIBasic___uint32_identity = ExternalFunction['__uint32_identity', __uint32_identity]
alias TestFFIBasic___uint64_identity = ExternalFunction['__uint64_identity', __uint64_identity]
alias TestFFIBasic_select = ExternalFunction['select', select]
alias TestFFIBasic_pselect = ExternalFunction['pselect', pselect]
alias TestFFIBasic_random = ExternalFunction['random', random]
alias TestFFIBasic_srandom = ExternalFunction['srandom', srandom]
alias TestFFIBasic_initstate = ExternalFunction['initstate', initstate]
alias TestFFIBasic_setstate = ExternalFunction['setstate', setstate]
alias TestFFIBasic_random_r = ExternalFunction['random_r', random_r]
alias TestFFIBasic_srandom_r = ExternalFunction['srandom_r', srandom_r]
alias TestFFIBasic_initstate_r = ExternalFunction['initstate_r', initstate_r]
alias TestFFIBasic_setstate_r = ExternalFunction['setstate_r', setstate_r]
alias TestFFIBasic_rand = ExternalFunction['rand', rand]
alias TestFFIBasic_srand = ExternalFunction['srand', srand]
alias TestFFIBasic_rand_r = ExternalFunction['rand_r', rand_r]
alias TestFFIBasic_drand48 = ExternalFunction['drand48', drand48]
alias TestFFIBasic_erand48 = ExternalFunction['erand48', erand48]
alias TestFFIBasic_lrand48 = ExternalFunction['lrand48', lrand48]
alias TestFFIBasic_nrand48 = ExternalFunction['nrand48', nrand48]
alias TestFFIBasic_mrand48 = ExternalFunction['mrand48', mrand48]
alias TestFFIBasic_jrand48 = ExternalFunction['jrand48', jrand48]
alias TestFFIBasic_srand48 = ExternalFunction['srand48', srand48]
alias TestFFIBasic_seed48 = ExternalFunction['seed48', seed48]
alias TestFFIBasic_lcong48 = ExternalFunction['lcong48', lcong48]
alias TestFFIBasic_drand48_r = ExternalFunction['drand48_r', drand48_r]
alias TestFFIBasic_erand48_r = ExternalFunction['erand48_r', erand48_r]
alias TestFFIBasic_lrand48_r = ExternalFunction['lrand48_r', lrand48_r]
alias TestFFIBasic_nrand48_r = ExternalFunction['nrand48_r', nrand48_r]
alias TestFFIBasic_mrand48_r = ExternalFunction['mrand48_r', mrand48_r]
alias TestFFIBasic_jrand48_r = ExternalFunction['jrand48_r', jrand48_r]
alias TestFFIBasic_srand48_r = ExternalFunction['srand48_r', srand48_r]
alias TestFFIBasic_seed48_r = ExternalFunction['seed48_r', seed48_r]
alias TestFFIBasic_lcong48_r = ExternalFunction['lcong48_r', lcong48_r]
alias TestFFIBasic_malloc = ExternalFunction['malloc', malloc]
alias TestFFIBasic_malloc = ExternalFunction['malloc', malloc]
alias TestFFIBasic_calloc = ExternalFunction['calloc', calloc]
alias TestFFIBasic_calloc = ExternalFunction['calloc', calloc]
alias TestFFIBasic_realloc = ExternalFunction['realloc', realloc]
alias TestFFIBasic_realloc = ExternalFunction['realloc', realloc]
alias TestFFIBasic_free = ExternalFunction['free', free]
alias TestFFIBasic_free = ExternalFunction['free', free]
alias TestFFIBasic_reallocarray = ExternalFunction['reallocarray', reallocarray]
alias TestFFIBasic_reallocarray = ExternalFunction['reallocarray', reallocarray]
alias TestFFIBasic_alloca = ExternalFunction['alloca', alloca]
alias TestFFIBasic_alloca = ExternalFunction['alloca', alloca]
alias TestFFIBasic_valloc = ExternalFunction['valloc', valloc]
alias TestFFIBasic_posix_memalign = ExternalFunction['posix_memalign', posix_memalign]
alias TestFFIBasic_aligned_alloc = ExternalFunction['aligned_alloc', aligned_alloc]
alias TestFFIBasic_aligned_alloc = ExternalFunction['aligned_alloc', aligned_alloc]
alias TestFFIBasic_abort = ExternalFunction['abort', abort]
alias TestFFIBasic_abort = ExternalFunction['abort', abort]
alias TestFFIBasic_atexit = ExternalFunction['atexit', atexit]
alias TestFFIBasic_at_quick_exit = ExternalFunction['at_quick_exit', at_quick_exit]
alias TestFFIBasic_on_exit = ExternalFunction['on_exit', on_exit]
alias TestFFIBasic_exit = ExternalFunction['exit', exit]
alias TestFFIBasic_exit = ExternalFunction['exit', exit]
alias TestFFIBasic_quick_exit = ExternalFunction['quick_exit', quick_exit]
alias TestFFIBasic__Exit = ExternalFunction['_Exit', _Exit]
alias TestFFIBasic__Exit = ExternalFunction['_Exit', _Exit]
alias TestFFIBasic_getenv = ExternalFunction['getenv', getenv]
alias TestFFIBasic_putenv = ExternalFunction['putenv', putenv]
alias TestFFIBasic_setenv = ExternalFunction['setenv', setenv]
alias TestFFIBasic_unsetenv = ExternalFunction['unsetenv', unsetenv]
alias TestFFIBasic_clearenv = ExternalFunction['clearenv', clearenv]
alias TestFFIBasic_mktemp = ExternalFunction['mktemp', mktemp]
alias TestFFIBasic_mkstemp = ExternalFunction['mkstemp', mkstemp]
alias TestFFIBasic_mkstemps = ExternalFunction['mkstemps', mkstemps]
alias TestFFIBasic_mkdtemp = ExternalFunction['mkdtemp', mkdtemp]
alias TestFFIBasic_system = ExternalFunction['system', system]
alias TestFFIBasic_realpath = ExternalFunction['realpath', realpath]
alias TestFFIBasic_bsearch = ExternalFunction['bsearch', bsearch]
alias TestFFIBasic_qsort = ExternalFunction['qsort', qsort]
alias TestFFIBasic_abs = ExternalFunction['abs', abs]
alias TestFFIBasic_abs = ExternalFunction['abs', abs]
alias TestFFIBasic_labs = ExternalFunction['labs', labs]
alias TestFFIBasic_labs = ExternalFunction['labs', labs]
alias TestFFIBasic_llabs = ExternalFunction['llabs', llabs]
alias TestFFIBasic_llabs = ExternalFunction['llabs', llabs]
alias TestFFIBasic_div = ExternalFunction['div', div]
alias TestFFIBasic_ldiv = ExternalFunction['ldiv', ldiv]
alias TestFFIBasic_lldiv = ExternalFunction['lldiv', lldiv]
alias TestFFIBasic_ecvt = ExternalFunction['ecvt', ecvt]
alias TestFFIBasic_fcvt = ExternalFunction['fcvt', fcvt]
alias TestFFIBasic_gcvt = ExternalFunction['gcvt', gcvt]
alias TestFFIBasic_qecvt = ExternalFunction['qecvt', qecvt]
alias TestFFIBasic_qfcvt = ExternalFunction['qfcvt', qfcvt]
alias TestFFIBasic_qgcvt = ExternalFunction['qgcvt', qgcvt]
alias TestFFIBasic_ecvt_r = ExternalFunction['ecvt_r', ecvt_r]
alias TestFFIBasic_fcvt_r = ExternalFunction['fcvt_r', fcvt_r]
alias TestFFIBasic_qecvt_r = ExternalFunction['qecvt_r', qecvt_r]
alias TestFFIBasic_qfcvt_r = ExternalFunction['qfcvt_r', qfcvt_r]
alias TestFFIBasic_mblen = ExternalFunction['mblen', mblen]
alias TestFFIBasic_mbtowc = ExternalFunction['mbtowc', mbtowc]
alias TestFFIBasic_wctomb = ExternalFunction['wctomb', wctomb]
alias TestFFIBasic_mbstowcs = ExternalFunction['mbstowcs', mbstowcs]
alias TestFFIBasic_wcstombs = ExternalFunction['wcstombs', wcstombs]
alias TestFFIBasic_rpmatch = ExternalFunction['rpmatch', rpmatch]
alias TestFFIBasic_getsubopt = ExternalFunction['getsubopt', getsubopt]
alias TestFFIBasic_getloadavg = ExternalFunction['getloadavg', getloadavg]
alias TestFFIBasic___fpclassify = ExternalFunction['__fpclassify', __fpclassify]
alias TestFFIBasic___signbit = ExternalFunction['__signbit', __signbit]
alias TestFFIBasic___isinf = ExternalFunction['__isinf', __isinf]
alias TestFFIBasic___finite = ExternalFunction['__finite', __finite]
alias TestFFIBasic___finite = ExternalFunction['__finite', __finite]
alias TestFFIBasic___isnan = ExternalFunction['__isnan', __isnan]
alias TestFFIBasic___iseqsig = ExternalFunction['__iseqsig', __iseqsig]
alias TestFFIBasic___issignaling = ExternalFunction['__issignaling', __issignaling]
alias TestFFIBasic_acos = ExternalFunction['acos', acos]
alias TestFFIBasic_acos = ExternalFunction['acos', acos]
alias TestFFIBasic___acos = ExternalFunction['__acos', __acos]
alias TestFFIBasic_asin = ExternalFunction['asin', asin]
alias TestFFIBasic_asin = ExternalFunction['asin', asin]
alias TestFFIBasic___asin = ExternalFunction['__asin', __asin]
alias TestFFIBasic_atan = ExternalFunction['atan', atan]
alias TestFFIBasic_atan = ExternalFunction['atan', atan]
alias TestFFIBasic___atan = ExternalFunction['__atan', __atan]
alias TestFFIBasic_atan2 = ExternalFunction['atan2', atan2]
alias TestFFIBasic_atan2 = ExternalFunction['atan2', atan2]
alias TestFFIBasic___atan2 = ExternalFunction['__atan2', __atan2]
alias TestFFIBasic_cos = ExternalFunction['cos', cos]
alias TestFFIBasic_cos = ExternalFunction['cos', cos]
alias TestFFIBasic___cos = ExternalFunction['__cos', __cos]
alias TestFFIBasic_sin = ExternalFunction['sin', sin]
alias TestFFIBasic_sin = ExternalFunction['sin', sin]
alias TestFFIBasic___sin = ExternalFunction['__sin', __sin]
alias TestFFIBasic_tan = ExternalFunction['tan', tan]
alias TestFFIBasic_tan = ExternalFunction['tan', tan]
alias TestFFIBasic___tan = ExternalFunction['__tan', __tan]
alias TestFFIBasic_cosh = ExternalFunction['cosh', cosh]
alias TestFFIBasic_cosh = ExternalFunction['cosh', cosh]
alias TestFFIBasic___cosh = ExternalFunction['__cosh', __cosh]
alias TestFFIBasic_sinh = ExternalFunction['sinh', sinh]
alias TestFFIBasic_sinh = ExternalFunction['sinh', sinh]
alias TestFFIBasic___sinh = ExternalFunction['__sinh', __sinh]
alias TestFFIBasic_tanh = ExternalFunction['tanh', tanh]
alias TestFFIBasic_tanh = ExternalFunction['tanh', tanh]
alias TestFFIBasic___tanh = ExternalFunction['__tanh', __tanh]
alias TestFFIBasic_acosh = ExternalFunction['acosh', acosh]
alias TestFFIBasic_acosh = ExternalFunction['acosh', acosh]
alias TestFFIBasic___acosh = ExternalFunction['__acosh', __acosh]
alias TestFFIBasic_asinh = ExternalFunction['asinh', asinh]
alias TestFFIBasic_asinh = ExternalFunction['asinh', asinh]
alias TestFFIBasic___asinh = ExternalFunction['__asinh', __asinh]
alias TestFFIBasic_atanh = ExternalFunction['atanh', atanh]
alias TestFFIBasic_atanh = ExternalFunction['atanh', atanh]
alias TestFFIBasic___atanh = ExternalFunction['__atanh', __atanh]
alias TestFFIBasic_exp = ExternalFunction['exp', exp]
alias TestFFIBasic_exp = ExternalFunction['exp', exp]
alias TestFFIBasic___exp = ExternalFunction['__exp', __exp]
alias TestFFIBasic_frexp = ExternalFunction['frexp', frexp]
alias TestFFIBasic_frexp = ExternalFunction['frexp', frexp]
alias TestFFIBasic___frexp = ExternalFunction['__frexp', __frexp]
alias TestFFIBasic_ldexp = ExternalFunction['ldexp', ldexp]
alias TestFFIBasic_ldexp = ExternalFunction['ldexp', ldexp]
alias TestFFIBasic___ldexp = ExternalFunction['__ldexp', __ldexp]
alias TestFFIBasic_log = ExternalFunction['log', log]
alias TestFFIBasic_log = ExternalFunction['log', log]
alias TestFFIBasic___log = ExternalFunction['__log', __log]
alias TestFFIBasic_log10 = ExternalFunction['log10', log10]
alias TestFFIBasic_log10 = ExternalFunction['log10', log10]
alias TestFFIBasic___log10 = ExternalFunction['__log10', __log10]
alias TestFFIBasic_modf = ExternalFunction['modf', modf]
alias TestFFIBasic_modf = ExternalFunction['modf', modf]
alias TestFFIBasic___modf = ExternalFunction['__modf', __modf]
alias TestFFIBasic_expm1 = ExternalFunction['expm1', expm1]
alias TestFFIBasic_expm1 = ExternalFunction['expm1', expm1]
alias TestFFIBasic___expm1 = ExternalFunction['__expm1', __expm1]
alias TestFFIBasic_log1p = ExternalFunction['log1p', log1p]
alias TestFFIBasic_log1p = ExternalFunction['log1p', log1p]
alias TestFFIBasic___log1p = ExternalFunction['__log1p', __log1p]
alias TestFFIBasic_logb = ExternalFunction['logb', logb]
alias TestFFIBasic_logb = ExternalFunction['logb', logb]
alias TestFFIBasic___logb = ExternalFunction['__logb', __logb]
alias TestFFIBasic_exp2 = ExternalFunction['exp2', exp2]
alias TestFFIBasic_exp2 = ExternalFunction['exp2', exp2]
alias TestFFIBasic___exp2 = ExternalFunction['__exp2', __exp2]
alias TestFFIBasic_log2 = ExternalFunction['log2', log2]
alias TestFFIBasic_log2 = ExternalFunction['log2', log2]
alias TestFFIBasic___log2 = ExternalFunction['__log2', __log2]
alias TestFFIBasic_pow = ExternalFunction['pow', pow]
alias TestFFIBasic_pow = ExternalFunction['pow', pow]
alias TestFFIBasic___pow = ExternalFunction['__pow', __pow]
alias TestFFIBasic_sqrt = ExternalFunction['sqrt', sqrt]
alias TestFFIBasic_sqrt = ExternalFunction['sqrt', sqrt]
alias TestFFIBasic___sqrt = ExternalFunction['__sqrt', __sqrt]
alias TestFFIBasic_hypot = ExternalFunction['hypot', hypot]
alias TestFFIBasic_hypot = ExternalFunction['hypot', hypot]
alias TestFFIBasic___hypot = ExternalFunction['__hypot', __hypot]
alias TestFFIBasic_cbrt = ExternalFunction['cbrt', cbrt]
alias TestFFIBasic_cbrt = ExternalFunction['cbrt', cbrt]
alias TestFFIBasic___cbrt = ExternalFunction['__cbrt', __cbrt]
alias TestFFIBasic_ceil = ExternalFunction['ceil', ceil]
alias TestFFIBasic_ceil = ExternalFunction['ceil', ceil]
alias TestFFIBasic___ceil = ExternalFunction['__ceil', __ceil]
alias TestFFIBasic_fabs = ExternalFunction['fabs', fabs]
alias TestFFIBasic_fabs = ExternalFunction['fabs', fabs]
alias TestFFIBasic___fabs = ExternalFunction['__fabs', __fabs]
alias TestFFIBasic_floor = ExternalFunction['floor', floor]
alias TestFFIBasic_floor = ExternalFunction['floor', floor]
alias TestFFIBasic___floor = ExternalFunction['__floor', __floor]
alias TestFFIBasic_fmod = ExternalFunction['fmod', fmod]
alias TestFFIBasic_fmod = ExternalFunction['fmod', fmod]
alias TestFFIBasic___fmod = ExternalFunction['__fmod', __fmod]
alias TestFFIBasic_isinf = ExternalFunction['isinf', isinf]
alias TestFFIBasic_finite = ExternalFunction['finite', finite]
alias TestFFIBasic_finite = ExternalFunction['finite', finite]
alias TestFFIBasic_drem = ExternalFunction['drem', drem]
alias TestFFIBasic___drem = ExternalFunction['__drem', __drem]
alias TestFFIBasic_significand = ExternalFunction['significand', significand]
alias TestFFIBasic___significand = ExternalFunction['__significand', __significand]
alias TestFFIBasic_copysign = ExternalFunction['copysign', copysign]
alias TestFFIBasic_copysign = ExternalFunction['copysign', copysign]
alias TestFFIBasic___copysign = ExternalFunction['__copysign', __copysign]
alias TestFFIBasic_nan = ExternalFunction['nan', nan]
alias TestFFIBasic_nan = ExternalFunction['nan', nan]
alias TestFFIBasic___nan = ExternalFunction['__nan', __nan]
alias TestFFIBasic_isnan = ExternalFunction['isnan', isnan]
alias TestFFIBasic_j0 = ExternalFunction['j0', j0]
alias TestFFIBasic___j0 = ExternalFunction['__j0', __j0]
alias TestFFIBasic_j1 = ExternalFunction['j1', j1]
alias TestFFIBasic___j1 = ExternalFunction['__j1', __j1]
alias TestFFIBasic_jn = ExternalFunction['jn', jn]
alias TestFFIBasic___jn = ExternalFunction['__jn', __jn]
alias TestFFIBasic_y0 = ExternalFunction['y0', y0]
alias TestFFIBasic___y0 = ExternalFunction['__y0', __y0]
alias TestFFIBasic_y1 = ExternalFunction['y1', y1]
alias TestFFIBasic___y1 = ExternalFunction['__y1', __y1]
alias TestFFIBasic_yn = ExternalFunction['yn', yn]
alias TestFFIBasic___yn = ExternalFunction['__yn', __yn]
alias TestFFIBasic_erf = ExternalFunction['erf', erf]
alias TestFFIBasic_erf = ExternalFunction['erf', erf]
alias TestFFIBasic___erf = ExternalFunction['__erf', __erf]
alias TestFFIBasic_erfc = ExternalFunction['erfc', erfc]
alias TestFFIBasic_erfc = ExternalFunction['erfc', erfc]
alias TestFFIBasic___erfc = ExternalFunction['__erfc', __erfc]
alias TestFFIBasic_lgamma = ExternalFunction['lgamma', lgamma]
alias TestFFIBasic_lgamma = ExternalFunction['lgamma', lgamma]
alias TestFFIBasic___lgamma = ExternalFunction['__lgamma', __lgamma]
alias TestFFIBasic_tgamma = ExternalFunction['tgamma', tgamma]
alias TestFFIBasic_tgamma = ExternalFunction['tgamma', tgamma]
alias TestFFIBasic___tgamma = ExternalFunction['__tgamma', __tgamma]
alias TestFFIBasic_gamma = ExternalFunction['gamma', gamma]
alias TestFFIBasic___gamma = ExternalFunction['__gamma', __gamma]
alias TestFFIBasic_lgamma_r = ExternalFunction['lgamma_r', lgamma_r]
alias TestFFIBasic___lgamma_r = ExternalFunction['__lgamma_r', __lgamma_r]
alias TestFFIBasic_rint = ExternalFunction['rint', rint]
alias TestFFIBasic_rint = ExternalFunction['rint', rint]
alias TestFFIBasic___rint = ExternalFunction['__rint', __rint]
alias TestFFIBasic_nextafter = ExternalFunction['nextafter', nextafter]
alias TestFFIBasic_nextafter = ExternalFunction['nextafter', nextafter]
alias TestFFIBasic___nextafter = ExternalFunction['__nextafter', __nextafter]
alias TestFFIBasic_nexttoward = ExternalFunction['nexttoward', nexttoward]
alias TestFFIBasic_nexttoward = ExternalFunction['nexttoward', nexttoward]
alias TestFFIBasic___nexttoward = ExternalFunction['__nexttoward', __nexttoward]
alias TestFFIBasic_remainder = ExternalFunction['remainder', remainder]
alias TestFFIBasic_remainder = ExternalFunction['remainder', remainder]
alias TestFFIBasic___remainder = ExternalFunction['__remainder', __remainder]
alias TestFFIBasic_scalbn = ExternalFunction['scalbn', scalbn]
alias TestFFIBasic_scalbn = ExternalFunction['scalbn', scalbn]
alias TestFFIBasic___scalbn = ExternalFunction['__scalbn', __scalbn]
alias TestFFIBasic_ilogb = ExternalFunction['ilogb', ilogb]
alias TestFFIBasic_ilogb = ExternalFunction['ilogb', ilogb]
alias TestFFIBasic___ilogb = ExternalFunction['__ilogb', __ilogb]
alias TestFFIBasic_scalbln = ExternalFunction['scalbln', scalbln]
alias TestFFIBasic_scalbln = ExternalFunction['scalbln', scalbln]
alias TestFFIBasic___scalbln = ExternalFunction['__scalbln', __scalbln]
alias TestFFIBasic_nearbyint = ExternalFunction['nearbyint', nearbyint]
alias TestFFIBasic_nearbyint = ExternalFunction['nearbyint', nearbyint]
alias TestFFIBasic___nearbyint = ExternalFunction['__nearbyint', __nearbyint]
alias TestFFIBasic_round = ExternalFunction['round', round]
alias TestFFIBasic_round = ExternalFunction['round', round]
alias TestFFIBasic___round = ExternalFunction['__round', __round]
alias TestFFIBasic_trunc = ExternalFunction['trunc', trunc]
alias TestFFIBasic_trunc = ExternalFunction['trunc', trunc]
alias TestFFIBasic___trunc = ExternalFunction['__trunc', __trunc]
alias TestFFIBasic_remquo = ExternalFunction['remquo', remquo]
alias TestFFIBasic_remquo = ExternalFunction['remquo', remquo]
alias TestFFIBasic___remquo = ExternalFunction['__remquo', __remquo]
alias TestFFIBasic_lrint = ExternalFunction['lrint', lrint]
alias TestFFIBasic_lrint = ExternalFunction['lrint', lrint]
alias TestFFIBasic___lrint = ExternalFunction['__lrint', __lrint]
alias TestFFIBasic_llrint = ExternalFunction['llrint', llrint]
alias TestFFIBasic_llrint = ExternalFunction['llrint', llrint]
alias TestFFIBasic___llrint = ExternalFunction['__llrint', __llrint]
alias TestFFIBasic_lround = ExternalFunction['lround', lround]
alias TestFFIBasic_lround = ExternalFunction['lround', lround]
alias TestFFIBasic___lround = ExternalFunction['__lround', __lround]
alias TestFFIBasic_llround = ExternalFunction['llround', llround]
alias TestFFIBasic_llround = ExternalFunction['llround', llround]
alias TestFFIBasic___llround = ExternalFunction['__llround', __llround]
alias TestFFIBasic_fdim = ExternalFunction['fdim', fdim]
alias TestFFIBasic_fdim = ExternalFunction['fdim', fdim]
alias TestFFIBasic___fdim = ExternalFunction['__fdim', __fdim]
alias TestFFIBasic_fmax = ExternalFunction['fmax', fmax]
alias TestFFIBasic_fmax = ExternalFunction['fmax', fmax]
alias TestFFIBasic___fmax = ExternalFunction['__fmax', __fmax]
alias TestFFIBasic_fmin = ExternalFunction['fmin', fmin]
alias TestFFIBasic_fmin = ExternalFunction['fmin', fmin]
alias TestFFIBasic___fmin = ExternalFunction['__fmin', __fmin]
alias TestFFIBasic_fma = ExternalFunction['fma', fma]
alias TestFFIBasic_fma = ExternalFunction['fma', fma]
alias TestFFIBasic___fma = ExternalFunction['__fma', __fma]
alias TestFFIBasic_scalb = ExternalFunction['scalb', scalb]
alias TestFFIBasic___scalb = ExternalFunction['__scalb', __scalb]
alias TestFFIBasic___fpclassifyf = ExternalFunction['__fpclassifyf', __fpclassifyf]
alias TestFFIBasic___signbitf = ExternalFunction['__signbitf', __signbitf]
alias TestFFIBasic___isinff = ExternalFunction['__isinff', __isinff]
alias TestFFIBasic___finitef = ExternalFunction['__finitef', __finitef]
alias TestFFIBasic___finitef = ExternalFunction['__finitef', __finitef]
alias TestFFIBasic___isnanf = ExternalFunction['__isnanf', __isnanf]
alias TestFFIBasic___iseqsigf = ExternalFunction['__iseqsigf', __iseqsigf]
alias TestFFIBasic___issignalingf = ExternalFunction['__issignalingf', __issignalingf]
alias TestFFIBasic_acosf = ExternalFunction['acosf', acosf]
alias TestFFIBasic_acosf = ExternalFunction['acosf', acosf]
alias TestFFIBasic___acosf = ExternalFunction['__acosf', __acosf]
alias TestFFIBasic_asinf = ExternalFunction['asinf', asinf]
alias TestFFIBasic_asinf = ExternalFunction['asinf', asinf]
alias TestFFIBasic___asinf = ExternalFunction['__asinf', __asinf]
alias TestFFIBasic_atanf = ExternalFunction['atanf', atanf]
alias TestFFIBasic_atanf = ExternalFunction['atanf', atanf]
alias TestFFIBasic___atanf = ExternalFunction['__atanf', __atanf]
alias TestFFIBasic_atan2f = ExternalFunction['atan2f', atan2f]
alias TestFFIBasic_atan2f = ExternalFunction['atan2f', atan2f]
alias TestFFIBasic___atan2f = ExternalFunction['__atan2f', __atan2f]
alias TestFFIBasic_cosf = ExternalFunction['cosf', cosf]
alias TestFFIBasic_cosf = ExternalFunction['cosf', cosf]
alias TestFFIBasic___cosf = ExternalFunction['__cosf', __cosf]
alias TestFFIBasic_sinf = ExternalFunction['sinf', sinf]
alias TestFFIBasic_sinf = ExternalFunction['sinf', sinf]
alias TestFFIBasic___sinf = ExternalFunction['__sinf', __sinf]
alias TestFFIBasic_tanf = ExternalFunction['tanf', tanf]
alias TestFFIBasic_tanf = ExternalFunction['tanf', tanf]
alias TestFFIBasic___tanf = ExternalFunction['__tanf', __tanf]
alias TestFFIBasic_coshf = ExternalFunction['coshf', coshf]
alias TestFFIBasic_coshf = ExternalFunction['coshf', coshf]
alias TestFFIBasic___coshf = ExternalFunction['__coshf', __coshf]
alias TestFFIBasic_sinhf = ExternalFunction['sinhf', sinhf]
alias TestFFIBasic_sinhf = ExternalFunction['sinhf', sinhf]
alias TestFFIBasic___sinhf = ExternalFunction['__sinhf', __sinhf]
alias TestFFIBasic_tanhf = ExternalFunction['tanhf', tanhf]
alias TestFFIBasic_tanhf = ExternalFunction['tanhf', tanhf]
alias TestFFIBasic___tanhf = ExternalFunction['__tanhf', __tanhf]
alias TestFFIBasic_acoshf = ExternalFunction['acoshf', acoshf]
alias TestFFIBasic_acoshf = ExternalFunction['acoshf', acoshf]
alias TestFFIBasic___acoshf = ExternalFunction['__acoshf', __acoshf]
alias TestFFIBasic_asinhf = ExternalFunction['asinhf', asinhf]
alias TestFFIBasic_asinhf = ExternalFunction['asinhf', asinhf]
alias TestFFIBasic___asinhf = ExternalFunction['__asinhf', __asinhf]
alias TestFFIBasic_atanhf = ExternalFunction['atanhf', atanhf]
alias TestFFIBasic_atanhf = ExternalFunction['atanhf', atanhf]
alias TestFFIBasic___atanhf = ExternalFunction['__atanhf', __atanhf]
alias TestFFIBasic_expf = ExternalFunction['expf', expf]
alias TestFFIBasic_expf = ExternalFunction['expf', expf]
alias TestFFIBasic___expf = ExternalFunction['__expf', __expf]
alias TestFFIBasic_frexpf = ExternalFunction['frexpf', frexpf]
alias TestFFIBasic_frexpf = ExternalFunction['frexpf', frexpf]
alias TestFFIBasic___frexpf = ExternalFunction['__frexpf', __frexpf]
alias TestFFIBasic_ldexpf = ExternalFunction['ldexpf', ldexpf]
alias TestFFIBasic_ldexpf = ExternalFunction['ldexpf', ldexpf]
alias TestFFIBasic___ldexpf = ExternalFunction['__ldexpf', __ldexpf]
alias TestFFIBasic_logf = ExternalFunction['logf', logf]
alias TestFFIBasic_logf = ExternalFunction['logf', logf]
alias TestFFIBasic___logf = ExternalFunction['__logf', __logf]
alias TestFFIBasic_log10f = ExternalFunction['log10f', log10f]
alias TestFFIBasic_log10f = ExternalFunction['log10f', log10f]
alias TestFFIBasic___log10f = ExternalFunction['__log10f', __log10f]
alias TestFFIBasic_modff = ExternalFunction['modff', modff]
alias TestFFIBasic_modff = ExternalFunction['modff', modff]
alias TestFFIBasic___modff = ExternalFunction['__modff', __modff]
alias TestFFIBasic_expm1f = ExternalFunction['expm1f', expm1f]
alias TestFFIBasic_expm1f = ExternalFunction['expm1f', expm1f]
alias TestFFIBasic___expm1f = ExternalFunction['__expm1f', __expm1f]
alias TestFFIBasic_log1pf = ExternalFunction['log1pf', log1pf]
alias TestFFIBasic_log1pf = ExternalFunction['log1pf', log1pf]
alias TestFFIBasic___log1pf = ExternalFunction['__log1pf', __log1pf]
alias TestFFIBasic_logbf = ExternalFunction['logbf', logbf]
alias TestFFIBasic_logbf = ExternalFunction['logbf', logbf]
alias TestFFIBasic___logbf = ExternalFunction['__logbf', __logbf]
alias TestFFIBasic_exp2f = ExternalFunction['exp2f', exp2f]
alias TestFFIBasic_exp2f = ExternalFunction['exp2f', exp2f]
alias TestFFIBasic___exp2f = ExternalFunction['__exp2f', __exp2f]
alias TestFFIBasic_log2f = ExternalFunction['log2f', log2f]
alias TestFFIBasic_log2f = ExternalFunction['log2f', log2f]
alias TestFFIBasic___log2f = ExternalFunction['__log2f', __log2f]
alias TestFFIBasic_powf = ExternalFunction['powf', powf]
alias TestFFIBasic_powf = ExternalFunction['powf', powf]
alias TestFFIBasic___powf = ExternalFunction['__powf', __powf]
alias TestFFIBasic_sqrtf = ExternalFunction['sqrtf', sqrtf]
alias TestFFIBasic_sqrtf = ExternalFunction['sqrtf', sqrtf]
alias TestFFIBasic___sqrtf = ExternalFunction['__sqrtf', __sqrtf]
alias TestFFIBasic_hypotf = ExternalFunction['hypotf', hypotf]
alias TestFFIBasic_hypotf = ExternalFunction['hypotf', hypotf]
alias TestFFIBasic___hypotf = ExternalFunction['__hypotf', __hypotf]
alias TestFFIBasic_cbrtf = ExternalFunction['cbrtf', cbrtf]
alias TestFFIBasic_cbrtf = ExternalFunction['cbrtf', cbrtf]
alias TestFFIBasic___cbrtf = ExternalFunction['__cbrtf', __cbrtf]
alias TestFFIBasic_ceilf = ExternalFunction['ceilf', ceilf]
alias TestFFIBasic_ceilf = ExternalFunction['ceilf', ceilf]
alias TestFFIBasic___ceilf = ExternalFunction['__ceilf', __ceilf]
alias TestFFIBasic_fabsf = ExternalFunction['fabsf', fabsf]
alias TestFFIBasic_fabsf = ExternalFunction['fabsf', fabsf]
alias TestFFIBasic___fabsf = ExternalFunction['__fabsf', __fabsf]
alias TestFFIBasic_floorf = ExternalFunction['floorf', floorf]
alias TestFFIBasic_floorf = ExternalFunction['floorf', floorf]
alias TestFFIBasic___floorf = ExternalFunction['__floorf', __floorf]
alias TestFFIBasic_fmodf = ExternalFunction['fmodf', fmodf]
alias TestFFIBasic_fmodf = ExternalFunction['fmodf', fmodf]
alias TestFFIBasic___fmodf = ExternalFunction['__fmodf', __fmodf]
alias TestFFIBasic_isinff = ExternalFunction['isinff', isinff]
alias TestFFIBasic_finitef = ExternalFunction['finitef', finitef]
alias TestFFIBasic_finitef = ExternalFunction['finitef', finitef]
alias TestFFIBasic_dremf = ExternalFunction['dremf', dremf]
alias TestFFIBasic___dremf = ExternalFunction['__dremf', __dremf]
alias TestFFIBasic_significandf = ExternalFunction['significandf', significandf]
alias TestFFIBasic___significandf = ExternalFunction['__significandf', __significandf]
alias TestFFIBasic_copysignf = ExternalFunction['copysignf', copysignf]
alias TestFFIBasic_copysignf = ExternalFunction['copysignf', copysignf]
alias TestFFIBasic___copysignf = ExternalFunction['__copysignf', __copysignf]
alias TestFFIBasic_nanf = ExternalFunction['nanf', nanf]
alias TestFFIBasic_nanf = ExternalFunction['nanf', nanf]
alias TestFFIBasic___nanf = ExternalFunction['__nanf', __nanf]
alias TestFFIBasic_isnanf = ExternalFunction['isnanf', isnanf]
alias TestFFIBasic_j0f = ExternalFunction['j0f', j0f]
alias TestFFIBasic___j0f = ExternalFunction['__j0f', __j0f]
alias TestFFIBasic_j1f = ExternalFunction['j1f', j1f]
alias TestFFIBasic___j1f = ExternalFunction['__j1f', __j1f]
alias TestFFIBasic_jnf = ExternalFunction['jnf', jnf]
alias TestFFIBasic___jnf = ExternalFunction['__jnf', __jnf]
alias TestFFIBasic_y0f = ExternalFunction['y0f', y0f]
alias TestFFIBasic___y0f = ExternalFunction['__y0f', __y0f]
alias TestFFIBasic_y1f = ExternalFunction['y1f', y1f]
alias TestFFIBasic___y1f = ExternalFunction['__y1f', __y1f]
alias TestFFIBasic_ynf = ExternalFunction['ynf', ynf]
alias TestFFIBasic___ynf = ExternalFunction['__ynf', __ynf]
alias TestFFIBasic_erff = ExternalFunction['erff', erff]
alias TestFFIBasic_erff = ExternalFunction['erff', erff]
alias TestFFIBasic___erff = ExternalFunction['__erff', __erff]
alias TestFFIBasic_erfcf = ExternalFunction['erfcf', erfcf]
alias TestFFIBasic_erfcf = ExternalFunction['erfcf', erfcf]
alias TestFFIBasic___erfcf = ExternalFunction['__erfcf', __erfcf]
alias TestFFIBasic_lgammaf = ExternalFunction['lgammaf', lgammaf]
alias TestFFIBasic_lgammaf = ExternalFunction['lgammaf', lgammaf]
alias TestFFIBasic___lgammaf = ExternalFunction['__lgammaf', __lgammaf]
alias TestFFIBasic_tgammaf = ExternalFunction['tgammaf', tgammaf]
alias TestFFIBasic_tgammaf = ExternalFunction['tgammaf', tgammaf]
alias TestFFIBasic___tgammaf = ExternalFunction['__tgammaf', __tgammaf]
alias TestFFIBasic_gammaf = ExternalFunction['gammaf', gammaf]
alias TestFFIBasic___gammaf = ExternalFunction['__gammaf', __gammaf]
alias TestFFIBasic_lgammaf_r = ExternalFunction['lgammaf_r', lgammaf_r]
alias TestFFIBasic___lgammaf_r = ExternalFunction['__lgammaf_r', __lgammaf_r]
alias TestFFIBasic_rintf = ExternalFunction['rintf', rintf]
alias TestFFIBasic_rintf = ExternalFunction['rintf', rintf]
alias TestFFIBasic___rintf = ExternalFunction['__rintf', __rintf]
alias TestFFIBasic_nextafterf = ExternalFunction['nextafterf', nextafterf]
alias TestFFIBasic_nextafterf = ExternalFunction['nextafterf', nextafterf]
alias TestFFIBasic___nextafterf = ExternalFunction['__nextafterf', __nextafterf]
alias TestFFIBasic_nexttowardf = ExternalFunction['nexttowardf', nexttowardf]
alias TestFFIBasic_nexttowardf = ExternalFunction['nexttowardf', nexttowardf]
alias TestFFIBasic___nexttowardf = ExternalFunction['__nexttowardf', __nexttowardf]
alias TestFFIBasic_remainderf = ExternalFunction['remainderf', remainderf]
alias TestFFIBasic_remainderf = ExternalFunction['remainderf', remainderf]
alias TestFFIBasic___remainderf = ExternalFunction['__remainderf', __remainderf]
alias TestFFIBasic_scalbnf = ExternalFunction['scalbnf', scalbnf]
alias TestFFIBasic_scalbnf = ExternalFunction['scalbnf', scalbnf]
alias TestFFIBasic___scalbnf = ExternalFunction['__scalbnf', __scalbnf]
alias TestFFIBasic_ilogbf = ExternalFunction['ilogbf', ilogbf]
alias TestFFIBasic_ilogbf = ExternalFunction['ilogbf', ilogbf]
alias TestFFIBasic___ilogbf = ExternalFunction['__ilogbf', __ilogbf]
alias TestFFIBasic_scalblnf = ExternalFunction['scalblnf', scalblnf]
alias TestFFIBasic_scalblnf = ExternalFunction['scalblnf', scalblnf]
alias TestFFIBasic___scalblnf = ExternalFunction['__scalblnf', __scalblnf]
alias TestFFIBasic_nearbyintf = ExternalFunction['nearbyintf', nearbyintf]
alias TestFFIBasic_nearbyintf = ExternalFunction['nearbyintf', nearbyintf]
alias TestFFIBasic___nearbyintf = ExternalFunction['__nearbyintf', __nearbyintf]
alias TestFFIBasic_roundf = ExternalFunction['roundf', roundf]
alias TestFFIBasic_roundf = ExternalFunction['roundf', roundf]
alias TestFFIBasic___roundf = ExternalFunction['__roundf', __roundf]
alias TestFFIBasic_truncf = ExternalFunction['truncf', truncf]
alias TestFFIBasic_truncf = ExternalFunction['truncf', truncf]
alias TestFFIBasic___truncf = ExternalFunction['__truncf', __truncf]
alias TestFFIBasic_remquof = ExternalFunction['remquof', remquof]
alias TestFFIBasic_remquof = ExternalFunction['remquof', remquof]
alias TestFFIBasic___remquof = ExternalFunction['__remquof', __remquof]
alias TestFFIBasic_lrintf = ExternalFunction['lrintf', lrintf]
alias TestFFIBasic_lrintf = ExternalFunction['lrintf', lrintf]
alias TestFFIBasic___lrintf = ExternalFunction['__lrintf', __lrintf]
alias TestFFIBasic_llrintf = ExternalFunction['llrintf', llrintf]
alias TestFFIBasic_llrintf = ExternalFunction['llrintf', llrintf]
alias TestFFIBasic___llrintf = ExternalFunction['__llrintf', __llrintf]
alias TestFFIBasic_lroundf = ExternalFunction['lroundf', lroundf]
alias TestFFIBasic_lroundf = ExternalFunction['lroundf', lroundf]
alias TestFFIBasic___lroundf = ExternalFunction['__lroundf', __lroundf]
alias TestFFIBasic_llroundf = ExternalFunction['llroundf', llroundf]
alias TestFFIBasic_llroundf = ExternalFunction['llroundf', llroundf]
alias TestFFIBasic___llroundf = ExternalFunction['__llroundf', __llroundf]
alias TestFFIBasic_fdimf = ExternalFunction['fdimf', fdimf]
alias TestFFIBasic_fdimf = ExternalFunction['fdimf', fdimf]
alias TestFFIBasic___fdimf = ExternalFunction['__fdimf', __fdimf]
alias TestFFIBasic_fmaxf = ExternalFunction['fmaxf', fmaxf]
alias TestFFIBasic_fmaxf = ExternalFunction['fmaxf', fmaxf]
alias TestFFIBasic___fmaxf = ExternalFunction['__fmaxf', __fmaxf]
alias TestFFIBasic_fminf = ExternalFunction['fminf', fminf]
alias TestFFIBasic_fminf = ExternalFunction['fminf', fminf]
alias TestFFIBasic___fminf = ExternalFunction['__fminf', __fminf]
alias TestFFIBasic_fmaf = ExternalFunction['fmaf', fmaf]
alias TestFFIBasic_fmaf = ExternalFunction['fmaf', fmaf]
alias TestFFIBasic___fmaf = ExternalFunction['__fmaf', __fmaf]
alias TestFFIBasic_scalbf = ExternalFunction['scalbf', scalbf]
alias TestFFIBasic___scalbf = ExternalFunction['__scalbf', __scalbf]
alias TestFFIBasic___fpclassifyl = ExternalFunction['__fpclassifyl', __fpclassifyl]
alias TestFFIBasic___signbitl = ExternalFunction['__signbitl', __signbitl]
alias TestFFIBasic___isinfl = ExternalFunction['__isinfl', __isinfl]
alias TestFFIBasic___finitel = ExternalFunction['__finitel', __finitel]
alias TestFFIBasic___finitel = ExternalFunction['__finitel', __finitel]
alias TestFFIBasic___isnanl = ExternalFunction['__isnanl', __isnanl]
alias TestFFIBasic___iseqsigl = ExternalFunction['__iseqsigl', __iseqsigl]
alias TestFFIBasic___issignalingl = ExternalFunction['__issignalingl', __issignalingl]
alias TestFFIBasic_acosl = ExternalFunction['acosl', acosl]
alias TestFFIBasic_acosl = ExternalFunction['acosl', acosl]
alias TestFFIBasic___acosl = ExternalFunction['__acosl', __acosl]
alias TestFFIBasic_asinl = ExternalFunction['asinl', asinl]
alias TestFFIBasic_asinl = ExternalFunction['asinl', asinl]
alias TestFFIBasic___asinl = ExternalFunction['__asinl', __asinl]
alias TestFFIBasic_atanl = ExternalFunction['atanl', atanl]
alias TestFFIBasic_atanl = ExternalFunction['atanl', atanl]
alias TestFFIBasic___atanl = ExternalFunction['__atanl', __atanl]
alias TestFFIBasic_atan2l = ExternalFunction['atan2l', atan2l]
alias TestFFIBasic_atan2l = ExternalFunction['atan2l', atan2l]
alias TestFFIBasic___atan2l = ExternalFunction['__atan2l', __atan2l]
alias TestFFIBasic_cosl = ExternalFunction['cosl', cosl]
alias TestFFIBasic_cosl = ExternalFunction['cosl', cosl]
alias TestFFIBasic___cosl = ExternalFunction['__cosl', __cosl]
alias TestFFIBasic_sinl = ExternalFunction['sinl', sinl]
alias TestFFIBasic_sinl = ExternalFunction['sinl', sinl]
alias TestFFIBasic___sinl = ExternalFunction['__sinl', __sinl]
alias TestFFIBasic_tanl = ExternalFunction['tanl', tanl]
alias TestFFIBasic_tanl = ExternalFunction['tanl', tanl]
alias TestFFIBasic___tanl = ExternalFunction['__tanl', __tanl]
alias TestFFIBasic_coshl = ExternalFunction['coshl', coshl]
alias TestFFIBasic_coshl = ExternalFunction['coshl', coshl]
alias TestFFIBasic___coshl = ExternalFunction['__coshl', __coshl]
alias TestFFIBasic_sinhl = ExternalFunction['sinhl', sinhl]
alias TestFFIBasic_sinhl = ExternalFunction['sinhl', sinhl]
alias TestFFIBasic___sinhl = ExternalFunction['__sinhl', __sinhl]
alias TestFFIBasic_tanhl = ExternalFunction['tanhl', tanhl]
alias TestFFIBasic_tanhl = ExternalFunction['tanhl', tanhl]
alias TestFFIBasic___tanhl = ExternalFunction['__tanhl', __tanhl]
alias TestFFIBasic_acoshl = ExternalFunction['acoshl', acoshl]
alias TestFFIBasic_acoshl = ExternalFunction['acoshl', acoshl]
alias TestFFIBasic___acoshl = ExternalFunction['__acoshl', __acoshl]
alias TestFFIBasic_asinhl = ExternalFunction['asinhl', asinhl]
alias TestFFIBasic_asinhl = ExternalFunction['asinhl', asinhl]
alias TestFFIBasic___asinhl = ExternalFunction['__asinhl', __asinhl]
alias TestFFIBasic_atanhl = ExternalFunction['atanhl', atanhl]
alias TestFFIBasic_atanhl = ExternalFunction['atanhl', atanhl]
alias TestFFIBasic___atanhl = ExternalFunction['__atanhl', __atanhl]
alias TestFFIBasic_expl = ExternalFunction['expl', expl]
alias TestFFIBasic_expl = ExternalFunction['expl', expl]
alias TestFFIBasic___expl = ExternalFunction['__expl', __expl]
alias TestFFIBasic_frexpl = ExternalFunction['frexpl', frexpl]
alias TestFFIBasic_frexpl = ExternalFunction['frexpl', frexpl]
alias TestFFIBasic___frexpl = ExternalFunction['__frexpl', __frexpl]
alias TestFFIBasic_ldexpl = ExternalFunction['ldexpl', ldexpl]
alias TestFFIBasic_ldexpl = ExternalFunction['ldexpl', ldexpl]
alias TestFFIBasic___ldexpl = ExternalFunction['__ldexpl', __ldexpl]
alias TestFFIBasic_logl = ExternalFunction['logl', logl]
alias TestFFIBasic_logl = ExternalFunction['logl', logl]
alias TestFFIBasic___logl = ExternalFunction['__logl', __logl]
alias TestFFIBasic_log10l = ExternalFunction['log10l', log10l]
alias TestFFIBasic_log10l = ExternalFunction['log10l', log10l]
alias TestFFIBasic___log10l = ExternalFunction['__log10l', __log10l]
alias TestFFIBasic_modfl = ExternalFunction['modfl', modfl]
alias TestFFIBasic_modfl = ExternalFunction['modfl', modfl]
alias TestFFIBasic___modfl = ExternalFunction['__modfl', __modfl]
alias TestFFIBasic_expm1l = ExternalFunction['expm1l', expm1l]
alias TestFFIBasic_expm1l = ExternalFunction['expm1l', expm1l]
alias TestFFIBasic___expm1l = ExternalFunction['__expm1l', __expm1l]
alias TestFFIBasic_log1pl = ExternalFunction['log1pl', log1pl]
alias TestFFIBasic_log1pl = ExternalFunction['log1pl', log1pl]
alias TestFFIBasic___log1pl = ExternalFunction['__log1pl', __log1pl]
alias TestFFIBasic_logbl = ExternalFunction['logbl', logbl]
alias TestFFIBasic_logbl = ExternalFunction['logbl', logbl]
alias TestFFIBasic___logbl = ExternalFunction['__logbl', __logbl]
alias TestFFIBasic_exp2l = ExternalFunction['exp2l', exp2l]
alias TestFFIBasic_exp2l = ExternalFunction['exp2l', exp2l]
alias TestFFIBasic___exp2l = ExternalFunction['__exp2l', __exp2l]
alias TestFFIBasic_log2l = ExternalFunction['log2l', log2l]
alias TestFFIBasic_log2l = ExternalFunction['log2l', log2l]
alias TestFFIBasic___log2l = ExternalFunction['__log2l', __log2l]
alias TestFFIBasic_powl = ExternalFunction['powl', powl]
alias TestFFIBasic_powl = ExternalFunction['powl', powl]
alias TestFFIBasic___powl = ExternalFunction['__powl', __powl]
alias TestFFIBasic_sqrtl = ExternalFunction['sqrtl', sqrtl]
alias TestFFIBasic_sqrtl = ExternalFunction['sqrtl', sqrtl]
alias TestFFIBasic___sqrtl = ExternalFunction['__sqrtl', __sqrtl]
alias TestFFIBasic_hypotl = ExternalFunction['hypotl', hypotl]
alias TestFFIBasic_hypotl = ExternalFunction['hypotl', hypotl]
alias TestFFIBasic___hypotl = ExternalFunction['__hypotl', __hypotl]
alias TestFFIBasic_cbrtl = ExternalFunction['cbrtl', cbrtl]
alias TestFFIBasic_cbrtl = ExternalFunction['cbrtl', cbrtl]
alias TestFFIBasic___cbrtl = ExternalFunction['__cbrtl', __cbrtl]
alias TestFFIBasic_ceill = ExternalFunction['ceill', ceill]
alias TestFFIBasic_ceill = ExternalFunction['ceill', ceill]
alias TestFFIBasic___ceill = ExternalFunction['__ceill', __ceill]
alias TestFFIBasic_fabsl = ExternalFunction['fabsl', fabsl]
alias TestFFIBasic_fabsl = ExternalFunction['fabsl', fabsl]
alias TestFFIBasic___fabsl = ExternalFunction['__fabsl', __fabsl]
alias TestFFIBasic_floorl = ExternalFunction['floorl', floorl]
alias TestFFIBasic_floorl = ExternalFunction['floorl', floorl]
alias TestFFIBasic___floorl = ExternalFunction['__floorl', __floorl]
alias TestFFIBasic_fmodl = ExternalFunction['fmodl', fmodl]
alias TestFFIBasic_fmodl = ExternalFunction['fmodl', fmodl]
alias TestFFIBasic___fmodl = ExternalFunction['__fmodl', __fmodl]
alias TestFFIBasic_isinfl = ExternalFunction['isinfl', isinfl]
alias TestFFIBasic_finitel = ExternalFunction['finitel', finitel]
alias TestFFIBasic_finitel = ExternalFunction['finitel', finitel]
alias TestFFIBasic_dreml = ExternalFunction['dreml', dreml]
alias TestFFIBasic___dreml = ExternalFunction['__dreml', __dreml]
alias TestFFIBasic_significandl = ExternalFunction['significandl', significandl]
alias TestFFIBasic___significandl = ExternalFunction['__significandl', __significandl]
alias TestFFIBasic_copysignl = ExternalFunction['copysignl', copysignl]
alias TestFFIBasic_copysignl = ExternalFunction['copysignl', copysignl]
alias TestFFIBasic___copysignl = ExternalFunction['__copysignl', __copysignl]
alias TestFFIBasic_nanl = ExternalFunction['nanl', nanl]
alias TestFFIBasic_nanl = ExternalFunction['nanl', nanl]
alias TestFFIBasic___nanl = ExternalFunction['__nanl', __nanl]
alias TestFFIBasic_isnanl = ExternalFunction['isnanl', isnanl]
alias TestFFIBasic_j0l = ExternalFunction['j0l', j0l]
alias TestFFIBasic___j0l = ExternalFunction['__j0l', __j0l]
alias TestFFIBasic_j1l = ExternalFunction['j1l', j1l]
alias TestFFIBasic___j1l = ExternalFunction['__j1l', __j1l]
alias TestFFIBasic_jnl = ExternalFunction['jnl', jnl]
alias TestFFIBasic___jnl = ExternalFunction['__jnl', __jnl]
alias TestFFIBasic_y0l = ExternalFunction['y0l', y0l]
alias TestFFIBasic___y0l = ExternalFunction['__y0l', __y0l]
alias TestFFIBasic_y1l = ExternalFunction['y1l', y1l]
alias TestFFIBasic___y1l = ExternalFunction['__y1l', __y1l]
alias TestFFIBasic_ynl = ExternalFunction['ynl', ynl]
alias TestFFIBasic___ynl = ExternalFunction['__ynl', __ynl]
alias TestFFIBasic_erfl = ExternalFunction['erfl', erfl]
alias TestFFIBasic_erfl = ExternalFunction['erfl', erfl]
alias TestFFIBasic___erfl = ExternalFunction['__erfl', __erfl]
alias TestFFIBasic_erfcl = ExternalFunction['erfcl', erfcl]
alias TestFFIBasic_erfcl = ExternalFunction['erfcl', erfcl]
alias TestFFIBasic___erfcl = ExternalFunction['__erfcl', __erfcl]
alias TestFFIBasic_lgammal = ExternalFunction['lgammal', lgammal]
alias TestFFIBasic_lgammal = ExternalFunction['lgammal', lgammal]
alias TestFFIBasic___lgammal = ExternalFunction['__lgammal', __lgammal]
alias TestFFIBasic_tgammal = ExternalFunction['tgammal', tgammal]
alias TestFFIBasic_tgammal = ExternalFunction['tgammal', tgammal]
alias TestFFIBasic___tgammal = ExternalFunction['__tgammal', __tgammal]
alias TestFFIBasic_gammal = ExternalFunction['gammal', gammal]
alias TestFFIBasic___gammal = ExternalFunction['__gammal', __gammal]
alias TestFFIBasic_lgammal_r = ExternalFunction['lgammal_r', lgammal_r]
alias TestFFIBasic___lgammal_r = ExternalFunction['__lgammal_r', __lgammal_r]
alias TestFFIBasic_rintl = ExternalFunction['rintl', rintl]
alias TestFFIBasic_rintl = ExternalFunction['rintl', rintl]
alias TestFFIBasic___rintl = ExternalFunction['__rintl', __rintl]
alias TestFFIBasic_nextafterl = ExternalFunction['nextafterl', nextafterl]
alias TestFFIBasic_nextafterl = ExternalFunction['nextafterl', nextafterl]
alias TestFFIBasic___nextafterl = ExternalFunction['__nextafterl', __nextafterl]
alias TestFFIBasic_nexttowardl = ExternalFunction['nexttowardl', nexttowardl]
alias TestFFIBasic_nexttowardl = ExternalFunction['nexttowardl', nexttowardl]
alias TestFFIBasic___nexttowardl = ExternalFunction['__nexttowardl', __nexttowardl]
alias TestFFIBasic_remainderl = ExternalFunction['remainderl', remainderl]
alias TestFFIBasic_remainderl = ExternalFunction['remainderl', remainderl]
alias TestFFIBasic___remainderl = ExternalFunction['__remainderl', __remainderl]
alias TestFFIBasic_scalbnl = ExternalFunction['scalbnl', scalbnl]
alias TestFFIBasic_scalbnl = ExternalFunction['scalbnl', scalbnl]
alias TestFFIBasic___scalbnl = ExternalFunction['__scalbnl', __scalbnl]
alias TestFFIBasic_ilogbl = ExternalFunction['ilogbl', ilogbl]
alias TestFFIBasic_ilogbl = ExternalFunction['ilogbl', ilogbl]
alias TestFFIBasic___ilogbl = ExternalFunction['__ilogbl', __ilogbl]
alias TestFFIBasic_scalblnl = ExternalFunction['scalblnl', scalblnl]
alias TestFFIBasic_scalblnl = ExternalFunction['scalblnl', scalblnl]
alias TestFFIBasic___scalblnl = ExternalFunction['__scalblnl', __scalblnl]
alias TestFFIBasic_nearbyintl = ExternalFunction['nearbyintl', nearbyintl]
alias TestFFIBasic_nearbyintl = ExternalFunction['nearbyintl', nearbyintl]
alias TestFFIBasic___nearbyintl = ExternalFunction['__nearbyintl', __nearbyintl]
alias TestFFIBasic_roundl = ExternalFunction['roundl', roundl]
alias TestFFIBasic_roundl = ExternalFunction['roundl', roundl]
alias TestFFIBasic___roundl = ExternalFunction['__roundl', __roundl]
alias TestFFIBasic_truncl = ExternalFunction['truncl', truncl]
alias TestFFIBasic_truncl = ExternalFunction['truncl', truncl]
alias TestFFIBasic___truncl = ExternalFunction['__truncl', __truncl]
alias TestFFIBasic_remquol = ExternalFunction['remquol', remquol]
alias TestFFIBasic_remquol = ExternalFunction['remquol', remquol]
alias TestFFIBasic___remquol = ExternalFunction['__remquol', __remquol]
alias TestFFIBasic_lrintl = ExternalFunction['lrintl', lrintl]
alias TestFFIBasic_lrintl = ExternalFunction['lrintl', lrintl]
alias TestFFIBasic___lrintl = ExternalFunction['__lrintl', __lrintl]
alias TestFFIBasic_llrintl = ExternalFunction['llrintl', llrintl]
alias TestFFIBasic_llrintl = ExternalFunction['llrintl', llrintl]
alias TestFFIBasic___llrintl = ExternalFunction['__llrintl', __llrintl]
alias TestFFIBasic_lroundl = ExternalFunction['lroundl', lroundl]
alias TestFFIBasic_lroundl = ExternalFunction['lroundl', lroundl]
alias TestFFIBasic___lroundl = ExternalFunction['__lroundl', __lroundl]
alias TestFFIBasic_llroundl = ExternalFunction['llroundl', llroundl]
alias TestFFIBasic_llroundl = ExternalFunction['llroundl', llroundl]
alias TestFFIBasic___llroundl = ExternalFunction['__llroundl', __llroundl]
alias TestFFIBasic_fdiml = ExternalFunction['fdiml', fdiml]
alias TestFFIBasic_fdiml = ExternalFunction['fdiml', fdiml]
alias TestFFIBasic___fdiml = ExternalFunction['__fdiml', __fdiml]
alias TestFFIBasic_fmaxl = ExternalFunction['fmaxl', fmaxl]
alias TestFFIBasic_fmaxl = ExternalFunction['fmaxl', fmaxl]
alias TestFFIBasic___fmaxl = ExternalFunction['__fmaxl', __fmaxl]
alias TestFFIBasic_fminl = ExternalFunction['fminl', fminl]
alias TestFFIBasic_fminl = ExternalFunction['fminl', fminl]
alias TestFFIBasic___fminl = ExternalFunction['__fminl', __fminl]
alias TestFFIBasic_fmal = ExternalFunction['fmal', fmal]
alias TestFFIBasic_fmal = ExternalFunction['fmal', fmal]
alias TestFFIBasic___fmal = ExternalFunction['__fmal', __fmal]
alias TestFFIBasic_scalbl = ExternalFunction['scalbl', scalbl]
alias TestFFIBasic___scalbl = ExternalFunction['__scalbl', __scalbl]
alias TestFFIBasic_mj_defaultVFS = ExternalFunction['mj_defaultVFS', mj_defaultVFS]
alias TestFFIBasic_mj_addFileVFS = ExternalFunction['mj_addFileVFS', mj_addFileVFS]
alias TestFFIBasic_mj_addBufferVFS = ExternalFunction['mj_addBufferVFS', mj_addBufferVFS]
alias TestFFIBasic_mj_deleteFileVFS = ExternalFunction['mj_deleteFileVFS', mj_deleteFileVFS]
alias TestFFIBasic_mj_deleteVFS = ExternalFunction['mj_deleteVFS', mj_deleteVFS]
alias TestFFIBasic_mj_loadXML = ExternalFunction['mj_loadXML', mj_loadXML]
alias TestFFIBasic_mj_parseXML = ExternalFunction['mj_parseXML', mj_parseXML]
alias TestFFIBasic_mj_parseXMLString = ExternalFunction['mj_parseXMLString', mj_parseXMLString]
alias TestFFIBasic_mj_compile = ExternalFunction['mj_compile', mj_compile]
alias TestFFIBasic_mj_recompile = ExternalFunction['mj_recompile', mj_recompile]
alias TestFFIBasic_mj_saveLastXML = ExternalFunction['mj_saveLastXML', mj_saveLastXML]
alias TestFFIBasic_mj_freeLastXML = ExternalFunction['mj_freeLastXML', mj_freeLastXML]
alias TestFFIBasic_mj_saveXMLString = ExternalFunction['mj_saveXMLString', mj_saveXMLString]
alias TestFFIBasic_mj_saveXML = ExternalFunction['mj_saveXML', mj_saveXML]
alias TestFFIBasic_mj_step = ExternalFunction['mj_step', mj_step]
alias TestFFIBasic_mj_step1 = ExternalFunction['mj_step1', mj_step1]
alias TestFFIBasic_mj_step2 = ExternalFunction['mj_step2', mj_step2]
alias TestFFIBasic_mj_forward = ExternalFunction['mj_forward', mj_forward]
alias TestFFIBasic_mj_inverse = ExternalFunction['mj_inverse', mj_inverse]
alias TestFFIBasic_mj_forwardSkip = ExternalFunction['mj_forwardSkip', mj_forwardSkip]
alias TestFFIBasic_mj_inverseSkip = ExternalFunction['mj_inverseSkip', mj_inverseSkip]
alias TestFFIBasic_mj_defaultLROpt = ExternalFunction['mj_defaultLROpt', mj_defaultLROpt]
alias TestFFIBasic_mj_defaultSolRefImp = ExternalFunction['mj_defaultSolRefImp', mj_defaultSolRefImp]
alias TestFFIBasic_mj_defaultOption = ExternalFunction['mj_defaultOption', mj_defaultOption]
alias TestFFIBasic_mj_defaultVisual = ExternalFunction['mj_defaultVisual', mj_defaultVisual]
alias TestFFIBasic_mj_copyModel = ExternalFunction['mj_copyModel', mj_copyModel]
alias TestFFIBasic_mj_saveModel = ExternalFunction['mj_saveModel', mj_saveModel]
alias TestFFIBasic_mj_loadModel = ExternalFunction['mj_loadModel', mj_loadModel]
alias TestFFIBasic_mj_deleteModel = ExternalFunction['mj_deleteModel', mj_deleteModel]
alias TestFFIBasic_mj_sizeModel = ExternalFunction['mj_sizeModel', mj_sizeModel]
alias TestFFIBasic_mj_makeData = ExternalFunction['mj_makeData', mj_makeData]
alias TestFFIBasic_mj_copyData = ExternalFunction['mj_copyData', mj_copyData]
alias TestFFIBasic_mj_resetData = ExternalFunction['mj_resetData', mj_resetData]
alias TestFFIBasic_mj_resetDataDebug = ExternalFunction['mj_resetDataDebug', mj_resetDataDebug]
alias TestFFIBasic_mj_resetDataKeyframe = ExternalFunction['mj_resetDataKeyframe', mj_resetDataKeyframe]
alias TestFFIBasic_mj_markStack = ExternalFunction['mj_markStack', mj_markStack]
alias TestFFIBasic_mj_freeStack = ExternalFunction['mj_freeStack', mj_freeStack]
alias TestFFIBasic_mj_stackAllocByte = ExternalFunction['mj_stackAllocByte', mj_stackAllocByte]
alias TestFFIBasic_mj_stackAllocNum = ExternalFunction['mj_stackAllocNum', mj_stackAllocNum]
alias TestFFIBasic_mj_stackAllocInt = ExternalFunction['mj_stackAllocInt', mj_stackAllocInt]
alias TestFFIBasic_mj_deleteData = ExternalFunction['mj_deleteData', mj_deleteData]
alias TestFFIBasic_mj_resetCallbacks = ExternalFunction['mj_resetCallbacks', mj_resetCallbacks]
alias TestFFIBasic_mj_setConst = ExternalFunction['mj_setConst', mj_setConst]
alias TestFFIBasic_mj_setLengthRange = ExternalFunction['mj_setLengthRange', mj_setLengthRange]
alias TestFFIBasic_mj_makeSpec = ExternalFunction['mj_makeSpec', mj_makeSpec]
alias TestFFIBasic_mj_copySpec = ExternalFunction['mj_copySpec', mj_copySpec]
alias TestFFIBasic_mj_deleteSpec = ExternalFunction['mj_deleteSpec', mj_deleteSpec]
alias TestFFIBasic_mjs_activatePlugin = ExternalFunction['mjs_activatePlugin', mjs_activatePlugin]
alias TestFFIBasic_mjs_setDeepCopy = ExternalFunction['mjs_setDeepCopy', mjs_setDeepCopy]
alias TestFFIBasic_mj_printFormattedModel = ExternalFunction['mj_printFormattedModel', mj_printFormattedModel]
alias TestFFIBasic_mj_printModel = ExternalFunction['mj_printModel', mj_printModel]
alias TestFFIBasic_mj_printFormattedData = ExternalFunction['mj_printFormattedData', mj_printFormattedData]
alias TestFFIBasic_mj_printData = ExternalFunction['mj_printData', mj_printData]
alias TestFFIBasic_mju_printMat = ExternalFunction['mju_printMat', mju_printMat]
alias TestFFIBasic_mju_printMatSparse = ExternalFunction['mju_printMatSparse', mju_printMatSparse]
alias TestFFIBasic_mj_printSchema = ExternalFunction['mj_printSchema', mj_printSchema]
alias TestFFIBasic_mj_fwdPosition = ExternalFunction['mj_fwdPosition', mj_fwdPosition]
alias TestFFIBasic_mj_fwdVelocity = ExternalFunction['mj_fwdVelocity', mj_fwdVelocity]
alias TestFFIBasic_mj_fwdActuation = ExternalFunction['mj_fwdActuation', mj_fwdActuation]
alias TestFFIBasic_mj_fwdAcceleration = ExternalFunction['mj_fwdAcceleration', mj_fwdAcceleration]
alias TestFFIBasic_mj_fwdConstraint = ExternalFunction['mj_fwdConstraint', mj_fwdConstraint]
alias TestFFIBasic_mj_Euler = ExternalFunction['mj_Euler', mj_Euler]
alias TestFFIBasic_mj_RungeKutta = ExternalFunction['mj_RungeKutta', mj_RungeKutta]
alias TestFFIBasic_mj_implicit = ExternalFunction['mj_implicit', mj_implicit]
alias TestFFIBasic_mj_invPosition = ExternalFunction['mj_invPosition', mj_invPosition]
alias TestFFIBasic_mj_invVelocity = ExternalFunction['mj_invVelocity', mj_invVelocity]
alias TestFFIBasic_mj_invConstraint = ExternalFunction['mj_invConstraint', mj_invConstraint]
alias TestFFIBasic_mj_compareFwdInv = ExternalFunction['mj_compareFwdInv', mj_compareFwdInv]
alias TestFFIBasic_mj_sensorPos = ExternalFunction['mj_sensorPos', mj_sensorPos]
alias TestFFIBasic_mj_sensorVel = ExternalFunction['mj_sensorVel', mj_sensorVel]
alias TestFFIBasic_mj_sensorAcc = ExternalFunction['mj_sensorAcc', mj_sensorAcc]
alias TestFFIBasic_mj_energyPos = ExternalFunction['mj_energyPos', mj_energyPos]
alias TestFFIBasic_mj_energyVel = ExternalFunction['mj_energyVel', mj_energyVel]
alias TestFFIBasic_mj_checkPos = ExternalFunction['mj_checkPos', mj_checkPos]
alias TestFFIBasic_mj_checkVel = ExternalFunction['mj_checkVel', mj_checkVel]
alias TestFFIBasic_mj_checkAcc = ExternalFunction['mj_checkAcc', mj_checkAcc]
alias TestFFIBasic_mj_kinematics = ExternalFunction['mj_kinematics', mj_kinematics]
alias TestFFIBasic_mj_comPos = ExternalFunction['mj_comPos', mj_comPos]
alias TestFFIBasic_mj_camlight = ExternalFunction['mj_camlight', mj_camlight]
alias TestFFIBasic_mj_flex = ExternalFunction['mj_flex', mj_flex]
alias TestFFIBasic_mj_tendon = ExternalFunction['mj_tendon', mj_tendon]
alias TestFFIBasic_mj_transmission = ExternalFunction['mj_transmission', mj_transmission]
alias TestFFIBasic_mj_crb = ExternalFunction['mj_crb', mj_crb]
alias TestFFIBasic_mj_factorM = ExternalFunction['mj_factorM', mj_factorM]
alias TestFFIBasic_mj_solveM = ExternalFunction['mj_solveM', mj_solveM]
alias TestFFIBasic_mj_solveM2 = ExternalFunction['mj_solveM2', mj_solveM2]
alias TestFFIBasic_mj_comVel = ExternalFunction['mj_comVel', mj_comVel]
alias TestFFIBasic_mj_passive = ExternalFunction['mj_passive', mj_passive]
alias TestFFIBasic_mj_subtreeVel = ExternalFunction['mj_subtreeVel', mj_subtreeVel]
alias TestFFIBasic_mj_rne = ExternalFunction['mj_rne', mj_rne]
alias TestFFIBasic_mj_rnePostConstraint = ExternalFunction['mj_rnePostConstraint', mj_rnePostConstraint]
alias TestFFIBasic_mj_collision = ExternalFunction['mj_collision', mj_collision]
alias TestFFIBasic_mj_makeConstraint = ExternalFunction['mj_makeConstraint', mj_makeConstraint]
alias TestFFIBasic_mj_island = ExternalFunction['mj_island', mj_island]
alias TestFFIBasic_mj_projectConstraint = ExternalFunction['mj_projectConstraint', mj_projectConstraint]
alias TestFFIBasic_mj_referenceConstraint = ExternalFunction['mj_referenceConstraint', mj_referenceConstraint]
alias TestFFIBasic_mj_constraintUpdate = ExternalFunction['mj_constraintUpdate', mj_constraintUpdate]
alias TestFFIBasic_mj_stateSize = ExternalFunction['mj_stateSize', mj_stateSize]
alias TestFFIBasic_mj_getState = ExternalFunction['mj_getState', mj_getState]
alias TestFFIBasic_mj_setState = ExternalFunction['mj_setState', mj_setState]
alias TestFFIBasic_mj_setKeyframe = ExternalFunction['mj_setKeyframe', mj_setKeyframe]
alias TestFFIBasic_mj_addContact = ExternalFunction['mj_addContact', mj_addContact]
alias TestFFIBasic_mj_isPyramidal = ExternalFunction['mj_isPyramidal', mj_isPyramidal]
alias TestFFIBasic_mj_isSparse = ExternalFunction['mj_isSparse', mj_isSparse]
alias TestFFIBasic_mj_isDual = ExternalFunction['mj_isDual', mj_isDual]
alias TestFFIBasic_mj_mulJacVec = ExternalFunction['mj_mulJacVec', mj_mulJacVec]
alias TestFFIBasic_mj_mulJacTVec = ExternalFunction['mj_mulJacTVec', mj_mulJacTVec]
alias TestFFIBasic_mj_jac = ExternalFunction['mj_jac', mj_jac]
alias TestFFIBasic_mj_jacBody = ExternalFunction['mj_jacBody', mj_jacBody]
alias TestFFIBasic_mj_jacBodyCom = ExternalFunction['mj_jacBodyCom', mj_jacBodyCom]
alias TestFFIBasic_mj_jacSubtreeCom = ExternalFunction['mj_jacSubtreeCom', mj_jacSubtreeCom]
alias TestFFIBasic_mj_jacGeom = ExternalFunction['mj_jacGeom', mj_jacGeom]
alias TestFFIBasic_mj_jacSite = ExternalFunction['mj_jacSite', mj_jacSite]
alias TestFFIBasic_mj_jacPointAxis = ExternalFunction['mj_jacPointAxis', mj_jacPointAxis]
alias TestFFIBasic_mj_jacDot = ExternalFunction['mj_jacDot', mj_jacDot]
alias TestFFIBasic_mj_angmomMat = ExternalFunction['mj_angmomMat', mj_angmomMat]
alias TestFFIBasic_mj_name2id = ExternalFunction['mj_name2id', mj_name2id]
alias TestFFIBasic_mj_id2name = ExternalFunction['mj_id2name', mj_id2name]
alias TestFFIBasic_mj_fullM = ExternalFunction['mj_fullM', mj_fullM]
alias TestFFIBasic_mj_mulM = ExternalFunction['mj_mulM', mj_mulM]
alias TestFFIBasic_mj_mulM2 = ExternalFunction['mj_mulM2', mj_mulM2]
alias TestFFIBasic_mj_addM = ExternalFunction['mj_addM', mj_addM]
alias TestFFIBasic_mj_applyFT = ExternalFunction['mj_applyFT', mj_applyFT]
alias TestFFIBasic_mj_objectVelocity = ExternalFunction['mj_objectVelocity', mj_objectVelocity]
alias TestFFIBasic_mj_objectAcceleration = ExternalFunction['mj_objectAcceleration', mj_objectAcceleration]
alias TestFFIBasic_mj_geomDistance = ExternalFunction['mj_geomDistance', mj_geomDistance]
alias TestFFIBasic_mj_contactForce = ExternalFunction['mj_contactForce', mj_contactForce]
alias TestFFIBasic_mj_differentiatePos = ExternalFunction['mj_differentiatePos', mj_differentiatePos]
alias TestFFIBasic_mj_integratePos = ExternalFunction['mj_integratePos', mj_integratePos]
alias TestFFIBasic_mj_normalizeQuat = ExternalFunction['mj_normalizeQuat', mj_normalizeQuat]
alias TestFFIBasic_mj_local2Global = ExternalFunction['mj_local2Global', mj_local2Global]
alias TestFFIBasic_mj_getTotalmass = ExternalFunction['mj_getTotalmass', mj_getTotalmass]
alias TestFFIBasic_mj_setTotalmass = ExternalFunction['mj_setTotalmass', mj_setTotalmass]
alias TestFFIBasic_mj_getPluginConfig = ExternalFunction['mj_getPluginConfig', mj_getPluginConfig]
alias TestFFIBasic_mj_loadPluginLibrary = ExternalFunction['mj_loadPluginLibrary', mj_loadPluginLibrary]
alias TestFFIBasic_mj_loadAllPluginLibraries = ExternalFunction['mj_loadAllPluginLibraries', mj_loadAllPluginLibraries]
alias TestFFIBasic_mj_version = ExternalFunction['mj_version', mj_version]
alias TestFFIBasic_mj_versionString = ExternalFunction['mj_versionString', mj_versionString]
alias TestFFIBasic_mj_multiRay = ExternalFunction['mj_multiRay', mj_multiRay]
alias TestFFIBasic_mj_ray = ExternalFunction['mj_ray', mj_ray]
alias TestFFIBasic_mj_rayHfield = ExternalFunction['mj_rayHfield', mj_rayHfield]
alias TestFFIBasic_mj_rayMesh = ExternalFunction['mj_rayMesh', mj_rayMesh]
alias TestFFIBasic_mju_rayGeom = ExternalFunction['mju_rayGeom', mju_rayGeom]
alias TestFFIBasic_mju_rayFlex = ExternalFunction['mju_rayFlex', mju_rayFlex]
alias TestFFIBasic_mju_raySkin = ExternalFunction['mju_raySkin', mju_raySkin]
alias TestFFIBasic_mjv_defaultCamera = ExternalFunction['mjv_defaultCamera', mjv_defaultCamera]
alias TestFFIBasic_mjv_defaultFreeCamera = ExternalFunction['mjv_defaultFreeCamera', mjv_defaultFreeCamera]
alias TestFFIBasic_mjv_defaultPerturb = ExternalFunction['mjv_defaultPerturb', mjv_defaultPerturb]
alias TestFFIBasic_mjv_room2model = ExternalFunction['mjv_room2model', mjv_room2model]
alias TestFFIBasic_mjv_model2room = ExternalFunction['mjv_model2room', mjv_model2room]
alias TestFFIBasic_mjv_cameraInModel = ExternalFunction['mjv_cameraInModel', mjv_cameraInModel]
alias TestFFIBasic_mjv_cameraInRoom = ExternalFunction['mjv_cameraInRoom', mjv_cameraInRoom]
alias TestFFIBasic_mjv_frustumHeight = ExternalFunction['mjv_frustumHeight', mjv_frustumHeight]
alias TestFFIBasic_mjv_alignToCamera = ExternalFunction['mjv_alignToCamera', mjv_alignToCamera]
alias TestFFIBasic_mjv_moveCamera = ExternalFunction['mjv_moveCamera', mjv_moveCamera]
alias TestFFIBasic_mjv_moveCameraFromState = ExternalFunction['mjv_moveCameraFromState', mjv_moveCameraFromState]
alias TestFFIBasic_mjv_movePerturb = ExternalFunction['mjv_movePerturb', mjv_movePerturb]
alias TestFFIBasic_mjv_movePerturbFromState = ExternalFunction['mjv_movePerturbFromState', mjv_movePerturbFromState]
alias TestFFIBasic_mjv_moveModel = ExternalFunction['mjv_moveModel', mjv_moveModel]
alias TestFFIBasic_mjv_initPerturb = ExternalFunction['mjv_initPerturb', mjv_initPerturb]
alias TestFFIBasic_mjv_applyPerturbPose = ExternalFunction['mjv_applyPerturbPose', mjv_applyPerturbPose]
alias TestFFIBasic_mjv_applyPerturbForce = ExternalFunction['mjv_applyPerturbForce', mjv_applyPerturbForce]
alias TestFFIBasic_mjv_averageCamera = ExternalFunction['mjv_averageCamera', mjv_averageCamera]
alias TestFFIBasic_mjv_select = ExternalFunction['mjv_select', mjv_select]
alias TestFFIBasic_mjv_defaultOption = ExternalFunction['mjv_defaultOption', mjv_defaultOption]
alias TestFFIBasic_mjv_defaultFigure = ExternalFunction['mjv_defaultFigure', mjv_defaultFigure]
alias TestFFIBasic_mjv_initGeom = ExternalFunction['mjv_initGeom', mjv_initGeom]
alias TestFFIBasic_mjv_connector = ExternalFunction['mjv_connector', mjv_connector]
alias TestFFIBasic_mjv_defaultScene = ExternalFunction['mjv_defaultScene', mjv_defaultScene]
alias TestFFIBasic_mjv_makeScene = ExternalFunction['mjv_makeScene', mjv_makeScene]
alias TestFFIBasic_mjv_freeScene = ExternalFunction['mjv_freeScene', mjv_freeScene]
alias TestFFIBasic_mjv_updateScene = ExternalFunction['mjv_updateScene', mjv_updateScene]
alias TestFFIBasic_mjv_updateSceneFromState = ExternalFunction['mjv_updateSceneFromState', mjv_updateSceneFromState]
alias TestFFIBasic_mjv_copyModel = ExternalFunction['mjv_copyModel', mjv_copyModel]
alias TestFFIBasic_mjv_defaultSceneState = ExternalFunction['mjv_defaultSceneState', mjv_defaultSceneState]
alias TestFFIBasic_mjv_makeSceneState = ExternalFunction['mjv_makeSceneState', mjv_makeSceneState]
alias TestFFIBasic_mjv_freeSceneState = ExternalFunction['mjv_freeSceneState', mjv_freeSceneState]
alias TestFFIBasic_mjv_updateSceneState = ExternalFunction['mjv_updateSceneState', mjv_updateSceneState]
alias TestFFIBasic_mjv_addGeoms = ExternalFunction['mjv_addGeoms', mjv_addGeoms]
alias TestFFIBasic_mjv_makeLights = ExternalFunction['mjv_makeLights', mjv_makeLights]
alias TestFFIBasic_mjv_updateCamera = ExternalFunction['mjv_updateCamera', mjv_updateCamera]
alias TestFFIBasic_mjv_updateSkin = ExternalFunction['mjv_updateSkin', mjv_updateSkin]
alias TestFFIBasic_mjr_defaultContext = ExternalFunction['mjr_defaultContext', mjr_defaultContext]
alias TestFFIBasic_mjr_makeContext = ExternalFunction['mjr_makeContext', mjr_makeContext]
alias TestFFIBasic_mjr_changeFont = ExternalFunction['mjr_changeFont', mjr_changeFont]
alias TestFFIBasic_mjr_addAux = ExternalFunction['mjr_addAux', mjr_addAux]
alias TestFFIBasic_mjr_freeContext = ExternalFunction['mjr_freeContext', mjr_freeContext]
alias TestFFIBasic_mjr_resizeOffscreen = ExternalFunction['mjr_resizeOffscreen', mjr_resizeOffscreen]
alias TestFFIBasic_mjr_uploadTexture = ExternalFunction['mjr_uploadTexture', mjr_uploadTexture]
alias TestFFIBasic_mjr_uploadMesh = ExternalFunction['mjr_uploadMesh', mjr_uploadMesh]
alias TestFFIBasic_mjr_uploadHField = ExternalFunction['mjr_uploadHField', mjr_uploadHField]
alias TestFFIBasic_mjr_restoreBuffer = ExternalFunction['mjr_restoreBuffer', mjr_restoreBuffer]
alias TestFFIBasic_mjr_setBuffer = ExternalFunction['mjr_setBuffer', mjr_setBuffer]
alias TestFFIBasic_mjr_readPixels = ExternalFunction['mjr_readPixels', mjr_readPixels]
alias TestFFIBasic_mjr_drawPixels = ExternalFunction['mjr_drawPixels', mjr_drawPixels]
alias TestFFIBasic_mjr_blitBuffer = ExternalFunction['mjr_blitBuffer', mjr_blitBuffer]
alias TestFFIBasic_mjr_setAux = ExternalFunction['mjr_setAux', mjr_setAux]
alias TestFFIBasic_mjr_blitAux = ExternalFunction['mjr_blitAux', mjr_blitAux]
alias TestFFIBasic_mjr_text = ExternalFunction['mjr_text', mjr_text]
alias TestFFIBasic_mjr_overlay = ExternalFunction['mjr_overlay', mjr_overlay]
alias TestFFIBasic_mjr_maxViewport = ExternalFunction['mjr_maxViewport', mjr_maxViewport]
alias TestFFIBasic_mjr_rectangle = ExternalFunction['mjr_rectangle', mjr_rectangle]
alias TestFFIBasic_mjr_label = ExternalFunction['mjr_label', mjr_label]
alias TestFFIBasic_mjr_figure = ExternalFunction['mjr_figure', mjr_figure]
alias TestFFIBasic_mjr_render = ExternalFunction['mjr_render', mjr_render]
alias TestFFIBasic_mjr_finish = ExternalFunction['mjr_finish', mjr_finish]
alias TestFFIBasic_mjr_getError = ExternalFunction['mjr_getError', mjr_getError]
alias TestFFIBasic_mjr_findRect = ExternalFunction['mjr_findRect', mjr_findRect]
alias TestFFIBasic_mjui_themeSpacing = ExternalFunction['mjui_themeSpacing', mjui_themeSpacing]
alias TestFFIBasic_mjui_themeColor = ExternalFunction['mjui_themeColor', mjui_themeColor]
alias TestFFIBasic_mjui_add = ExternalFunction['mjui_add', mjui_add]
alias TestFFIBasic_mjui_addToSection = ExternalFunction['mjui_addToSection', mjui_addToSection]
alias TestFFIBasic_mjui_resize = ExternalFunction['mjui_resize', mjui_resize]
alias TestFFIBasic_mjui_update = ExternalFunction['mjui_update', mjui_update]
alias TestFFIBasic_mjui_event = ExternalFunction['mjui_event', mjui_event]
alias TestFFIBasic_mjui_render = ExternalFunction['mjui_render', mjui_render]
alias TestFFIBasic_mju_error = ExternalFunction['mju_error', mju_error]
alias TestFFIBasic_mju_error_i = ExternalFunction['mju_error_i', mju_error_i]
alias TestFFIBasic_mju_error_s = ExternalFunction['mju_error_s', mju_error_s]
alias TestFFIBasic_mju_warning = ExternalFunction['mju_warning', mju_warning]
alias TestFFIBasic_mju_warning_i = ExternalFunction['mju_warning_i', mju_warning_i]
alias TestFFIBasic_mju_warning_s = ExternalFunction['mju_warning_s', mju_warning_s]
alias TestFFIBasic_mju_clearHandlers = ExternalFunction['mju_clearHandlers', mju_clearHandlers]
alias TestFFIBasic_mju_malloc = ExternalFunction['mju_malloc', mju_malloc]
alias TestFFIBasic_mju_free = ExternalFunction['mju_free', mju_free]
alias TestFFIBasic_mj_warning = ExternalFunction['mj_warning', mj_warning]
alias TestFFIBasic_mju_writeLog = ExternalFunction['mju_writeLog', mju_writeLog]
alias TestFFIBasic_mjs_getError = ExternalFunction['mjs_getError', mjs_getError]
alias TestFFIBasic_mjs_isWarning = ExternalFunction['mjs_isWarning', mjs_isWarning]
alias TestFFIBasic_mju_zero3 = ExternalFunction['mju_zero3', mju_zero3]
alias TestFFIBasic_mju_copy3 = ExternalFunction['mju_copy3', mju_copy3]
alias TestFFIBasic_mju_scl3 = ExternalFunction['mju_scl3', mju_scl3]
alias TestFFIBasic_mju_add3 = ExternalFunction['mju_add3', mju_add3]
alias TestFFIBasic_mju_sub3 = ExternalFunction['mju_sub3', mju_sub3]
alias TestFFIBasic_mju_addTo3 = ExternalFunction['mju_addTo3', mju_addTo3]
alias TestFFIBasic_mju_subFrom3 = ExternalFunction['mju_subFrom3', mju_subFrom3]
alias TestFFIBasic_mju_addToScl3 = ExternalFunction['mju_addToScl3', mju_addToScl3]
alias TestFFIBasic_mju_addScl3 = ExternalFunction['mju_addScl3', mju_addScl3]
alias TestFFIBasic_mju_normalize3 = ExternalFunction['mju_normalize3', mju_normalize3]
alias TestFFIBasic_mju_norm3 = ExternalFunction['mju_norm3', mju_norm3]
alias TestFFIBasic_mju_dot3 = ExternalFunction['mju_dot3', mju_dot3]
alias TestFFIBasic_mju_dist3 = ExternalFunction['mju_dist3', mju_dist3]
alias TestFFIBasic_mju_mulMatVec3 = ExternalFunction['mju_mulMatVec3', mju_mulMatVec3]
alias TestFFIBasic_mju_mulMatTVec3 = ExternalFunction['mju_mulMatTVec3', mju_mulMatTVec3]
alias TestFFIBasic_mju_cross = ExternalFunction['mju_cross', mju_cross]
alias TestFFIBasic_mju_zero4 = ExternalFunction['mju_zero4', mju_zero4]
alias TestFFIBasic_mju_unit4 = ExternalFunction['mju_unit4', mju_unit4]
alias TestFFIBasic_mju_copy4 = ExternalFunction['mju_copy4', mju_copy4]
alias TestFFIBasic_mju_normalize4 = ExternalFunction['mju_normalize4', mju_normalize4]
alias TestFFIBasic_mju_zero = ExternalFunction['mju_zero', mju_zero]
alias TestFFIBasic_mju_fill = ExternalFunction['mju_fill', mju_fill]
alias TestFFIBasic_mju_copy = ExternalFunction['mju_copy', mju_copy]
alias TestFFIBasic_mju_sum = ExternalFunction['mju_sum', mju_sum]
alias TestFFIBasic_mju_L1 = ExternalFunction['mju_L1', mju_L1]
alias TestFFIBasic_mju_scl = ExternalFunction['mju_scl', mju_scl]
alias TestFFIBasic_mju_add = ExternalFunction['mju_add', mju_add]
alias TestFFIBasic_mju_sub = ExternalFunction['mju_sub', mju_sub]
alias TestFFIBasic_mju_addTo = ExternalFunction['mju_addTo', mju_addTo]
alias TestFFIBasic_mju_subFrom = ExternalFunction['mju_subFrom', mju_subFrom]
alias TestFFIBasic_mju_addToScl = ExternalFunction['mju_addToScl', mju_addToScl]
alias TestFFIBasic_mju_addScl = ExternalFunction['mju_addScl', mju_addScl]
alias TestFFIBasic_mju_normalize = ExternalFunction['mju_normalize', mju_normalize]
alias TestFFIBasic_mju_norm = ExternalFunction['mju_norm', mju_norm]
alias TestFFIBasic_mju_dot = ExternalFunction['mju_dot', mju_dot]
alias TestFFIBasic_mju_mulMatVec = ExternalFunction['mju_mulMatVec', mju_mulMatVec]
alias TestFFIBasic_mju_mulMatTVec = ExternalFunction['mju_mulMatTVec', mju_mulMatTVec]
alias TestFFIBasic_mju_mulVecMatVec = ExternalFunction['mju_mulVecMatVec', mju_mulVecMatVec]
alias TestFFIBasic_mju_transpose = ExternalFunction['mju_transpose', mju_transpose]
alias TestFFIBasic_mju_symmetrize = ExternalFunction['mju_symmetrize', mju_symmetrize]
alias TestFFIBasic_mju_eye = ExternalFunction['mju_eye', mju_eye]
alias TestFFIBasic_mju_mulMatMat = ExternalFunction['mju_mulMatMat', mju_mulMatMat]
alias TestFFIBasic_mju_mulMatMatT = ExternalFunction['mju_mulMatMatT', mju_mulMatMatT]
alias TestFFIBasic_mju_mulMatTMat = ExternalFunction['mju_mulMatTMat', mju_mulMatTMat]
alias TestFFIBasic_mju_sqrMatTD = ExternalFunction['mju_sqrMatTD', mju_sqrMatTD]
alias TestFFIBasic_mju_transformSpatial = ExternalFunction['mju_transformSpatial', mju_transformSpatial]
alias TestFFIBasic_mju_dense2sparse = ExternalFunction['mju_dense2sparse', mju_dense2sparse]
alias TestFFIBasic_mju_sparse2dense = ExternalFunction['mju_sparse2dense', mju_sparse2dense]
alias TestFFIBasic_mju_rotVecQuat = ExternalFunction['mju_rotVecQuat', mju_rotVecQuat]
alias TestFFIBasic_mju_negQuat = ExternalFunction['mju_negQuat', mju_negQuat]
alias TestFFIBasic_mju_mulQuat = ExternalFunction['mju_mulQuat', mju_mulQuat]
alias TestFFIBasic_mju_mulQuatAxis = ExternalFunction['mju_mulQuatAxis', mju_mulQuatAxis]
alias TestFFIBasic_mju_axisAngle2Quat = ExternalFunction['mju_axisAngle2Quat', mju_axisAngle2Quat]
alias TestFFIBasic_mju_quat2Vel = ExternalFunction['mju_quat2Vel', mju_quat2Vel]
alias TestFFIBasic_mju_subQuat = ExternalFunction['mju_subQuat', mju_subQuat]
alias TestFFIBasic_mju_quat2Mat = ExternalFunction['mju_quat2Mat', mju_quat2Mat]
alias TestFFIBasic_mju_mat2Quat = ExternalFunction['mju_mat2Quat', mju_mat2Quat]
alias TestFFIBasic_mju_derivQuat = ExternalFunction['mju_derivQuat', mju_derivQuat]
alias TestFFIBasic_mju_quatIntegrate = ExternalFunction['mju_quatIntegrate', mju_quatIntegrate]
alias TestFFIBasic_mju_quatZ2Vec = ExternalFunction['mju_quatZ2Vec', mju_quatZ2Vec]
alias TestFFIBasic_mju_mat2Rot = ExternalFunction['mju_mat2Rot', mju_mat2Rot]
alias TestFFIBasic_mju_euler2Quat = ExternalFunction['mju_euler2Quat', mju_euler2Quat]
alias TestFFIBasic_mju_mulPose = ExternalFunction['mju_mulPose', mju_mulPose]
alias TestFFIBasic_mju_negPose = ExternalFunction['mju_negPose', mju_negPose]
alias TestFFIBasic_mju_trnVecPose = ExternalFunction['mju_trnVecPose', mju_trnVecPose]
alias TestFFIBasic_mju_cholFactor = ExternalFunction['mju_cholFactor', mju_cholFactor]
alias TestFFIBasic_mju_cholSolve = ExternalFunction['mju_cholSolve', mju_cholSolve]
alias TestFFIBasic_mju_cholUpdate = ExternalFunction['mju_cholUpdate', mju_cholUpdate]
alias TestFFIBasic_mju_cholFactorBand = ExternalFunction['mju_cholFactorBand', mju_cholFactorBand]
alias TestFFIBasic_mju_cholSolveBand = ExternalFunction['mju_cholSolveBand', mju_cholSolveBand]
alias TestFFIBasic_mju_band2Dense = ExternalFunction['mju_band2Dense', mju_band2Dense]
alias TestFFIBasic_mju_dense2Band = ExternalFunction['mju_dense2Band', mju_dense2Band]
alias TestFFIBasic_mju_bandMulMatVec = ExternalFunction['mju_bandMulMatVec', mju_bandMulMatVec]
alias TestFFIBasic_mju_bandDiag = ExternalFunction['mju_bandDiag', mju_bandDiag]
alias TestFFIBasic_mju_eig3 = ExternalFunction['mju_eig3', mju_eig3]
alias TestFFIBasic_mju_boxQP = ExternalFunction['mju_boxQP', mju_boxQP]
alias TestFFIBasic_mju_boxQPmalloc = ExternalFunction['mju_boxQPmalloc', mju_boxQPmalloc]
alias TestFFIBasic_mju_muscleGain = ExternalFunction['mju_muscleGain', mju_muscleGain]
alias TestFFIBasic_mju_muscleBias = ExternalFunction['mju_muscleBias', mju_muscleBias]
alias TestFFIBasic_mju_muscleDynamics = ExternalFunction['mju_muscleDynamics', mju_muscleDynamics]
alias TestFFIBasic_mju_encodePyramid = ExternalFunction['mju_encodePyramid', mju_encodePyramid]
alias TestFFIBasic_mju_decodePyramid = ExternalFunction['mju_decodePyramid', mju_decodePyramid]
alias TestFFIBasic_mju_springDamper = ExternalFunction['mju_springDamper', mju_springDamper]
alias TestFFIBasic_mju_min = ExternalFunction['mju_min', mju_min]
alias TestFFIBasic_mju_max = ExternalFunction['mju_max', mju_max]
alias TestFFIBasic_mju_clip = ExternalFunction['mju_clip', mju_clip]
alias TestFFIBasic_mju_sign = ExternalFunction['mju_sign', mju_sign]
alias TestFFIBasic_mju_round = ExternalFunction['mju_round', mju_round]
alias TestFFIBasic_mju_type2Str = ExternalFunction['mju_type2Str', mju_type2Str]
alias TestFFIBasic_mju_str2Type = ExternalFunction['mju_str2Type', mju_str2Type]
alias TestFFIBasic_mju_writeNumBytes = ExternalFunction['mju_writeNumBytes', mju_writeNumBytes]
alias TestFFIBasic_mju_warningText = ExternalFunction['mju_warningText', mju_warningText]
alias TestFFIBasic_mju_isBad = ExternalFunction['mju_isBad', mju_isBad]
alias TestFFIBasic_mju_isZero = ExternalFunction['mju_isZero', mju_isZero]
alias TestFFIBasic_mju_standardNormal = ExternalFunction['mju_standardNormal', mju_standardNormal]
alias TestFFIBasic_mju_f2n = ExternalFunction['mju_f2n', mju_f2n]
alias TestFFIBasic_mju_n2f = ExternalFunction['mju_n2f', mju_n2f]
alias TestFFIBasic_mju_d2n = ExternalFunction['mju_d2n', mju_d2n]
alias TestFFIBasic_mju_n2d = ExternalFunction['mju_n2d', mju_n2d]
alias TestFFIBasic_mju_insertionSort = ExternalFunction['mju_insertionSort', mju_insertionSort]
alias TestFFIBasic_mju_insertionSortInt = ExternalFunction['mju_insertionSortInt', mju_insertionSortInt]
alias TestFFIBasic_mju_Halton = ExternalFunction['mju_Halton', mju_Halton]
alias TestFFIBasic_mju_strncpy = ExternalFunction['mju_strncpy', mju_strncpy]
alias TestFFIBasic_mju_sigmoid = ExternalFunction['mju_sigmoid', mju_sigmoid]
alias TestFFIBasic_mjd_transitionFD = ExternalFunction['mjd_transitionFD', mjd_transitionFD]
alias TestFFIBasic_mjd_inverseFD = ExternalFunction['mjd_inverseFD', mjd_inverseFD]
alias TestFFIBasic_mjd_subQuat = ExternalFunction['mjd_subQuat', mjd_subQuat]
alias TestFFIBasic_mjd_quatIntegrate = ExternalFunction['mjd_quatIntegrate', mjd_quatIntegrate]
alias TestFFIBasic_mjp_defaultPlugin = ExternalFunction['mjp_defaultPlugin', mjp_defaultPlugin]
alias TestFFIBasic_mjp_registerPlugin = ExternalFunction['mjp_registerPlugin', mjp_registerPlugin]
alias TestFFIBasic_mjp_pluginCount = ExternalFunction['mjp_pluginCount', mjp_pluginCount]
alias TestFFIBasic_mjp_getPlugin = ExternalFunction['mjp_getPlugin', mjp_getPlugin]
alias TestFFIBasic_mjp_getPluginAtSlot = ExternalFunction['mjp_getPluginAtSlot', mjp_getPluginAtSlot]
alias TestFFIBasic_mjp_defaultResourceProvider = ExternalFunction['mjp_defaultResourceProvider', mjp_defaultResourceProvider]
alias TestFFIBasic_mjp_registerResourceProvider = ExternalFunction['mjp_registerResourceProvider', mjp_registerResourceProvider]
alias TestFFIBasic_mjp_resourceProviderCount = ExternalFunction['mjp_resourceProviderCount', mjp_resourceProviderCount]
alias TestFFIBasic_mjp_getResourceProvider = ExternalFunction['mjp_getResourceProvider', mjp_getResourceProvider]
alias TestFFIBasic_mjp_getResourceProviderAtSlot = ExternalFunction['mjp_getResourceProviderAtSlot', mjp_getResourceProviderAtSlot]
alias TestFFIBasic_mju_threadPoolCreate = ExternalFunction['mju_threadPoolCreate', mju_threadPoolCreate]
alias TestFFIBasic_mju_bindThreadPool = ExternalFunction['mju_bindThreadPool', mju_bindThreadPool]
alias TestFFIBasic_mju_threadPoolEnqueue = ExternalFunction['mju_threadPoolEnqueue', mju_threadPoolEnqueue]
alias TestFFIBasic_mju_threadPoolDestroy = ExternalFunction['mju_threadPoolDestroy', mju_threadPoolDestroy]
alias TestFFIBasic_mju_defaultTask = ExternalFunction['mju_defaultTask', mju_defaultTask]
alias TestFFIBasic_mju_taskJoin = ExternalFunction['mju_taskJoin', mju_taskJoin]
alias TestFFIBasic_mjs_attach = ExternalFunction['mjs_attach', mjs_attach]
alias TestFFIBasic_mjs_detachBody = ExternalFunction['mjs_detachBody', mjs_detachBody]
alias TestFFIBasic_mjs_detachDefault = ExternalFunction['mjs_detachDefault', mjs_detachDefault]
alias TestFFIBasic_mjs_addBody = ExternalFunction['mjs_addBody', mjs_addBody]
alias TestFFIBasic_mjs_addSite = ExternalFunction['mjs_addSite', mjs_addSite]
alias TestFFIBasic_mjs_addJoint = ExternalFunction['mjs_addJoint', mjs_addJoint]
alias TestFFIBasic_mjs_addFreeJoint = ExternalFunction['mjs_addFreeJoint', mjs_addFreeJoint]
alias TestFFIBasic_mjs_addGeom = ExternalFunction['mjs_addGeom', mjs_addGeom]
alias TestFFIBasic_mjs_addCamera = ExternalFunction['mjs_addCamera', mjs_addCamera]
alias TestFFIBasic_mjs_addLight = ExternalFunction['mjs_addLight', mjs_addLight]
alias TestFFIBasic_mjs_addFrame = ExternalFunction['mjs_addFrame', mjs_addFrame]
alias TestFFIBasic_mjs_delete = ExternalFunction['mjs_delete', mjs_delete]
alias TestFFIBasic_mjs_addActuator = ExternalFunction['mjs_addActuator', mjs_addActuator]
alias TestFFIBasic_mjs_addSensor = ExternalFunction['mjs_addSensor', mjs_addSensor]
alias TestFFIBasic_mjs_addFlex = ExternalFunction['mjs_addFlex', mjs_addFlex]
alias TestFFIBasic_mjs_addPair = ExternalFunction['mjs_addPair', mjs_addPair]
alias TestFFIBasic_mjs_addExclude = ExternalFunction['mjs_addExclude', mjs_addExclude]
alias TestFFIBasic_mjs_addEquality = ExternalFunction['mjs_addEquality', mjs_addEquality]
alias TestFFIBasic_mjs_addTendon = ExternalFunction['mjs_addTendon', mjs_addTendon]
alias TestFFIBasic_mjs_wrapSite = ExternalFunction['mjs_wrapSite', mjs_wrapSite]
alias TestFFIBasic_mjs_wrapGeom = ExternalFunction['mjs_wrapGeom', mjs_wrapGeom]
alias TestFFIBasic_mjs_wrapJoint = ExternalFunction['mjs_wrapJoint', mjs_wrapJoint]
alias TestFFIBasic_mjs_wrapPulley = ExternalFunction['mjs_wrapPulley', mjs_wrapPulley]
alias TestFFIBasic_mjs_addNumeric = ExternalFunction['mjs_addNumeric', mjs_addNumeric]
alias TestFFIBasic_mjs_addText = ExternalFunction['mjs_addText', mjs_addText]
alias TestFFIBasic_mjs_addTuple = ExternalFunction['mjs_addTuple', mjs_addTuple]
alias TestFFIBasic_mjs_addKey = ExternalFunction['mjs_addKey', mjs_addKey]
alias TestFFIBasic_mjs_addPlugin = ExternalFunction['mjs_addPlugin', mjs_addPlugin]
alias TestFFIBasic_mjs_addDefault = ExternalFunction['mjs_addDefault', mjs_addDefault]
alias TestFFIBasic_mjs_addMesh = ExternalFunction['mjs_addMesh', mjs_addMesh]
alias TestFFIBasic_mjs_addHField = ExternalFunction['mjs_addHField', mjs_addHField]
alias TestFFIBasic_mjs_addSkin = ExternalFunction['mjs_addSkin', mjs_addSkin]
alias TestFFIBasic_mjs_addTexture = ExternalFunction['mjs_addTexture', mjs_addTexture]
alias TestFFIBasic_mjs_addMaterial = ExternalFunction['mjs_addMaterial', mjs_addMaterial]
alias TestFFIBasic_mjs_getSpec = ExternalFunction['mjs_getSpec', mjs_getSpec]
alias TestFFIBasic_mjs_findSpec = ExternalFunction['mjs_findSpec', mjs_findSpec]
alias TestFFIBasic_mjs_findBody = ExternalFunction['mjs_findBody', mjs_findBody]
alias TestFFIBasic_mjs_findElement = ExternalFunction['mjs_findElement', mjs_findElement]
alias TestFFIBasic_mjs_findChild = ExternalFunction['mjs_findChild', mjs_findChild]
alias TestFFIBasic_mjs_getParent = ExternalFunction['mjs_getParent', mjs_getParent]
alias TestFFIBasic_mjs_getFrame = ExternalFunction['mjs_getFrame', mjs_getFrame]
alias TestFFIBasic_mjs_findFrame = ExternalFunction['mjs_findFrame', mjs_findFrame]
alias TestFFIBasic_mjs_getDefault = ExternalFunction['mjs_getDefault', mjs_getDefault]
alias TestFFIBasic_mjs_findDefault = ExternalFunction['mjs_findDefault', mjs_findDefault]
alias TestFFIBasic_mjs_getSpecDefault = ExternalFunction['mjs_getSpecDefault', mjs_getSpecDefault]
alias TestFFIBasic_mjs_getId = ExternalFunction['mjs_getId', mjs_getId]
alias TestFFIBasic_mjs_firstChild = ExternalFunction['mjs_firstChild', mjs_firstChild]
alias TestFFIBasic_mjs_nextChild = ExternalFunction['mjs_nextChild', mjs_nextChild]
alias TestFFIBasic_mjs_firstElement = ExternalFunction['mjs_firstElement', mjs_firstElement]
alias TestFFIBasic_mjs_nextElement = ExternalFunction['mjs_nextElement', mjs_nextElement]
alias TestFFIBasic_mjs_setBuffer = ExternalFunction['mjs_setBuffer', mjs_setBuffer]
alias TestFFIBasic_mjs_setString = ExternalFunction['mjs_setString', mjs_setString]
alias TestFFIBasic_mjs_setStringVec = ExternalFunction['mjs_setStringVec', mjs_setStringVec]
alias TestFFIBasic_mjs_setInStringVec = ExternalFunction['mjs_setInStringVec', mjs_setInStringVec]
alias TestFFIBasic_mjs_appendString = ExternalFunction['mjs_appendString', mjs_appendString]
alias TestFFIBasic_mjs_setInt = ExternalFunction['mjs_setInt', mjs_setInt]
alias TestFFIBasic_mjs_appendIntVec = ExternalFunction['mjs_appendIntVec', mjs_appendIntVec]
alias TestFFIBasic_mjs_setFloat = ExternalFunction['mjs_setFloat', mjs_setFloat]
alias TestFFIBasic_mjs_appendFloatVec = ExternalFunction['mjs_appendFloatVec', mjs_appendFloatVec]
alias TestFFIBasic_mjs_setDouble = ExternalFunction['mjs_setDouble', mjs_setDouble]
alias TestFFIBasic_mjs_setPluginAttributes = ExternalFunction['mjs_setPluginAttributes', mjs_setPluginAttributes]
alias TestFFIBasic_mjs_getString = ExternalFunction['mjs_getString', mjs_getString]
alias TestFFIBasic_mjs_getDouble = ExternalFunction['mjs_getDouble', mjs_getDouble]
alias TestFFIBasic_mjs_setDefault = ExternalFunction['mjs_setDefault', mjs_setDefault]
alias TestFFIBasic_mjs_setFrame = ExternalFunction['mjs_setFrame', mjs_setFrame]
alias TestFFIBasic_mjs_resolveOrientation = ExternalFunction['mjs_resolveOrientation', mjs_resolveOrientation]
alias TestFFIBasic_mjs_bodyToFrame = ExternalFunction['mjs_bodyToFrame', mjs_bodyToFrame]
alias TestFFIBasic_mjs_setUserValue = ExternalFunction['mjs_setUserValue', mjs_setUserValue]
alias TestFFIBasic_mjs_getUserValue = ExternalFunction['mjs_getUserValue', mjs_getUserValue]
alias TestFFIBasic_mjs_deleteUserValue = ExternalFunction['mjs_deleteUserValue', mjs_deleteUserValue]
alias TestFFIBasic_mjs_defaultSpec = ExternalFunction['mjs_defaultSpec', mjs_defaultSpec]
alias TestFFIBasic_mjs_defaultOrientation = ExternalFunction['mjs_defaultOrientation', mjs_defaultOrientation]
alias TestFFIBasic_mjs_defaultBody = ExternalFunction['mjs_defaultBody', mjs_defaultBody]
alias TestFFIBasic_mjs_defaultFrame = ExternalFunction['mjs_defaultFrame', mjs_defaultFrame]
alias TestFFIBasic_mjs_defaultJoint = ExternalFunction['mjs_defaultJoint', mjs_defaultJoint]
alias TestFFIBasic_mjs_defaultGeom = ExternalFunction['mjs_defaultGeom', mjs_defaultGeom]
alias TestFFIBasic_mjs_defaultSite = ExternalFunction['mjs_defaultSite', mjs_defaultSite]
alias TestFFIBasic_mjs_defaultCamera = ExternalFunction['mjs_defaultCamera', mjs_defaultCamera]
alias TestFFIBasic_mjs_defaultLight = ExternalFunction['mjs_defaultLight', mjs_defaultLight]
alias TestFFIBasic_mjs_defaultFlex = ExternalFunction['mjs_defaultFlex', mjs_defaultFlex]
alias TestFFIBasic_mjs_defaultMesh = ExternalFunction['mjs_defaultMesh', mjs_defaultMesh]
alias TestFFIBasic_mjs_defaultHField = ExternalFunction['mjs_defaultHField', mjs_defaultHField]
alias TestFFIBasic_mjs_defaultSkin = ExternalFunction['mjs_defaultSkin', mjs_defaultSkin]
alias TestFFIBasic_mjs_defaultTexture = ExternalFunction['mjs_defaultTexture', mjs_defaultTexture]
alias TestFFIBasic_mjs_defaultMaterial = ExternalFunction['mjs_defaultMaterial', mjs_defaultMaterial]
alias TestFFIBasic_mjs_defaultPair = ExternalFunction['mjs_defaultPair', mjs_defaultPair]
alias TestFFIBasic_mjs_defaultEquality = ExternalFunction['mjs_defaultEquality', mjs_defaultEquality]
alias TestFFIBasic_mjs_defaultTendon = ExternalFunction['mjs_defaultTendon', mjs_defaultTendon]
alias TestFFIBasic_mjs_defaultActuator = ExternalFunction['mjs_defaultActuator', mjs_defaultActuator]
alias TestFFIBasic_mjs_defaultSensor = ExternalFunction['mjs_defaultSensor', mjs_defaultSensor]
alias TestFFIBasic_mjs_defaultNumeric = ExternalFunction['mjs_defaultNumeric', mjs_defaultNumeric]
alias TestFFIBasic_mjs_defaultText = ExternalFunction['mjs_defaultText', mjs_defaultText]
alias TestFFIBasic_mjs_defaultTuple = ExternalFunction['mjs_defaultTuple', mjs_defaultTuple]
alias TestFFIBasic_mjs_defaultKey = ExternalFunction['mjs_defaultKey', mjs_defaultKey]
alias TestFFIBasic_mjs_defaultPlugin = ExternalFunction['mjs_defaultPlugin', mjs_defaultPlugin]
alias TestFFIBasic_mjs_asBody = ExternalFunction['mjs_asBody', mjs_asBody]
alias TestFFIBasic_mjs_asGeom = ExternalFunction['mjs_asGeom', mjs_asGeom]
alias TestFFIBasic_mjs_asJoint = ExternalFunction['mjs_asJoint', mjs_asJoint]
alias TestFFIBasic_mjs_asSite = ExternalFunction['mjs_asSite', mjs_asSite]
alias TestFFIBasic_mjs_asCamera = ExternalFunction['mjs_asCamera', mjs_asCamera]
alias TestFFIBasic_mjs_asLight = ExternalFunction['mjs_asLight', mjs_asLight]
alias TestFFIBasic_mjs_asFrame = ExternalFunction['mjs_asFrame', mjs_asFrame]
alias TestFFIBasic_mjs_asActuator = ExternalFunction['mjs_asActuator', mjs_asActuator]
alias TestFFIBasic_mjs_asSensor = ExternalFunction['mjs_asSensor', mjs_asSensor]
alias TestFFIBasic_mjs_asFlex = ExternalFunction['mjs_asFlex', mjs_asFlex]
alias TestFFIBasic_mjs_asPair = ExternalFunction['mjs_asPair', mjs_asPair]
alias TestFFIBasic_mjs_asEquality = ExternalFunction['mjs_asEquality', mjs_asEquality]
alias TestFFIBasic_mjs_asExclude = ExternalFunction['mjs_asExclude', mjs_asExclude]
alias TestFFIBasic_mjs_asTendon = ExternalFunction['mjs_asTendon', mjs_asTendon]
alias TestFFIBasic_mjs_asNumeric = ExternalFunction['mjs_asNumeric', mjs_asNumeric]
alias TestFFIBasic_mjs_asText = ExternalFunction['mjs_asText', mjs_asText]
alias TestFFIBasic_mjs_asTuple = ExternalFunction['mjs_asTuple', mjs_asTuple]
alias TestFFIBasic_mjs_asKey = ExternalFunction['mjs_asKey', mjs_asKey]
alias TestFFIBasic_mjs_asMesh = ExternalFunction['mjs_asMesh', mjs_asMesh]
alias TestFFIBasic_mjs_asHField = ExternalFunction['mjs_asHField', mjs_asHField]
alias TestFFIBasic_mjs_asSkin = ExternalFunction['mjs_asSkin', mjs_asSkin]
alias TestFFIBasic_mjs_asTexture = ExternalFunction['mjs_asTexture', mjs_asTexture]
alias TestFFIBasic_mjs_asMaterial = ExternalFunction['mjs_asMaterial', mjs_asMaterial]
alias TestFFIBasic_mjs_asPlugin = ExternalFunction['mjs_asPlugin', mjs_asPlugin]

@fieldwise_init
struct TestFFIBasic(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var __ctype_get_mb_cur_max: TestFFIBasic___ctype_get_mb_cur_max.type
    var atof: TestFFIBasic_atof.type
    var atoi: TestFFIBasic_atoi.type
    var atol: TestFFIBasic_atol.type
    var atoll: TestFFIBasic_atoll.type
    var strtod: TestFFIBasic_strtod.type
    var strtod: TestFFIBasic_strtod.type
    var strtof: TestFFIBasic_strtof.type
    var strtof: TestFFIBasic_strtof.type
    var strtold: TestFFIBasic_strtold.type
    var strtold: TestFFIBasic_strtold.type
    var strtol: TestFFIBasic_strtol.type
    var strtol: TestFFIBasic_strtol.type
    var strtoul: TestFFIBasic_strtoul.type
    var strtoul: TestFFIBasic_strtoul.type
    var strtoq: TestFFIBasic_strtoq.type
    var strtouq: TestFFIBasic_strtouq.type
    var strtoll: TestFFIBasic_strtoll.type
    var strtoll: TestFFIBasic_strtoll.type
    var strtoull: TestFFIBasic_strtoull.type
    var strtoull: TestFFIBasic_strtoull.type
    var l64a: TestFFIBasic_l64a.type
    var a64l: TestFFIBasic_a64l.type
    var __bswap_16: TestFFIBasic___bswap_16.type
    var __bswap_32: TestFFIBasic___bswap_32.type
    var __bswap_64: TestFFIBasic___bswap_64.type
    var __uint16_identity: TestFFIBasic___uint16_identity.type
    var __uint32_identity: TestFFIBasic___uint32_identity.type
    var __uint64_identity: TestFFIBasic___uint64_identity.type
    var select: TestFFIBasic_select.type
    var pselect: TestFFIBasic_pselect.type
    var random: TestFFIBasic_random.type
    var srandom: TestFFIBasic_srandom.type
    var initstate: TestFFIBasic_initstate.type
    var setstate: TestFFIBasic_setstate.type
    var random_r: TestFFIBasic_random_r.type
    var srandom_r: TestFFIBasic_srandom_r.type
    var initstate_r: TestFFIBasic_initstate_r.type
    var setstate_r: TestFFIBasic_setstate_r.type
    var rand: TestFFIBasic_rand.type
    var srand: TestFFIBasic_srand.type
    var rand_r: TestFFIBasic_rand_r.type
    var drand48: TestFFIBasic_drand48.type
    var erand48: TestFFIBasic_erand48.type
    var lrand48: TestFFIBasic_lrand48.type
    var nrand48: TestFFIBasic_nrand48.type
    var mrand48: TestFFIBasic_mrand48.type
    var jrand48: TestFFIBasic_jrand48.type
    var srand48: TestFFIBasic_srand48.type
    var seed48: TestFFIBasic_seed48.type
    var lcong48: TestFFIBasic_lcong48.type
    var drand48_r: TestFFIBasic_drand48_r.type
    var erand48_r: TestFFIBasic_erand48_r.type
    var lrand48_r: TestFFIBasic_lrand48_r.type
    var nrand48_r: TestFFIBasic_nrand48_r.type
    var mrand48_r: TestFFIBasic_mrand48_r.type
    var jrand48_r: TestFFIBasic_jrand48_r.type
    var srand48_r: TestFFIBasic_srand48_r.type
    var seed48_r: TestFFIBasic_seed48_r.type
    var lcong48_r: TestFFIBasic_lcong48_r.type
    var malloc: TestFFIBasic_malloc.type
    var malloc: TestFFIBasic_malloc.type
    var calloc: TestFFIBasic_calloc.type
    var calloc: TestFFIBasic_calloc.type
    var realloc: TestFFIBasic_realloc.type
    var realloc: TestFFIBasic_realloc.type
    var free: TestFFIBasic_free.type
    var free: TestFFIBasic_free.type
    var reallocarray: TestFFIBasic_reallocarray.type
    var reallocarray: TestFFIBasic_reallocarray.type
    var alloca: TestFFIBasic_alloca.type
    var alloca: TestFFIBasic_alloca.type
    var valloc: TestFFIBasic_valloc.type
    var posix_memalign: TestFFIBasic_posix_memalign.type
    var aligned_alloc: TestFFIBasic_aligned_alloc.type
    var aligned_alloc: TestFFIBasic_aligned_alloc.type
    var abort: TestFFIBasic_abort.type
    var abort: TestFFIBasic_abort.type
    var atexit: TestFFIBasic_atexit.type
    var at_quick_exit: TestFFIBasic_at_quick_exit.type
    var on_exit: TestFFIBasic_on_exit.type
    var exit: TestFFIBasic_exit.type
    var exit: TestFFIBasic_exit.type
    var quick_exit: TestFFIBasic_quick_exit.type
    var _Exit: TestFFIBasic__Exit.type
    var _Exit: TestFFIBasic__Exit.type
    var getenv: TestFFIBasic_getenv.type
    var putenv: TestFFIBasic_putenv.type
    var setenv: TestFFIBasic_setenv.type
    var unsetenv: TestFFIBasic_unsetenv.type
    var clearenv: TestFFIBasic_clearenv.type
    var mktemp: TestFFIBasic_mktemp.type
    var mkstemp: TestFFIBasic_mkstemp.type
    var mkstemps: TestFFIBasic_mkstemps.type
    var mkdtemp: TestFFIBasic_mkdtemp.type
    var system: TestFFIBasic_system.type
    var realpath: TestFFIBasic_realpath.type
    var bsearch: TestFFIBasic_bsearch.type
    var qsort: TestFFIBasic_qsort.type
    var abs: TestFFIBasic_abs.type
    var abs: TestFFIBasic_abs.type
    var labs: TestFFIBasic_labs.type
    var labs: TestFFIBasic_labs.type
    var llabs: TestFFIBasic_llabs.type
    var llabs: TestFFIBasic_llabs.type
    var div: TestFFIBasic_div.type
    var ldiv: TestFFIBasic_ldiv.type
    var lldiv: TestFFIBasic_lldiv.type
    var ecvt: TestFFIBasic_ecvt.type
    var fcvt: TestFFIBasic_fcvt.type
    var gcvt: TestFFIBasic_gcvt.type
    var qecvt: TestFFIBasic_qecvt.type
    var qfcvt: TestFFIBasic_qfcvt.type
    var qgcvt: TestFFIBasic_qgcvt.type
    var ecvt_r: TestFFIBasic_ecvt_r.type
    var fcvt_r: TestFFIBasic_fcvt_r.type
    var qecvt_r: TestFFIBasic_qecvt_r.type
    var qfcvt_r: TestFFIBasic_qfcvt_r.type
    var mblen: TestFFIBasic_mblen.type
    var mbtowc: TestFFIBasic_mbtowc.type
    var wctomb: TestFFIBasic_wctomb.type
    var mbstowcs: TestFFIBasic_mbstowcs.type
    var wcstombs: TestFFIBasic_wcstombs.type
    var rpmatch: TestFFIBasic_rpmatch.type
    var getsubopt: TestFFIBasic_getsubopt.type
    var getloadavg: TestFFIBasic_getloadavg.type
    var __fpclassify: TestFFIBasic___fpclassify.type
    var __signbit: TestFFIBasic___signbit.type
    var __isinf: TestFFIBasic___isinf.type
    var __finite: TestFFIBasic___finite.type
    var __finite: TestFFIBasic___finite.type
    var __isnan: TestFFIBasic___isnan.type
    var __iseqsig: TestFFIBasic___iseqsig.type
    var __issignaling: TestFFIBasic___issignaling.type
    var acos: TestFFIBasic_acos.type
    var acos: TestFFIBasic_acos.type
    var __acos: TestFFIBasic___acos.type
    var asin: TestFFIBasic_asin.type
    var asin: TestFFIBasic_asin.type
    var __asin: TestFFIBasic___asin.type
    var atan: TestFFIBasic_atan.type
    var atan: TestFFIBasic_atan.type
    var __atan: TestFFIBasic___atan.type
    var atan2: TestFFIBasic_atan2.type
    var atan2: TestFFIBasic_atan2.type
    var __atan2: TestFFIBasic___atan2.type
    var cos: TestFFIBasic_cos.type
    var cos: TestFFIBasic_cos.type
    var __cos: TestFFIBasic___cos.type
    var sin: TestFFIBasic_sin.type
    var sin: TestFFIBasic_sin.type
    var __sin: TestFFIBasic___sin.type
    var tan: TestFFIBasic_tan.type
    var tan: TestFFIBasic_tan.type
    var __tan: TestFFIBasic___tan.type
    var cosh: TestFFIBasic_cosh.type
    var cosh: TestFFIBasic_cosh.type
    var __cosh: TestFFIBasic___cosh.type
    var sinh: TestFFIBasic_sinh.type
    var sinh: TestFFIBasic_sinh.type
    var __sinh: TestFFIBasic___sinh.type
    var tanh: TestFFIBasic_tanh.type
    var tanh: TestFFIBasic_tanh.type
    var __tanh: TestFFIBasic___tanh.type
    var acosh: TestFFIBasic_acosh.type
    var acosh: TestFFIBasic_acosh.type
    var __acosh: TestFFIBasic___acosh.type
    var asinh: TestFFIBasic_asinh.type
    var asinh: TestFFIBasic_asinh.type
    var __asinh: TestFFIBasic___asinh.type
    var atanh: TestFFIBasic_atanh.type
    var atanh: TestFFIBasic_atanh.type
    var __atanh: TestFFIBasic___atanh.type
    var exp: TestFFIBasic_exp.type
    var exp: TestFFIBasic_exp.type
    var __exp: TestFFIBasic___exp.type
    var frexp: TestFFIBasic_frexp.type
    var frexp: TestFFIBasic_frexp.type
    var __frexp: TestFFIBasic___frexp.type
    var ldexp: TestFFIBasic_ldexp.type
    var ldexp: TestFFIBasic_ldexp.type
    var __ldexp: TestFFIBasic___ldexp.type
    var log: TestFFIBasic_log.type
    var log: TestFFIBasic_log.type
    var __log: TestFFIBasic___log.type
    var log10: TestFFIBasic_log10.type
    var log10: TestFFIBasic_log10.type
    var __log10: TestFFIBasic___log10.type
    var modf: TestFFIBasic_modf.type
    var modf: TestFFIBasic_modf.type
    var __modf: TestFFIBasic___modf.type
    var expm1: TestFFIBasic_expm1.type
    var expm1: TestFFIBasic_expm1.type
    var __expm1: TestFFIBasic___expm1.type
    var log1p: TestFFIBasic_log1p.type
    var log1p: TestFFIBasic_log1p.type
    var __log1p: TestFFIBasic___log1p.type
    var logb: TestFFIBasic_logb.type
    var logb: TestFFIBasic_logb.type
    var __logb: TestFFIBasic___logb.type
    var exp2: TestFFIBasic_exp2.type
    var exp2: TestFFIBasic_exp2.type
    var __exp2: TestFFIBasic___exp2.type
    var log2: TestFFIBasic_log2.type
    var log2: TestFFIBasic_log2.type
    var __log2: TestFFIBasic___log2.type
    var pow: TestFFIBasic_pow.type
    var pow: TestFFIBasic_pow.type
    var __pow: TestFFIBasic___pow.type
    var sqrt: TestFFIBasic_sqrt.type
    var sqrt: TestFFIBasic_sqrt.type
    var __sqrt: TestFFIBasic___sqrt.type
    var hypot: TestFFIBasic_hypot.type
    var hypot: TestFFIBasic_hypot.type
    var __hypot: TestFFIBasic___hypot.type
    var cbrt: TestFFIBasic_cbrt.type
    var cbrt: TestFFIBasic_cbrt.type
    var __cbrt: TestFFIBasic___cbrt.type
    var ceil: TestFFIBasic_ceil.type
    var ceil: TestFFIBasic_ceil.type
    var __ceil: TestFFIBasic___ceil.type
    var fabs: TestFFIBasic_fabs.type
    var fabs: TestFFIBasic_fabs.type
    var __fabs: TestFFIBasic___fabs.type
    var floor: TestFFIBasic_floor.type
    var floor: TestFFIBasic_floor.type
    var __floor: TestFFIBasic___floor.type
    var fmod: TestFFIBasic_fmod.type
    var fmod: TestFFIBasic_fmod.type
    var __fmod: TestFFIBasic___fmod.type
    var isinf: TestFFIBasic_isinf.type
    var finite: TestFFIBasic_finite.type
    var finite: TestFFIBasic_finite.type
    var drem: TestFFIBasic_drem.type
    var __drem: TestFFIBasic___drem.type
    var significand: TestFFIBasic_significand.type
    var __significand: TestFFIBasic___significand.type
    var copysign: TestFFIBasic_copysign.type
    var copysign: TestFFIBasic_copysign.type
    var __copysign: TestFFIBasic___copysign.type
    var nan: TestFFIBasic_nan.type
    var nan: TestFFIBasic_nan.type
    var __nan: TestFFIBasic___nan.type
    var isnan: TestFFIBasic_isnan.type
    var j0: TestFFIBasic_j0.type
    var __j0: TestFFIBasic___j0.type
    var j1: TestFFIBasic_j1.type
    var __j1: TestFFIBasic___j1.type
    var jn: TestFFIBasic_jn.type
    var __jn: TestFFIBasic___jn.type
    var y0: TestFFIBasic_y0.type
    var __y0: TestFFIBasic___y0.type
    var y1: TestFFIBasic_y1.type
    var __y1: TestFFIBasic___y1.type
    var yn: TestFFIBasic_yn.type
    var __yn: TestFFIBasic___yn.type
    var erf: TestFFIBasic_erf.type
    var erf: TestFFIBasic_erf.type
    var __erf: TestFFIBasic___erf.type
    var erfc: TestFFIBasic_erfc.type
    var erfc: TestFFIBasic_erfc.type
    var __erfc: TestFFIBasic___erfc.type
    var lgamma: TestFFIBasic_lgamma.type
    var lgamma: TestFFIBasic_lgamma.type
    var __lgamma: TestFFIBasic___lgamma.type
    var tgamma: TestFFIBasic_tgamma.type
    var tgamma: TestFFIBasic_tgamma.type
    var __tgamma: TestFFIBasic___tgamma.type
    var gamma: TestFFIBasic_gamma.type
    var __gamma: TestFFIBasic___gamma.type
    var lgamma_r: TestFFIBasic_lgamma_r.type
    var __lgamma_r: TestFFIBasic___lgamma_r.type
    var rint: TestFFIBasic_rint.type
    var rint: TestFFIBasic_rint.type
    var __rint: TestFFIBasic___rint.type
    var nextafter: TestFFIBasic_nextafter.type
    var nextafter: TestFFIBasic_nextafter.type
    var __nextafter: TestFFIBasic___nextafter.type
    var nexttoward: TestFFIBasic_nexttoward.type
    var nexttoward: TestFFIBasic_nexttoward.type
    var __nexttoward: TestFFIBasic___nexttoward.type
    var remainder: TestFFIBasic_remainder.type
    var remainder: TestFFIBasic_remainder.type
    var __remainder: TestFFIBasic___remainder.type
    var scalbn: TestFFIBasic_scalbn.type
    var scalbn: TestFFIBasic_scalbn.type
    var __scalbn: TestFFIBasic___scalbn.type
    var ilogb: TestFFIBasic_ilogb.type
    var ilogb: TestFFIBasic_ilogb.type
    var __ilogb: TestFFIBasic___ilogb.type
    var scalbln: TestFFIBasic_scalbln.type
    var scalbln: TestFFIBasic_scalbln.type
    var __scalbln: TestFFIBasic___scalbln.type
    var nearbyint: TestFFIBasic_nearbyint.type
    var nearbyint: TestFFIBasic_nearbyint.type
    var __nearbyint: TestFFIBasic___nearbyint.type
    var round: TestFFIBasic_round.type
    var round: TestFFIBasic_round.type
    var __round: TestFFIBasic___round.type
    var trunc: TestFFIBasic_trunc.type
    var trunc: TestFFIBasic_trunc.type
    var __trunc: TestFFIBasic___trunc.type
    var remquo: TestFFIBasic_remquo.type
    var remquo: TestFFIBasic_remquo.type
    var __remquo: TestFFIBasic___remquo.type
    var lrint: TestFFIBasic_lrint.type
    var lrint: TestFFIBasic_lrint.type
    var __lrint: TestFFIBasic___lrint.type
    var llrint: TestFFIBasic_llrint.type
    var llrint: TestFFIBasic_llrint.type
    var __llrint: TestFFIBasic___llrint.type
    var lround: TestFFIBasic_lround.type
    var lround: TestFFIBasic_lround.type
    var __lround: TestFFIBasic___lround.type
    var llround: TestFFIBasic_llround.type
    var llround: TestFFIBasic_llround.type
    var __llround: TestFFIBasic___llround.type
    var fdim: TestFFIBasic_fdim.type
    var fdim: TestFFIBasic_fdim.type
    var __fdim: TestFFIBasic___fdim.type
    var fmax: TestFFIBasic_fmax.type
    var fmax: TestFFIBasic_fmax.type
    var __fmax: TestFFIBasic___fmax.type
    var fmin: TestFFIBasic_fmin.type
    var fmin: TestFFIBasic_fmin.type
    var __fmin: TestFFIBasic___fmin.type
    var fma: TestFFIBasic_fma.type
    var fma: TestFFIBasic_fma.type
    var __fma: TestFFIBasic___fma.type
    var scalb: TestFFIBasic_scalb.type
    var __scalb: TestFFIBasic___scalb.type
    var __fpclassifyf: TestFFIBasic___fpclassifyf.type
    var __signbitf: TestFFIBasic___signbitf.type
    var __isinff: TestFFIBasic___isinff.type
    var __finitef: TestFFIBasic___finitef.type
    var __finitef: TestFFIBasic___finitef.type
    var __isnanf: TestFFIBasic___isnanf.type
    var __iseqsigf: TestFFIBasic___iseqsigf.type
    var __issignalingf: TestFFIBasic___issignalingf.type
    var acosf: TestFFIBasic_acosf.type
    var acosf: TestFFIBasic_acosf.type
    var __acosf: TestFFIBasic___acosf.type
    var asinf: TestFFIBasic_asinf.type
    var asinf: TestFFIBasic_asinf.type
    var __asinf: TestFFIBasic___asinf.type
    var atanf: TestFFIBasic_atanf.type
    var atanf: TestFFIBasic_atanf.type
    var __atanf: TestFFIBasic___atanf.type
    var atan2f: TestFFIBasic_atan2f.type
    var atan2f: TestFFIBasic_atan2f.type
    var __atan2f: TestFFIBasic___atan2f.type
    var cosf: TestFFIBasic_cosf.type
    var cosf: TestFFIBasic_cosf.type
    var __cosf: TestFFIBasic___cosf.type
    var sinf: TestFFIBasic_sinf.type
    var sinf: TestFFIBasic_sinf.type
    var __sinf: TestFFIBasic___sinf.type
    var tanf: TestFFIBasic_tanf.type
    var tanf: TestFFIBasic_tanf.type
    var __tanf: TestFFIBasic___tanf.type
    var coshf: TestFFIBasic_coshf.type
    var coshf: TestFFIBasic_coshf.type
    var __coshf: TestFFIBasic___coshf.type
    var sinhf: TestFFIBasic_sinhf.type
    var sinhf: TestFFIBasic_sinhf.type
    var __sinhf: TestFFIBasic___sinhf.type
    var tanhf: TestFFIBasic_tanhf.type
    var tanhf: TestFFIBasic_tanhf.type
    var __tanhf: TestFFIBasic___tanhf.type
    var acoshf: TestFFIBasic_acoshf.type
    var acoshf: TestFFIBasic_acoshf.type
    var __acoshf: TestFFIBasic___acoshf.type
    var asinhf: TestFFIBasic_asinhf.type
    var asinhf: TestFFIBasic_asinhf.type
    var __asinhf: TestFFIBasic___asinhf.type
    var atanhf: TestFFIBasic_atanhf.type
    var atanhf: TestFFIBasic_atanhf.type
    var __atanhf: TestFFIBasic___atanhf.type
    var expf: TestFFIBasic_expf.type
    var expf: TestFFIBasic_expf.type
    var __expf: TestFFIBasic___expf.type
    var frexpf: TestFFIBasic_frexpf.type
    var frexpf: TestFFIBasic_frexpf.type
    var __frexpf: TestFFIBasic___frexpf.type
    var ldexpf: TestFFIBasic_ldexpf.type
    var ldexpf: TestFFIBasic_ldexpf.type
    var __ldexpf: TestFFIBasic___ldexpf.type
    var logf: TestFFIBasic_logf.type
    var logf: TestFFIBasic_logf.type
    var __logf: TestFFIBasic___logf.type
    var log10f: TestFFIBasic_log10f.type
    var log10f: TestFFIBasic_log10f.type
    var __log10f: TestFFIBasic___log10f.type
    var modff: TestFFIBasic_modff.type
    var modff: TestFFIBasic_modff.type
    var __modff: TestFFIBasic___modff.type
    var expm1f: TestFFIBasic_expm1f.type
    var expm1f: TestFFIBasic_expm1f.type
    var __expm1f: TestFFIBasic___expm1f.type
    var log1pf: TestFFIBasic_log1pf.type
    var log1pf: TestFFIBasic_log1pf.type
    var __log1pf: TestFFIBasic___log1pf.type
    var logbf: TestFFIBasic_logbf.type
    var logbf: TestFFIBasic_logbf.type
    var __logbf: TestFFIBasic___logbf.type
    var exp2f: TestFFIBasic_exp2f.type
    var exp2f: TestFFIBasic_exp2f.type
    var __exp2f: TestFFIBasic___exp2f.type
    var log2f: TestFFIBasic_log2f.type
    var log2f: TestFFIBasic_log2f.type
    var __log2f: TestFFIBasic___log2f.type
    var powf: TestFFIBasic_powf.type
    var powf: TestFFIBasic_powf.type
    var __powf: TestFFIBasic___powf.type
    var sqrtf: TestFFIBasic_sqrtf.type
    var sqrtf: TestFFIBasic_sqrtf.type
    var __sqrtf: TestFFIBasic___sqrtf.type
    var hypotf: TestFFIBasic_hypotf.type
    var hypotf: TestFFIBasic_hypotf.type
    var __hypotf: TestFFIBasic___hypotf.type
    var cbrtf: TestFFIBasic_cbrtf.type
    var cbrtf: TestFFIBasic_cbrtf.type
    var __cbrtf: TestFFIBasic___cbrtf.type
    var ceilf: TestFFIBasic_ceilf.type
    var ceilf: TestFFIBasic_ceilf.type
    var __ceilf: TestFFIBasic___ceilf.type
    var fabsf: TestFFIBasic_fabsf.type
    var fabsf: TestFFIBasic_fabsf.type
    var __fabsf: TestFFIBasic___fabsf.type
    var floorf: TestFFIBasic_floorf.type
    var floorf: TestFFIBasic_floorf.type
    var __floorf: TestFFIBasic___floorf.type
    var fmodf: TestFFIBasic_fmodf.type
    var fmodf: TestFFIBasic_fmodf.type
    var __fmodf: TestFFIBasic___fmodf.type
    var isinff: TestFFIBasic_isinff.type
    var finitef: TestFFIBasic_finitef.type
    var finitef: TestFFIBasic_finitef.type
    var dremf: TestFFIBasic_dremf.type
    var __dremf: TestFFIBasic___dremf.type
    var significandf: TestFFIBasic_significandf.type
    var __significandf: TestFFIBasic___significandf.type
    var copysignf: TestFFIBasic_copysignf.type
    var copysignf: TestFFIBasic_copysignf.type
    var __copysignf: TestFFIBasic___copysignf.type
    var nanf: TestFFIBasic_nanf.type
    var nanf: TestFFIBasic_nanf.type
    var __nanf: TestFFIBasic___nanf.type
    var isnanf: TestFFIBasic_isnanf.type
    var j0f: TestFFIBasic_j0f.type
    var __j0f: TestFFIBasic___j0f.type
    var j1f: TestFFIBasic_j1f.type
    var __j1f: TestFFIBasic___j1f.type
    var jnf: TestFFIBasic_jnf.type
    var __jnf: TestFFIBasic___jnf.type
    var y0f: TestFFIBasic_y0f.type
    var __y0f: TestFFIBasic___y0f.type
    var y1f: TestFFIBasic_y1f.type
    var __y1f: TestFFIBasic___y1f.type
    var ynf: TestFFIBasic_ynf.type
    var __ynf: TestFFIBasic___ynf.type
    var erff: TestFFIBasic_erff.type
    var erff: TestFFIBasic_erff.type
    var __erff: TestFFIBasic___erff.type
    var erfcf: TestFFIBasic_erfcf.type
    var erfcf: TestFFIBasic_erfcf.type
    var __erfcf: TestFFIBasic___erfcf.type
    var lgammaf: TestFFIBasic_lgammaf.type
    var lgammaf: TestFFIBasic_lgammaf.type
    var __lgammaf: TestFFIBasic___lgammaf.type
    var tgammaf: TestFFIBasic_tgammaf.type
    var tgammaf: TestFFIBasic_tgammaf.type
    var __tgammaf: TestFFIBasic___tgammaf.type
    var gammaf: TestFFIBasic_gammaf.type
    var __gammaf: TestFFIBasic___gammaf.type
    var lgammaf_r: TestFFIBasic_lgammaf_r.type
    var __lgammaf_r: TestFFIBasic___lgammaf_r.type
    var rintf: TestFFIBasic_rintf.type
    var rintf: TestFFIBasic_rintf.type
    var __rintf: TestFFIBasic___rintf.type
    var nextafterf: TestFFIBasic_nextafterf.type
    var nextafterf: TestFFIBasic_nextafterf.type
    var __nextafterf: TestFFIBasic___nextafterf.type
    var nexttowardf: TestFFIBasic_nexttowardf.type
    var nexttowardf: TestFFIBasic_nexttowardf.type
    var __nexttowardf: TestFFIBasic___nexttowardf.type
    var remainderf: TestFFIBasic_remainderf.type
    var remainderf: TestFFIBasic_remainderf.type
    var __remainderf: TestFFIBasic___remainderf.type
    var scalbnf: TestFFIBasic_scalbnf.type
    var scalbnf: TestFFIBasic_scalbnf.type
    var __scalbnf: TestFFIBasic___scalbnf.type
    var ilogbf: TestFFIBasic_ilogbf.type
    var ilogbf: TestFFIBasic_ilogbf.type
    var __ilogbf: TestFFIBasic___ilogbf.type
    var scalblnf: TestFFIBasic_scalblnf.type
    var scalblnf: TestFFIBasic_scalblnf.type
    var __scalblnf: TestFFIBasic___scalblnf.type
    var nearbyintf: TestFFIBasic_nearbyintf.type
    var nearbyintf: TestFFIBasic_nearbyintf.type
    var __nearbyintf: TestFFIBasic___nearbyintf.type
    var roundf: TestFFIBasic_roundf.type
    var roundf: TestFFIBasic_roundf.type
    var __roundf: TestFFIBasic___roundf.type
    var truncf: TestFFIBasic_truncf.type
    var truncf: TestFFIBasic_truncf.type
    var __truncf: TestFFIBasic___truncf.type
    var remquof: TestFFIBasic_remquof.type
    var remquof: TestFFIBasic_remquof.type
    var __remquof: TestFFIBasic___remquof.type
    var lrintf: TestFFIBasic_lrintf.type
    var lrintf: TestFFIBasic_lrintf.type
    var __lrintf: TestFFIBasic___lrintf.type
    var llrintf: TestFFIBasic_llrintf.type
    var llrintf: TestFFIBasic_llrintf.type
    var __llrintf: TestFFIBasic___llrintf.type
    var lroundf: TestFFIBasic_lroundf.type
    var lroundf: TestFFIBasic_lroundf.type
    var __lroundf: TestFFIBasic___lroundf.type
    var llroundf: TestFFIBasic_llroundf.type
    var llroundf: TestFFIBasic_llroundf.type
    var __llroundf: TestFFIBasic___llroundf.type
    var fdimf: TestFFIBasic_fdimf.type
    var fdimf: TestFFIBasic_fdimf.type
    var __fdimf: TestFFIBasic___fdimf.type
    var fmaxf: TestFFIBasic_fmaxf.type
    var fmaxf: TestFFIBasic_fmaxf.type
    var __fmaxf: TestFFIBasic___fmaxf.type
    var fminf: TestFFIBasic_fminf.type
    var fminf: TestFFIBasic_fminf.type
    var __fminf: TestFFIBasic___fminf.type
    var fmaf: TestFFIBasic_fmaf.type
    var fmaf: TestFFIBasic_fmaf.type
    var __fmaf: TestFFIBasic___fmaf.type
    var scalbf: TestFFIBasic_scalbf.type
    var __scalbf: TestFFIBasic___scalbf.type
    var __fpclassifyl: TestFFIBasic___fpclassifyl.type
    var __signbitl: TestFFIBasic___signbitl.type
    var __isinfl: TestFFIBasic___isinfl.type
    var __finitel: TestFFIBasic___finitel.type
    var __finitel: TestFFIBasic___finitel.type
    var __isnanl: TestFFIBasic___isnanl.type
    var __iseqsigl: TestFFIBasic___iseqsigl.type
    var __issignalingl: TestFFIBasic___issignalingl.type
    var acosl: TestFFIBasic_acosl.type
    var acosl: TestFFIBasic_acosl.type
    var __acosl: TestFFIBasic___acosl.type
    var asinl: TestFFIBasic_asinl.type
    var asinl: TestFFIBasic_asinl.type
    var __asinl: TestFFIBasic___asinl.type
    var atanl: TestFFIBasic_atanl.type
    var atanl: TestFFIBasic_atanl.type
    var __atanl: TestFFIBasic___atanl.type
    var atan2l: TestFFIBasic_atan2l.type
    var atan2l: TestFFIBasic_atan2l.type
    var __atan2l: TestFFIBasic___atan2l.type
    var cosl: TestFFIBasic_cosl.type
    var cosl: TestFFIBasic_cosl.type
    var __cosl: TestFFIBasic___cosl.type
    var sinl: TestFFIBasic_sinl.type
    var sinl: TestFFIBasic_sinl.type
    var __sinl: TestFFIBasic___sinl.type
    var tanl: TestFFIBasic_tanl.type
    var tanl: TestFFIBasic_tanl.type
    var __tanl: TestFFIBasic___tanl.type
    var coshl: TestFFIBasic_coshl.type
    var coshl: TestFFIBasic_coshl.type
    var __coshl: TestFFIBasic___coshl.type
    var sinhl: TestFFIBasic_sinhl.type
    var sinhl: TestFFIBasic_sinhl.type
    var __sinhl: TestFFIBasic___sinhl.type
    var tanhl: TestFFIBasic_tanhl.type
    var tanhl: TestFFIBasic_tanhl.type
    var __tanhl: TestFFIBasic___tanhl.type
    var acoshl: TestFFIBasic_acoshl.type
    var acoshl: TestFFIBasic_acoshl.type
    var __acoshl: TestFFIBasic___acoshl.type
    var asinhl: TestFFIBasic_asinhl.type
    var asinhl: TestFFIBasic_asinhl.type
    var __asinhl: TestFFIBasic___asinhl.type
    var atanhl: TestFFIBasic_atanhl.type
    var atanhl: TestFFIBasic_atanhl.type
    var __atanhl: TestFFIBasic___atanhl.type
    var expl: TestFFIBasic_expl.type
    var expl: TestFFIBasic_expl.type
    var __expl: TestFFIBasic___expl.type
    var frexpl: TestFFIBasic_frexpl.type
    var frexpl: TestFFIBasic_frexpl.type
    var __frexpl: TestFFIBasic___frexpl.type
    var ldexpl: TestFFIBasic_ldexpl.type
    var ldexpl: TestFFIBasic_ldexpl.type
    var __ldexpl: TestFFIBasic___ldexpl.type
    var logl: TestFFIBasic_logl.type
    var logl: TestFFIBasic_logl.type
    var __logl: TestFFIBasic___logl.type
    var log10l: TestFFIBasic_log10l.type
    var log10l: TestFFIBasic_log10l.type
    var __log10l: TestFFIBasic___log10l.type
    var modfl: TestFFIBasic_modfl.type
    var modfl: TestFFIBasic_modfl.type
    var __modfl: TestFFIBasic___modfl.type
    var expm1l: TestFFIBasic_expm1l.type
    var expm1l: TestFFIBasic_expm1l.type
    var __expm1l: TestFFIBasic___expm1l.type
    var log1pl: TestFFIBasic_log1pl.type
    var log1pl: TestFFIBasic_log1pl.type
    var __log1pl: TestFFIBasic___log1pl.type
    var logbl: TestFFIBasic_logbl.type
    var logbl: TestFFIBasic_logbl.type
    var __logbl: TestFFIBasic___logbl.type
    var exp2l: TestFFIBasic_exp2l.type
    var exp2l: TestFFIBasic_exp2l.type
    var __exp2l: TestFFIBasic___exp2l.type
    var log2l: TestFFIBasic_log2l.type
    var log2l: TestFFIBasic_log2l.type
    var __log2l: TestFFIBasic___log2l.type
    var powl: TestFFIBasic_powl.type
    var powl: TestFFIBasic_powl.type
    var __powl: TestFFIBasic___powl.type
    var sqrtl: TestFFIBasic_sqrtl.type
    var sqrtl: TestFFIBasic_sqrtl.type
    var __sqrtl: TestFFIBasic___sqrtl.type
    var hypotl: TestFFIBasic_hypotl.type
    var hypotl: TestFFIBasic_hypotl.type
    var __hypotl: TestFFIBasic___hypotl.type
    var cbrtl: TestFFIBasic_cbrtl.type
    var cbrtl: TestFFIBasic_cbrtl.type
    var __cbrtl: TestFFIBasic___cbrtl.type
    var ceill: TestFFIBasic_ceill.type
    var ceill: TestFFIBasic_ceill.type
    var __ceill: TestFFIBasic___ceill.type
    var fabsl: TestFFIBasic_fabsl.type
    var fabsl: TestFFIBasic_fabsl.type
    var __fabsl: TestFFIBasic___fabsl.type
    var floorl: TestFFIBasic_floorl.type
    var floorl: TestFFIBasic_floorl.type
    var __floorl: TestFFIBasic___floorl.type
    var fmodl: TestFFIBasic_fmodl.type
    var fmodl: TestFFIBasic_fmodl.type
    var __fmodl: TestFFIBasic___fmodl.type
    var isinfl: TestFFIBasic_isinfl.type
    var finitel: TestFFIBasic_finitel.type
    var finitel: TestFFIBasic_finitel.type
    var dreml: TestFFIBasic_dreml.type
    var __dreml: TestFFIBasic___dreml.type
    var significandl: TestFFIBasic_significandl.type
    var __significandl: TestFFIBasic___significandl.type
    var copysignl: TestFFIBasic_copysignl.type
    var copysignl: TestFFIBasic_copysignl.type
    var __copysignl: TestFFIBasic___copysignl.type
    var nanl: TestFFIBasic_nanl.type
    var nanl: TestFFIBasic_nanl.type
    var __nanl: TestFFIBasic___nanl.type
    var isnanl: TestFFIBasic_isnanl.type
    var j0l: TestFFIBasic_j0l.type
    var __j0l: TestFFIBasic___j0l.type
    var j1l: TestFFIBasic_j1l.type
    var __j1l: TestFFIBasic___j1l.type
    var jnl: TestFFIBasic_jnl.type
    var __jnl: TestFFIBasic___jnl.type
    var y0l: TestFFIBasic_y0l.type
    var __y0l: TestFFIBasic___y0l.type
    var y1l: TestFFIBasic_y1l.type
    var __y1l: TestFFIBasic___y1l.type
    var ynl: TestFFIBasic_ynl.type
    var __ynl: TestFFIBasic___ynl.type
    var erfl: TestFFIBasic_erfl.type
    var erfl: TestFFIBasic_erfl.type
    var __erfl: TestFFIBasic___erfl.type
    var erfcl: TestFFIBasic_erfcl.type
    var erfcl: TestFFIBasic_erfcl.type
    var __erfcl: TestFFIBasic___erfcl.type
    var lgammal: TestFFIBasic_lgammal.type
    var lgammal: TestFFIBasic_lgammal.type
    var __lgammal: TestFFIBasic___lgammal.type
    var tgammal: TestFFIBasic_tgammal.type
    var tgammal: TestFFIBasic_tgammal.type
    var __tgammal: TestFFIBasic___tgammal.type
    var gammal: TestFFIBasic_gammal.type
    var __gammal: TestFFIBasic___gammal.type
    var lgammal_r: TestFFIBasic_lgammal_r.type
    var __lgammal_r: TestFFIBasic___lgammal_r.type
    var rintl: TestFFIBasic_rintl.type
    var rintl: TestFFIBasic_rintl.type
    var __rintl: TestFFIBasic___rintl.type
    var nextafterl: TestFFIBasic_nextafterl.type
    var nextafterl: TestFFIBasic_nextafterl.type
    var __nextafterl: TestFFIBasic___nextafterl.type
    var nexttowardl: TestFFIBasic_nexttowardl.type
    var nexttowardl: TestFFIBasic_nexttowardl.type
    var __nexttowardl: TestFFIBasic___nexttowardl.type
    var remainderl: TestFFIBasic_remainderl.type
    var remainderl: TestFFIBasic_remainderl.type
    var __remainderl: TestFFIBasic___remainderl.type
    var scalbnl: TestFFIBasic_scalbnl.type
    var scalbnl: TestFFIBasic_scalbnl.type
    var __scalbnl: TestFFIBasic___scalbnl.type
    var ilogbl: TestFFIBasic_ilogbl.type
    var ilogbl: TestFFIBasic_ilogbl.type
    var __ilogbl: TestFFIBasic___ilogbl.type
    var scalblnl: TestFFIBasic_scalblnl.type
    var scalblnl: TestFFIBasic_scalblnl.type
    var __scalblnl: TestFFIBasic___scalblnl.type
    var nearbyintl: TestFFIBasic_nearbyintl.type
    var nearbyintl: TestFFIBasic_nearbyintl.type
    var __nearbyintl: TestFFIBasic___nearbyintl.type
    var roundl: TestFFIBasic_roundl.type
    var roundl: TestFFIBasic_roundl.type
    var __roundl: TestFFIBasic___roundl.type
    var truncl: TestFFIBasic_truncl.type
    var truncl: TestFFIBasic_truncl.type
    var __truncl: TestFFIBasic___truncl.type
    var remquol: TestFFIBasic_remquol.type
    var remquol: TestFFIBasic_remquol.type
    var __remquol: TestFFIBasic___remquol.type
    var lrintl: TestFFIBasic_lrintl.type
    var lrintl: TestFFIBasic_lrintl.type
    var __lrintl: TestFFIBasic___lrintl.type
    var llrintl: TestFFIBasic_llrintl.type
    var llrintl: TestFFIBasic_llrintl.type
    var __llrintl: TestFFIBasic___llrintl.type
    var lroundl: TestFFIBasic_lroundl.type
    var lroundl: TestFFIBasic_lroundl.type
    var __lroundl: TestFFIBasic___lroundl.type
    var llroundl: TestFFIBasic_llroundl.type
    var llroundl: TestFFIBasic_llroundl.type
    var __llroundl: TestFFIBasic___llroundl.type
    var fdiml: TestFFIBasic_fdiml.type
    var fdiml: TestFFIBasic_fdiml.type
    var __fdiml: TestFFIBasic___fdiml.type
    var fmaxl: TestFFIBasic_fmaxl.type
    var fmaxl: TestFFIBasic_fmaxl.type
    var __fmaxl: TestFFIBasic___fmaxl.type
    var fminl: TestFFIBasic_fminl.type
    var fminl: TestFFIBasic_fminl.type
    var __fminl: TestFFIBasic___fminl.type
    var fmal: TestFFIBasic_fmal.type
    var fmal: TestFFIBasic_fmal.type
    var __fmal: TestFFIBasic___fmal.type
    var scalbl: TestFFIBasic_scalbl.type
    var __scalbl: TestFFIBasic___scalbl.type
    var mj_defaultVFS: TestFFIBasic_mj_defaultVFS.type
    var mj_addFileVFS: TestFFIBasic_mj_addFileVFS.type
    var mj_addBufferVFS: TestFFIBasic_mj_addBufferVFS.type
    var mj_deleteFileVFS: TestFFIBasic_mj_deleteFileVFS.type
    var mj_deleteVFS: TestFFIBasic_mj_deleteVFS.type
    var mj_loadXML: TestFFIBasic_mj_loadXML.type
    var mj_parseXML: TestFFIBasic_mj_parseXML.type
    var mj_parseXMLString: TestFFIBasic_mj_parseXMLString.type
    var mj_compile: TestFFIBasic_mj_compile.type
    var mj_recompile: TestFFIBasic_mj_recompile.type
    var mj_saveLastXML: TestFFIBasic_mj_saveLastXML.type
    var mj_freeLastXML: TestFFIBasic_mj_freeLastXML.type
    var mj_saveXMLString: TestFFIBasic_mj_saveXMLString.type
    var mj_saveXML: TestFFIBasic_mj_saveXML.type
    var mj_step: TestFFIBasic_mj_step.type
    var mj_step1: TestFFIBasic_mj_step1.type
    var mj_step2: TestFFIBasic_mj_step2.type
    var mj_forward: TestFFIBasic_mj_forward.type
    var mj_inverse: TestFFIBasic_mj_inverse.type
    var mj_forwardSkip: TestFFIBasic_mj_forwardSkip.type
    var mj_inverseSkip: TestFFIBasic_mj_inverseSkip.type
    var mj_defaultLROpt: TestFFIBasic_mj_defaultLROpt.type
    var mj_defaultSolRefImp: TestFFIBasic_mj_defaultSolRefImp.type
    var mj_defaultOption: TestFFIBasic_mj_defaultOption.type
    var mj_defaultVisual: TestFFIBasic_mj_defaultVisual.type
    var mj_copyModel: TestFFIBasic_mj_copyModel.type
    var mj_saveModel: TestFFIBasic_mj_saveModel.type
    var mj_loadModel: TestFFIBasic_mj_loadModel.type
    var mj_deleteModel: TestFFIBasic_mj_deleteModel.type
    var mj_sizeModel: TestFFIBasic_mj_sizeModel.type
    var mj_makeData: TestFFIBasic_mj_makeData.type
    var mj_copyData: TestFFIBasic_mj_copyData.type
    var mj_resetData: TestFFIBasic_mj_resetData.type
    var mj_resetDataDebug: TestFFIBasic_mj_resetDataDebug.type
    var mj_resetDataKeyframe: TestFFIBasic_mj_resetDataKeyframe.type
    var mj_markStack: TestFFIBasic_mj_markStack.type
    var mj_freeStack: TestFFIBasic_mj_freeStack.type
    var mj_stackAllocByte: TestFFIBasic_mj_stackAllocByte.type
    var mj_stackAllocNum: TestFFIBasic_mj_stackAllocNum.type
    var mj_stackAllocInt: TestFFIBasic_mj_stackAllocInt.type
    var mj_deleteData: TestFFIBasic_mj_deleteData.type
    var mj_resetCallbacks: TestFFIBasic_mj_resetCallbacks.type
    var mj_setConst: TestFFIBasic_mj_setConst.type
    var mj_setLengthRange: TestFFIBasic_mj_setLengthRange.type
    var mj_makeSpec: TestFFIBasic_mj_makeSpec.type
    var mj_copySpec: TestFFIBasic_mj_copySpec.type
    var mj_deleteSpec: TestFFIBasic_mj_deleteSpec.type
    var mjs_activatePlugin: TestFFIBasic_mjs_activatePlugin.type
    var mjs_setDeepCopy: TestFFIBasic_mjs_setDeepCopy.type
    var mj_printFormattedModel: TestFFIBasic_mj_printFormattedModel.type
    var mj_printModel: TestFFIBasic_mj_printModel.type
    var mj_printFormattedData: TestFFIBasic_mj_printFormattedData.type
    var mj_printData: TestFFIBasic_mj_printData.type
    var mju_printMat: TestFFIBasic_mju_printMat.type
    var mju_printMatSparse: TestFFIBasic_mju_printMatSparse.type
    var mj_printSchema: TestFFIBasic_mj_printSchema.type
    var mj_fwdPosition: TestFFIBasic_mj_fwdPosition.type
    var mj_fwdVelocity: TestFFIBasic_mj_fwdVelocity.type
    var mj_fwdActuation: TestFFIBasic_mj_fwdActuation.type
    var mj_fwdAcceleration: TestFFIBasic_mj_fwdAcceleration.type
    var mj_fwdConstraint: TestFFIBasic_mj_fwdConstraint.type
    var mj_Euler: TestFFIBasic_mj_Euler.type
    var mj_RungeKutta: TestFFIBasic_mj_RungeKutta.type
    var mj_implicit: TestFFIBasic_mj_implicit.type
    var mj_invPosition: TestFFIBasic_mj_invPosition.type
    var mj_invVelocity: TestFFIBasic_mj_invVelocity.type
    var mj_invConstraint: TestFFIBasic_mj_invConstraint.type
    var mj_compareFwdInv: TestFFIBasic_mj_compareFwdInv.type
    var mj_sensorPos: TestFFIBasic_mj_sensorPos.type
    var mj_sensorVel: TestFFIBasic_mj_sensorVel.type
    var mj_sensorAcc: TestFFIBasic_mj_sensorAcc.type
    var mj_energyPos: TestFFIBasic_mj_energyPos.type
    var mj_energyVel: TestFFIBasic_mj_energyVel.type
    var mj_checkPos: TestFFIBasic_mj_checkPos.type
    var mj_checkVel: TestFFIBasic_mj_checkVel.type
    var mj_checkAcc: TestFFIBasic_mj_checkAcc.type
    var mj_kinematics: TestFFIBasic_mj_kinematics.type
    var mj_comPos: TestFFIBasic_mj_comPos.type
    var mj_camlight: TestFFIBasic_mj_camlight.type
    var mj_flex: TestFFIBasic_mj_flex.type
    var mj_tendon: TestFFIBasic_mj_tendon.type
    var mj_transmission: TestFFIBasic_mj_transmission.type
    var mj_crb: TestFFIBasic_mj_crb.type
    var mj_factorM: TestFFIBasic_mj_factorM.type
    var mj_solveM: TestFFIBasic_mj_solveM.type
    var mj_solveM2: TestFFIBasic_mj_solveM2.type
    var mj_comVel: TestFFIBasic_mj_comVel.type
    var mj_passive: TestFFIBasic_mj_passive.type
    var mj_subtreeVel: TestFFIBasic_mj_subtreeVel.type
    var mj_rne: TestFFIBasic_mj_rne.type
    var mj_rnePostConstraint: TestFFIBasic_mj_rnePostConstraint.type
    var mj_collision: TestFFIBasic_mj_collision.type
    var mj_makeConstraint: TestFFIBasic_mj_makeConstraint.type
    var mj_island: TestFFIBasic_mj_island.type
    var mj_projectConstraint: TestFFIBasic_mj_projectConstraint.type
    var mj_referenceConstraint: TestFFIBasic_mj_referenceConstraint.type
    var mj_constraintUpdate: TestFFIBasic_mj_constraintUpdate.type
    var mj_stateSize: TestFFIBasic_mj_stateSize.type
    var mj_getState: TestFFIBasic_mj_getState.type
    var mj_setState: TestFFIBasic_mj_setState.type
    var mj_setKeyframe: TestFFIBasic_mj_setKeyframe.type
    var mj_addContact: TestFFIBasic_mj_addContact.type
    var mj_isPyramidal: TestFFIBasic_mj_isPyramidal.type
    var mj_isSparse: TestFFIBasic_mj_isSparse.type
    var mj_isDual: TestFFIBasic_mj_isDual.type
    var mj_mulJacVec: TestFFIBasic_mj_mulJacVec.type
    var mj_mulJacTVec: TestFFIBasic_mj_mulJacTVec.type
    var mj_jac: TestFFIBasic_mj_jac.type
    var mj_jacBody: TestFFIBasic_mj_jacBody.type
    var mj_jacBodyCom: TestFFIBasic_mj_jacBodyCom.type
    var mj_jacSubtreeCom: TestFFIBasic_mj_jacSubtreeCom.type
    var mj_jacGeom: TestFFIBasic_mj_jacGeom.type
    var mj_jacSite: TestFFIBasic_mj_jacSite.type
    var mj_jacPointAxis: TestFFIBasic_mj_jacPointAxis.type
    var mj_jacDot: TestFFIBasic_mj_jacDot.type
    var mj_angmomMat: TestFFIBasic_mj_angmomMat.type
    var mj_name2id: TestFFIBasic_mj_name2id.type
    var mj_id2name: TestFFIBasic_mj_id2name.type
    var mj_fullM: TestFFIBasic_mj_fullM.type
    var mj_mulM: TestFFIBasic_mj_mulM.type
    var mj_mulM2: TestFFIBasic_mj_mulM2.type
    var mj_addM: TestFFIBasic_mj_addM.type
    var mj_applyFT: TestFFIBasic_mj_applyFT.type
    var mj_objectVelocity: TestFFIBasic_mj_objectVelocity.type
    var mj_objectAcceleration: TestFFIBasic_mj_objectAcceleration.type
    var mj_geomDistance: TestFFIBasic_mj_geomDistance.type
    var mj_contactForce: TestFFIBasic_mj_contactForce.type
    var mj_differentiatePos: TestFFIBasic_mj_differentiatePos.type
    var mj_integratePos: TestFFIBasic_mj_integratePos.type
    var mj_normalizeQuat: TestFFIBasic_mj_normalizeQuat.type
    var mj_local2Global: TestFFIBasic_mj_local2Global.type
    var mj_getTotalmass: TestFFIBasic_mj_getTotalmass.type
    var mj_setTotalmass: TestFFIBasic_mj_setTotalmass.type
    var mj_getPluginConfig: TestFFIBasic_mj_getPluginConfig.type
    var mj_loadPluginLibrary: TestFFIBasic_mj_loadPluginLibrary.type
    var mj_loadAllPluginLibraries: TestFFIBasic_mj_loadAllPluginLibraries.type
    var mj_version: TestFFIBasic_mj_version.type
    var mj_versionString: TestFFIBasic_mj_versionString.type
    var mj_multiRay: TestFFIBasic_mj_multiRay.type
    var mj_ray: TestFFIBasic_mj_ray.type
    var mj_rayHfield: TestFFIBasic_mj_rayHfield.type
    var mj_rayMesh: TestFFIBasic_mj_rayMesh.type
    var mju_rayGeom: TestFFIBasic_mju_rayGeom.type
    var mju_rayFlex: TestFFIBasic_mju_rayFlex.type
    var mju_raySkin: TestFFIBasic_mju_raySkin.type
    var mjv_defaultCamera: TestFFIBasic_mjv_defaultCamera.type
    var mjv_defaultFreeCamera: TestFFIBasic_mjv_defaultFreeCamera.type
    var mjv_defaultPerturb: TestFFIBasic_mjv_defaultPerturb.type
    var mjv_room2model: TestFFIBasic_mjv_room2model.type
    var mjv_model2room: TestFFIBasic_mjv_model2room.type
    var mjv_cameraInModel: TestFFIBasic_mjv_cameraInModel.type
    var mjv_cameraInRoom: TestFFIBasic_mjv_cameraInRoom.type
    var mjv_frustumHeight: TestFFIBasic_mjv_frustumHeight.type
    var mjv_alignToCamera: TestFFIBasic_mjv_alignToCamera.type
    var mjv_moveCamera: TestFFIBasic_mjv_moveCamera.type
    var mjv_moveCameraFromState: TestFFIBasic_mjv_moveCameraFromState.type
    var mjv_movePerturb: TestFFIBasic_mjv_movePerturb.type
    var mjv_movePerturbFromState: TestFFIBasic_mjv_movePerturbFromState.type
    var mjv_moveModel: TestFFIBasic_mjv_moveModel.type
    var mjv_initPerturb: TestFFIBasic_mjv_initPerturb.type
    var mjv_applyPerturbPose: TestFFIBasic_mjv_applyPerturbPose.type
    var mjv_applyPerturbForce: TestFFIBasic_mjv_applyPerturbForce.type
    var mjv_averageCamera: TestFFIBasic_mjv_averageCamera.type
    var mjv_select: TestFFIBasic_mjv_select.type
    var mjv_defaultOption: TestFFIBasic_mjv_defaultOption.type
    var mjv_defaultFigure: TestFFIBasic_mjv_defaultFigure.type
    var mjv_initGeom: TestFFIBasic_mjv_initGeom.type
    var mjv_connector: TestFFIBasic_mjv_connector.type
    var mjv_defaultScene: TestFFIBasic_mjv_defaultScene.type
    var mjv_makeScene: TestFFIBasic_mjv_makeScene.type
    var mjv_freeScene: TestFFIBasic_mjv_freeScene.type
    var mjv_updateScene: TestFFIBasic_mjv_updateScene.type
    var mjv_updateSceneFromState: TestFFIBasic_mjv_updateSceneFromState.type
    var mjv_copyModel: TestFFIBasic_mjv_copyModel.type
    var mjv_defaultSceneState: TestFFIBasic_mjv_defaultSceneState.type
    var mjv_makeSceneState: TestFFIBasic_mjv_makeSceneState.type
    var mjv_freeSceneState: TestFFIBasic_mjv_freeSceneState.type
    var mjv_updateSceneState: TestFFIBasic_mjv_updateSceneState.type
    var mjv_addGeoms: TestFFIBasic_mjv_addGeoms.type
    var mjv_makeLights: TestFFIBasic_mjv_makeLights.type
    var mjv_updateCamera: TestFFIBasic_mjv_updateCamera.type
    var mjv_updateSkin: TestFFIBasic_mjv_updateSkin.type
    var mjr_defaultContext: TestFFIBasic_mjr_defaultContext.type
    var mjr_makeContext: TestFFIBasic_mjr_makeContext.type
    var mjr_changeFont: TestFFIBasic_mjr_changeFont.type
    var mjr_addAux: TestFFIBasic_mjr_addAux.type
    var mjr_freeContext: TestFFIBasic_mjr_freeContext.type
    var mjr_resizeOffscreen: TestFFIBasic_mjr_resizeOffscreen.type
    var mjr_uploadTexture: TestFFIBasic_mjr_uploadTexture.type
    var mjr_uploadMesh: TestFFIBasic_mjr_uploadMesh.type
    var mjr_uploadHField: TestFFIBasic_mjr_uploadHField.type
    var mjr_restoreBuffer: TestFFIBasic_mjr_restoreBuffer.type
    var mjr_setBuffer: TestFFIBasic_mjr_setBuffer.type
    var mjr_readPixels: TestFFIBasic_mjr_readPixels.type
    var mjr_drawPixels: TestFFIBasic_mjr_drawPixels.type
    var mjr_blitBuffer: TestFFIBasic_mjr_blitBuffer.type
    var mjr_setAux: TestFFIBasic_mjr_setAux.type
    var mjr_blitAux: TestFFIBasic_mjr_blitAux.type
    var mjr_text: TestFFIBasic_mjr_text.type
    var mjr_overlay: TestFFIBasic_mjr_overlay.type
    var mjr_maxViewport: TestFFIBasic_mjr_maxViewport.type
    var mjr_rectangle: TestFFIBasic_mjr_rectangle.type
    var mjr_label: TestFFIBasic_mjr_label.type
    var mjr_figure: TestFFIBasic_mjr_figure.type
    var mjr_render: TestFFIBasic_mjr_render.type
    var mjr_finish: TestFFIBasic_mjr_finish.type
    var mjr_getError: TestFFIBasic_mjr_getError.type
    var mjr_findRect: TestFFIBasic_mjr_findRect.type
    var mjui_themeSpacing: TestFFIBasic_mjui_themeSpacing.type
    var mjui_themeColor: TestFFIBasic_mjui_themeColor.type
    var mjui_add: TestFFIBasic_mjui_add.type
    var mjui_addToSection: TestFFIBasic_mjui_addToSection.type
    var mjui_resize: TestFFIBasic_mjui_resize.type
    var mjui_update: TestFFIBasic_mjui_update.type
    var mjui_event: TestFFIBasic_mjui_event.type
    var mjui_render: TestFFIBasic_mjui_render.type
    var mju_error: TestFFIBasic_mju_error.type
    var mju_error_i: TestFFIBasic_mju_error_i.type
    var mju_error_s: TestFFIBasic_mju_error_s.type
    var mju_warning: TestFFIBasic_mju_warning.type
    var mju_warning_i: TestFFIBasic_mju_warning_i.type
    var mju_warning_s: TestFFIBasic_mju_warning_s.type
    var mju_clearHandlers: TestFFIBasic_mju_clearHandlers.type
    var mju_malloc: TestFFIBasic_mju_malloc.type
    var mju_free: TestFFIBasic_mju_free.type
    var mj_warning: TestFFIBasic_mj_warning.type
    var mju_writeLog: TestFFIBasic_mju_writeLog.type
    var mjs_getError: TestFFIBasic_mjs_getError.type
    var mjs_isWarning: TestFFIBasic_mjs_isWarning.type
    var mju_zero3: TestFFIBasic_mju_zero3.type
    var mju_copy3: TestFFIBasic_mju_copy3.type
    var mju_scl3: TestFFIBasic_mju_scl3.type
    var mju_add3: TestFFIBasic_mju_add3.type
    var mju_sub3: TestFFIBasic_mju_sub3.type
    var mju_addTo3: TestFFIBasic_mju_addTo3.type
    var mju_subFrom3: TestFFIBasic_mju_subFrom3.type
    var mju_addToScl3: TestFFIBasic_mju_addToScl3.type
    var mju_addScl3: TestFFIBasic_mju_addScl3.type
    var mju_normalize3: TestFFIBasic_mju_normalize3.type
    var mju_norm3: TestFFIBasic_mju_norm3.type
    var mju_dot3: TestFFIBasic_mju_dot3.type
    var mju_dist3: TestFFIBasic_mju_dist3.type
    var mju_mulMatVec3: TestFFIBasic_mju_mulMatVec3.type
    var mju_mulMatTVec3: TestFFIBasic_mju_mulMatTVec3.type
    var mju_cross: TestFFIBasic_mju_cross.type
    var mju_zero4: TestFFIBasic_mju_zero4.type
    var mju_unit4: TestFFIBasic_mju_unit4.type
    var mju_copy4: TestFFIBasic_mju_copy4.type
    var mju_normalize4: TestFFIBasic_mju_normalize4.type
    var mju_zero: TestFFIBasic_mju_zero.type
    var mju_fill: TestFFIBasic_mju_fill.type
    var mju_copy: TestFFIBasic_mju_copy.type
    var mju_sum: TestFFIBasic_mju_sum.type
    var mju_L1: TestFFIBasic_mju_L1.type
    var mju_scl: TestFFIBasic_mju_scl.type
    var mju_add: TestFFIBasic_mju_add.type
    var mju_sub: TestFFIBasic_mju_sub.type
    var mju_addTo: TestFFIBasic_mju_addTo.type
    var mju_subFrom: TestFFIBasic_mju_subFrom.type
    var mju_addToScl: TestFFIBasic_mju_addToScl.type
    var mju_addScl: TestFFIBasic_mju_addScl.type
    var mju_normalize: TestFFIBasic_mju_normalize.type
    var mju_norm: TestFFIBasic_mju_norm.type
    var mju_dot: TestFFIBasic_mju_dot.type
    var mju_mulMatVec: TestFFIBasic_mju_mulMatVec.type
    var mju_mulMatTVec: TestFFIBasic_mju_mulMatTVec.type
    var mju_mulVecMatVec: TestFFIBasic_mju_mulVecMatVec.type
    var mju_transpose: TestFFIBasic_mju_transpose.type
    var mju_symmetrize: TestFFIBasic_mju_symmetrize.type
    var mju_eye: TestFFIBasic_mju_eye.type
    var mju_mulMatMat: TestFFIBasic_mju_mulMatMat.type
    var mju_mulMatMatT: TestFFIBasic_mju_mulMatMatT.type
    var mju_mulMatTMat: TestFFIBasic_mju_mulMatTMat.type
    var mju_sqrMatTD: TestFFIBasic_mju_sqrMatTD.type
    var mju_transformSpatial: TestFFIBasic_mju_transformSpatial.type
    var mju_dense2sparse: TestFFIBasic_mju_dense2sparse.type
    var mju_sparse2dense: TestFFIBasic_mju_sparse2dense.type
    var mju_rotVecQuat: TestFFIBasic_mju_rotVecQuat.type
    var mju_negQuat: TestFFIBasic_mju_negQuat.type
    var mju_mulQuat: TestFFIBasic_mju_mulQuat.type
    var mju_mulQuatAxis: TestFFIBasic_mju_mulQuatAxis.type
    var mju_axisAngle2Quat: TestFFIBasic_mju_axisAngle2Quat.type
    var mju_quat2Vel: TestFFIBasic_mju_quat2Vel.type
    var mju_subQuat: TestFFIBasic_mju_subQuat.type
    var mju_quat2Mat: TestFFIBasic_mju_quat2Mat.type
    var mju_mat2Quat: TestFFIBasic_mju_mat2Quat.type
    var mju_derivQuat: TestFFIBasic_mju_derivQuat.type
    var mju_quatIntegrate: TestFFIBasic_mju_quatIntegrate.type
    var mju_quatZ2Vec: TestFFIBasic_mju_quatZ2Vec.type
    var mju_mat2Rot: TestFFIBasic_mju_mat2Rot.type
    var mju_euler2Quat: TestFFIBasic_mju_euler2Quat.type
    var mju_mulPose: TestFFIBasic_mju_mulPose.type
    var mju_negPose: TestFFIBasic_mju_negPose.type
    var mju_trnVecPose: TestFFIBasic_mju_trnVecPose.type
    var mju_cholFactor: TestFFIBasic_mju_cholFactor.type
    var mju_cholSolve: TestFFIBasic_mju_cholSolve.type
    var mju_cholUpdate: TestFFIBasic_mju_cholUpdate.type
    var mju_cholFactorBand: TestFFIBasic_mju_cholFactorBand.type
    var mju_cholSolveBand: TestFFIBasic_mju_cholSolveBand.type
    var mju_band2Dense: TestFFIBasic_mju_band2Dense.type
    var mju_dense2Band: TestFFIBasic_mju_dense2Band.type
    var mju_bandMulMatVec: TestFFIBasic_mju_bandMulMatVec.type
    var mju_bandDiag: TestFFIBasic_mju_bandDiag.type
    var mju_eig3: TestFFIBasic_mju_eig3.type
    var mju_boxQP: TestFFIBasic_mju_boxQP.type
    var mju_boxQPmalloc: TestFFIBasic_mju_boxQPmalloc.type
    var mju_muscleGain: TestFFIBasic_mju_muscleGain.type
    var mju_muscleBias: TestFFIBasic_mju_muscleBias.type
    var mju_muscleDynamics: TestFFIBasic_mju_muscleDynamics.type
    var mju_encodePyramid: TestFFIBasic_mju_encodePyramid.type
    var mju_decodePyramid: TestFFIBasic_mju_decodePyramid.type
    var mju_springDamper: TestFFIBasic_mju_springDamper.type
    var mju_min: TestFFIBasic_mju_min.type
    var mju_max: TestFFIBasic_mju_max.type
    var mju_clip: TestFFIBasic_mju_clip.type
    var mju_sign: TestFFIBasic_mju_sign.type
    var mju_round: TestFFIBasic_mju_round.type
    var mju_type2Str: TestFFIBasic_mju_type2Str.type
    var mju_str2Type: TestFFIBasic_mju_str2Type.type
    var mju_writeNumBytes: TestFFIBasic_mju_writeNumBytes.type
    var mju_warningText: TestFFIBasic_mju_warningText.type
    var mju_isBad: TestFFIBasic_mju_isBad.type
    var mju_isZero: TestFFIBasic_mju_isZero.type
    var mju_standardNormal: TestFFIBasic_mju_standardNormal.type
    var mju_f2n: TestFFIBasic_mju_f2n.type
    var mju_n2f: TestFFIBasic_mju_n2f.type
    var mju_d2n: TestFFIBasic_mju_d2n.type
    var mju_n2d: TestFFIBasic_mju_n2d.type
    var mju_insertionSort: TestFFIBasic_mju_insertionSort.type
    var mju_insertionSortInt: TestFFIBasic_mju_insertionSortInt.type
    var mju_Halton: TestFFIBasic_mju_Halton.type
    var mju_strncpy: TestFFIBasic_mju_strncpy.type
    var mju_sigmoid: TestFFIBasic_mju_sigmoid.type
    var mjd_transitionFD: TestFFIBasic_mjd_transitionFD.type
    var mjd_inverseFD: TestFFIBasic_mjd_inverseFD.type
    var mjd_subQuat: TestFFIBasic_mjd_subQuat.type
    var mjd_quatIntegrate: TestFFIBasic_mjd_quatIntegrate.type
    var mjp_defaultPlugin: TestFFIBasic_mjp_defaultPlugin.type
    var mjp_registerPlugin: TestFFIBasic_mjp_registerPlugin.type
    var mjp_pluginCount: TestFFIBasic_mjp_pluginCount.type
    var mjp_getPlugin: TestFFIBasic_mjp_getPlugin.type
    var mjp_getPluginAtSlot: TestFFIBasic_mjp_getPluginAtSlot.type
    var mjp_defaultResourceProvider: TestFFIBasic_mjp_defaultResourceProvider.type
    var mjp_registerResourceProvider: TestFFIBasic_mjp_registerResourceProvider.type
    var mjp_resourceProviderCount: TestFFIBasic_mjp_resourceProviderCount.type
    var mjp_getResourceProvider: TestFFIBasic_mjp_getResourceProvider.type
    var mjp_getResourceProviderAtSlot: TestFFIBasic_mjp_getResourceProviderAtSlot.type
    var mju_threadPoolCreate: TestFFIBasic_mju_threadPoolCreate.type
    var mju_bindThreadPool: TestFFIBasic_mju_bindThreadPool.type
    var mju_threadPoolEnqueue: TestFFIBasic_mju_threadPoolEnqueue.type
    var mju_threadPoolDestroy: TestFFIBasic_mju_threadPoolDestroy.type
    var mju_defaultTask: TestFFIBasic_mju_defaultTask.type
    var mju_taskJoin: TestFFIBasic_mju_taskJoin.type
    var mjs_attach: TestFFIBasic_mjs_attach.type
    var mjs_detachBody: TestFFIBasic_mjs_detachBody.type
    var mjs_detachDefault: TestFFIBasic_mjs_detachDefault.type
    var mjs_addBody: TestFFIBasic_mjs_addBody.type
    var mjs_addSite: TestFFIBasic_mjs_addSite.type
    var mjs_addJoint: TestFFIBasic_mjs_addJoint.type
    var mjs_addFreeJoint: TestFFIBasic_mjs_addFreeJoint.type
    var mjs_addGeom: TestFFIBasic_mjs_addGeom.type
    var mjs_addCamera: TestFFIBasic_mjs_addCamera.type
    var mjs_addLight: TestFFIBasic_mjs_addLight.type
    var mjs_addFrame: TestFFIBasic_mjs_addFrame.type
    var mjs_delete: TestFFIBasic_mjs_delete.type
    var mjs_addActuator: TestFFIBasic_mjs_addActuator.type
    var mjs_addSensor: TestFFIBasic_mjs_addSensor.type
    var mjs_addFlex: TestFFIBasic_mjs_addFlex.type
    var mjs_addPair: TestFFIBasic_mjs_addPair.type
    var mjs_addExclude: TestFFIBasic_mjs_addExclude.type
    var mjs_addEquality: TestFFIBasic_mjs_addEquality.type
    var mjs_addTendon: TestFFIBasic_mjs_addTendon.type
    var mjs_wrapSite: TestFFIBasic_mjs_wrapSite.type
    var mjs_wrapGeom: TestFFIBasic_mjs_wrapGeom.type
    var mjs_wrapJoint: TestFFIBasic_mjs_wrapJoint.type
    var mjs_wrapPulley: TestFFIBasic_mjs_wrapPulley.type
    var mjs_addNumeric: TestFFIBasic_mjs_addNumeric.type
    var mjs_addText: TestFFIBasic_mjs_addText.type
    var mjs_addTuple: TestFFIBasic_mjs_addTuple.type
    var mjs_addKey: TestFFIBasic_mjs_addKey.type
    var mjs_addPlugin: TestFFIBasic_mjs_addPlugin.type
    var mjs_addDefault: TestFFIBasic_mjs_addDefault.type
    var mjs_addMesh: TestFFIBasic_mjs_addMesh.type
    var mjs_addHField: TestFFIBasic_mjs_addHField.type
    var mjs_addSkin: TestFFIBasic_mjs_addSkin.type
    var mjs_addTexture: TestFFIBasic_mjs_addTexture.type
    var mjs_addMaterial: TestFFIBasic_mjs_addMaterial.type
    var mjs_getSpec: TestFFIBasic_mjs_getSpec.type
    var mjs_findSpec: TestFFIBasic_mjs_findSpec.type
    var mjs_findBody: TestFFIBasic_mjs_findBody.type
    var mjs_findElement: TestFFIBasic_mjs_findElement.type
    var mjs_findChild: TestFFIBasic_mjs_findChild.type
    var mjs_getParent: TestFFIBasic_mjs_getParent.type
    var mjs_getFrame: TestFFIBasic_mjs_getFrame.type
    var mjs_findFrame: TestFFIBasic_mjs_findFrame.type
    var mjs_getDefault: TestFFIBasic_mjs_getDefault.type
    var mjs_findDefault: TestFFIBasic_mjs_findDefault.type
    var mjs_getSpecDefault: TestFFIBasic_mjs_getSpecDefault.type
    var mjs_getId: TestFFIBasic_mjs_getId.type
    var mjs_firstChild: TestFFIBasic_mjs_firstChild.type
    var mjs_nextChild: TestFFIBasic_mjs_nextChild.type
    var mjs_firstElement: TestFFIBasic_mjs_firstElement.type
    var mjs_nextElement: TestFFIBasic_mjs_nextElement.type
    var mjs_setBuffer: TestFFIBasic_mjs_setBuffer.type
    var mjs_setString: TestFFIBasic_mjs_setString.type
    var mjs_setStringVec: TestFFIBasic_mjs_setStringVec.type
    var mjs_setInStringVec: TestFFIBasic_mjs_setInStringVec.type
    var mjs_appendString: TestFFIBasic_mjs_appendString.type
    var mjs_setInt: TestFFIBasic_mjs_setInt.type
    var mjs_appendIntVec: TestFFIBasic_mjs_appendIntVec.type
    var mjs_setFloat: TestFFIBasic_mjs_setFloat.type
    var mjs_appendFloatVec: TestFFIBasic_mjs_appendFloatVec.type
    var mjs_setDouble: TestFFIBasic_mjs_setDouble.type
    var mjs_setPluginAttributes: TestFFIBasic_mjs_setPluginAttributes.type
    var mjs_getString: TestFFIBasic_mjs_getString.type
    var mjs_getDouble: TestFFIBasic_mjs_getDouble.type
    var mjs_setDefault: TestFFIBasic_mjs_setDefault.type
    var mjs_setFrame: TestFFIBasic_mjs_setFrame.type
    var mjs_resolveOrientation: TestFFIBasic_mjs_resolveOrientation.type
    var mjs_bodyToFrame: TestFFIBasic_mjs_bodyToFrame.type
    var mjs_setUserValue: TestFFIBasic_mjs_setUserValue.type
    var mjs_getUserValue: TestFFIBasic_mjs_getUserValue.type
    var mjs_deleteUserValue: TestFFIBasic_mjs_deleteUserValue.type
    var mjs_defaultSpec: TestFFIBasic_mjs_defaultSpec.type
    var mjs_defaultOrientation: TestFFIBasic_mjs_defaultOrientation.type
    var mjs_defaultBody: TestFFIBasic_mjs_defaultBody.type
    var mjs_defaultFrame: TestFFIBasic_mjs_defaultFrame.type
    var mjs_defaultJoint: TestFFIBasic_mjs_defaultJoint.type
    var mjs_defaultGeom: TestFFIBasic_mjs_defaultGeom.type
    var mjs_defaultSite: TestFFIBasic_mjs_defaultSite.type
    var mjs_defaultCamera: TestFFIBasic_mjs_defaultCamera.type
    var mjs_defaultLight: TestFFIBasic_mjs_defaultLight.type
    var mjs_defaultFlex: TestFFIBasic_mjs_defaultFlex.type
    var mjs_defaultMesh: TestFFIBasic_mjs_defaultMesh.type
    var mjs_defaultHField: TestFFIBasic_mjs_defaultHField.type
    var mjs_defaultSkin: TestFFIBasic_mjs_defaultSkin.type
    var mjs_defaultTexture: TestFFIBasic_mjs_defaultTexture.type
    var mjs_defaultMaterial: TestFFIBasic_mjs_defaultMaterial.type
    var mjs_defaultPair: TestFFIBasic_mjs_defaultPair.type
    var mjs_defaultEquality: TestFFIBasic_mjs_defaultEquality.type
    var mjs_defaultTendon: TestFFIBasic_mjs_defaultTendon.type
    var mjs_defaultActuator: TestFFIBasic_mjs_defaultActuator.type
    var mjs_defaultSensor: TestFFIBasic_mjs_defaultSensor.type
    var mjs_defaultNumeric: TestFFIBasic_mjs_defaultNumeric.type
    var mjs_defaultText: TestFFIBasic_mjs_defaultText.type
    var mjs_defaultTuple: TestFFIBasic_mjs_defaultTuple.type
    var mjs_defaultKey: TestFFIBasic_mjs_defaultKey.type
    var mjs_defaultPlugin: TestFFIBasic_mjs_defaultPlugin.type
    var mjs_asBody: TestFFIBasic_mjs_asBody.type
    var mjs_asGeom: TestFFIBasic_mjs_asGeom.type
    var mjs_asJoint: TestFFIBasic_mjs_asJoint.type
    var mjs_asSite: TestFFIBasic_mjs_asSite.type
    var mjs_asCamera: TestFFIBasic_mjs_asCamera.type
    var mjs_asLight: TestFFIBasic_mjs_asLight.type
    var mjs_asFrame: TestFFIBasic_mjs_asFrame.type
    var mjs_asActuator: TestFFIBasic_mjs_asActuator.type
    var mjs_asSensor: TestFFIBasic_mjs_asSensor.type
    var mjs_asFlex: TestFFIBasic_mjs_asFlex.type
    var mjs_asPair: TestFFIBasic_mjs_asPair.type
    var mjs_asEquality: TestFFIBasic_mjs_asEquality.type
    var mjs_asExclude: TestFFIBasic_mjs_asExclude.type
    var mjs_asTendon: TestFFIBasic_mjs_asTendon.type
    var mjs_asNumeric: TestFFIBasic_mjs_asNumeric.type
    var mjs_asText: TestFFIBasic_mjs_asText.type
    var mjs_asTuple: TestFFIBasic_mjs_asTuple.type
    var mjs_asKey: TestFFIBasic_mjs_asKey.type
    var mjs_asMesh: TestFFIBasic_mjs_asMesh.type
    var mjs_asHField: TestFFIBasic_mjs_asHField.type
    var mjs_asSkin: TestFFIBasic_mjs_asSkin.type
    var mjs_asTexture: TestFFIBasic_mjs_asTexture.type
    var mjs_asMaterial: TestFFIBasic_mjs_asMaterial.type
    var mjs_asPlugin: TestFFIBasic_mjs_asPlugin.type

    fn __init__(out self):
        try:
            self.lib = DLHandle('/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so')
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load TestFFIBasic from", '/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so', ":\n", e)
            )

    
        self.__ctype_get_mb_cur_max = TestFFIBasic___ctype_get_mb_cur_max.load(self.lib)
        self.atof = TestFFIBasic_atof.load(self.lib)
        self.atoi = TestFFIBasic_atoi.load(self.lib)
        self.atol = TestFFIBasic_atol.load(self.lib)
        self.atoll = TestFFIBasic_atoll.load(self.lib)
        self.strtod = TestFFIBasic_strtod.load(self.lib)
        self.strtod = TestFFIBasic_strtod.load(self.lib)
        self.strtof = TestFFIBasic_strtof.load(self.lib)
        self.strtof = TestFFIBasic_strtof.load(self.lib)
        self.strtold = TestFFIBasic_strtold.load(self.lib)
        self.strtold = TestFFIBasic_strtold.load(self.lib)
        self.strtol = TestFFIBasic_strtol.load(self.lib)
        self.strtol = TestFFIBasic_strtol.load(self.lib)
        self.strtoul = TestFFIBasic_strtoul.load(self.lib)
        self.strtoul = TestFFIBasic_strtoul.load(self.lib)
        self.strtoq = TestFFIBasic_strtoq.load(self.lib)
        self.strtouq = TestFFIBasic_strtouq.load(self.lib)
        self.strtoll = TestFFIBasic_strtoll.load(self.lib)
        self.strtoll = TestFFIBasic_strtoll.load(self.lib)
        self.strtoull = TestFFIBasic_strtoull.load(self.lib)
        self.strtoull = TestFFIBasic_strtoull.load(self.lib)
        self.l64a = TestFFIBasic_l64a.load(self.lib)
        self.a64l = TestFFIBasic_a64l.load(self.lib)
        self.__bswap_16 = TestFFIBasic___bswap_16.load(self.lib)
        self.__bswap_32 = TestFFIBasic___bswap_32.load(self.lib)
        self.__bswap_64 = TestFFIBasic___bswap_64.load(self.lib)
        self.__uint16_identity = TestFFIBasic___uint16_identity.load(self.lib)
        self.__uint32_identity = TestFFIBasic___uint32_identity.load(self.lib)
        self.__uint64_identity = TestFFIBasic___uint64_identity.load(self.lib)
        self.select = TestFFIBasic_select.load(self.lib)
        self.pselect = TestFFIBasic_pselect.load(self.lib)
        self.random = TestFFIBasic_random.load(self.lib)
        self.srandom = TestFFIBasic_srandom.load(self.lib)
        self.initstate = TestFFIBasic_initstate.load(self.lib)
        self.setstate = TestFFIBasic_setstate.load(self.lib)
        self.random_r = TestFFIBasic_random_r.load(self.lib)
        self.srandom_r = TestFFIBasic_srandom_r.load(self.lib)
        self.initstate_r = TestFFIBasic_initstate_r.load(self.lib)
        self.setstate_r = TestFFIBasic_setstate_r.load(self.lib)
        self.rand = TestFFIBasic_rand.load(self.lib)
        self.srand = TestFFIBasic_srand.load(self.lib)
        self.rand_r = TestFFIBasic_rand_r.load(self.lib)
        self.drand48 = TestFFIBasic_drand48.load(self.lib)
        self.erand48 = TestFFIBasic_erand48.load(self.lib)
        self.lrand48 = TestFFIBasic_lrand48.load(self.lib)
        self.nrand48 = TestFFIBasic_nrand48.load(self.lib)
        self.mrand48 = TestFFIBasic_mrand48.load(self.lib)
        self.jrand48 = TestFFIBasic_jrand48.load(self.lib)
        self.srand48 = TestFFIBasic_srand48.load(self.lib)
        self.seed48 = TestFFIBasic_seed48.load(self.lib)
        self.lcong48 = TestFFIBasic_lcong48.load(self.lib)
        self.drand48_r = TestFFIBasic_drand48_r.load(self.lib)
        self.erand48_r = TestFFIBasic_erand48_r.load(self.lib)
        self.lrand48_r = TestFFIBasic_lrand48_r.load(self.lib)
        self.nrand48_r = TestFFIBasic_nrand48_r.load(self.lib)
        self.mrand48_r = TestFFIBasic_mrand48_r.load(self.lib)
        self.jrand48_r = TestFFIBasic_jrand48_r.load(self.lib)
        self.srand48_r = TestFFIBasic_srand48_r.load(self.lib)
        self.seed48_r = TestFFIBasic_seed48_r.load(self.lib)
        self.lcong48_r = TestFFIBasic_lcong48_r.load(self.lib)
        self.malloc = TestFFIBasic_malloc.load(self.lib)
        self.malloc = TestFFIBasic_malloc.load(self.lib)
        self.calloc = TestFFIBasic_calloc.load(self.lib)
        self.calloc = TestFFIBasic_calloc.load(self.lib)
        self.realloc = TestFFIBasic_realloc.load(self.lib)
        self.realloc = TestFFIBasic_realloc.load(self.lib)
        self.free = TestFFIBasic_free.load(self.lib)
        self.free = TestFFIBasic_free.load(self.lib)
        self.reallocarray = TestFFIBasic_reallocarray.load(self.lib)
        self.reallocarray = TestFFIBasic_reallocarray.load(self.lib)
        self.alloca = TestFFIBasic_alloca.load(self.lib)
        self.alloca = TestFFIBasic_alloca.load(self.lib)
        self.valloc = TestFFIBasic_valloc.load(self.lib)
        self.posix_memalign = TestFFIBasic_posix_memalign.load(self.lib)
        self.aligned_alloc = TestFFIBasic_aligned_alloc.load(self.lib)
        self.aligned_alloc = TestFFIBasic_aligned_alloc.load(self.lib)
        self.abort = TestFFIBasic_abort.load(self.lib)
        self.abort = TestFFIBasic_abort.load(self.lib)
        self.atexit = TestFFIBasic_atexit.load(self.lib)
        self.at_quick_exit = TestFFIBasic_at_quick_exit.load(self.lib)
        self.on_exit = TestFFIBasic_on_exit.load(self.lib)
        self.exit = TestFFIBasic_exit.load(self.lib)
        self.exit = TestFFIBasic_exit.load(self.lib)
        self.quick_exit = TestFFIBasic_quick_exit.load(self.lib)
        self._Exit = TestFFIBasic__Exit.load(self.lib)
        self._Exit = TestFFIBasic__Exit.load(self.lib)
        self.getenv = TestFFIBasic_getenv.load(self.lib)
        self.putenv = TestFFIBasic_putenv.load(self.lib)
        self.setenv = TestFFIBasic_setenv.load(self.lib)
        self.unsetenv = TestFFIBasic_unsetenv.load(self.lib)
        self.clearenv = TestFFIBasic_clearenv.load(self.lib)
        self.mktemp = TestFFIBasic_mktemp.load(self.lib)
        self.mkstemp = TestFFIBasic_mkstemp.load(self.lib)
        self.mkstemps = TestFFIBasic_mkstemps.load(self.lib)
        self.mkdtemp = TestFFIBasic_mkdtemp.load(self.lib)
        self.system = TestFFIBasic_system.load(self.lib)
        self.realpath = TestFFIBasic_realpath.load(self.lib)
        self.bsearch = TestFFIBasic_bsearch.load(self.lib)
        self.qsort = TestFFIBasic_qsort.load(self.lib)
        self.abs = TestFFIBasic_abs.load(self.lib)
        self.abs = TestFFIBasic_abs.load(self.lib)
        self.labs = TestFFIBasic_labs.load(self.lib)
        self.labs = TestFFIBasic_labs.load(self.lib)
        self.llabs = TestFFIBasic_llabs.load(self.lib)
        self.llabs = TestFFIBasic_llabs.load(self.lib)
        self.div = TestFFIBasic_div.load(self.lib)
        self.ldiv = TestFFIBasic_ldiv.load(self.lib)
        self.lldiv = TestFFIBasic_lldiv.load(self.lib)
        self.ecvt = TestFFIBasic_ecvt.load(self.lib)
        self.fcvt = TestFFIBasic_fcvt.load(self.lib)
        self.gcvt = TestFFIBasic_gcvt.load(self.lib)
        self.qecvt = TestFFIBasic_qecvt.load(self.lib)
        self.qfcvt = TestFFIBasic_qfcvt.load(self.lib)
        self.qgcvt = TestFFIBasic_qgcvt.load(self.lib)
        self.ecvt_r = TestFFIBasic_ecvt_r.load(self.lib)
        self.fcvt_r = TestFFIBasic_fcvt_r.load(self.lib)
        self.qecvt_r = TestFFIBasic_qecvt_r.load(self.lib)
        self.qfcvt_r = TestFFIBasic_qfcvt_r.load(self.lib)
        self.mblen = TestFFIBasic_mblen.load(self.lib)
        self.mbtowc = TestFFIBasic_mbtowc.load(self.lib)
        self.wctomb = TestFFIBasic_wctomb.load(self.lib)
        self.mbstowcs = TestFFIBasic_mbstowcs.load(self.lib)
        self.wcstombs = TestFFIBasic_wcstombs.load(self.lib)
        self.rpmatch = TestFFIBasic_rpmatch.load(self.lib)
        self.getsubopt = TestFFIBasic_getsubopt.load(self.lib)
        self.getloadavg = TestFFIBasic_getloadavg.load(self.lib)
        self.__fpclassify = TestFFIBasic___fpclassify.load(self.lib)
        self.__signbit = TestFFIBasic___signbit.load(self.lib)
        self.__isinf = TestFFIBasic___isinf.load(self.lib)
        self.__finite = TestFFIBasic___finite.load(self.lib)
        self.__finite = TestFFIBasic___finite.load(self.lib)
        self.__isnan = TestFFIBasic___isnan.load(self.lib)
        self.__iseqsig = TestFFIBasic___iseqsig.load(self.lib)
        self.__issignaling = TestFFIBasic___issignaling.load(self.lib)
        self.acos = TestFFIBasic_acos.load(self.lib)
        self.acos = TestFFIBasic_acos.load(self.lib)
        self.__acos = TestFFIBasic___acos.load(self.lib)
        self.asin = TestFFIBasic_asin.load(self.lib)
        self.asin = TestFFIBasic_asin.load(self.lib)
        self.__asin = TestFFIBasic___asin.load(self.lib)
        self.atan = TestFFIBasic_atan.load(self.lib)
        self.atan = TestFFIBasic_atan.load(self.lib)
        self.__atan = TestFFIBasic___atan.load(self.lib)
        self.atan2 = TestFFIBasic_atan2.load(self.lib)
        self.atan2 = TestFFIBasic_atan2.load(self.lib)
        self.__atan2 = TestFFIBasic___atan2.load(self.lib)
        self.cos = TestFFIBasic_cos.load(self.lib)
        self.cos = TestFFIBasic_cos.load(self.lib)
        self.__cos = TestFFIBasic___cos.load(self.lib)
        self.sin = TestFFIBasic_sin.load(self.lib)
        self.sin = TestFFIBasic_sin.load(self.lib)
        self.__sin = TestFFIBasic___sin.load(self.lib)
        self.tan = TestFFIBasic_tan.load(self.lib)
        self.tan = TestFFIBasic_tan.load(self.lib)
        self.__tan = TestFFIBasic___tan.load(self.lib)
        self.cosh = TestFFIBasic_cosh.load(self.lib)
        self.cosh = TestFFIBasic_cosh.load(self.lib)
        self.__cosh = TestFFIBasic___cosh.load(self.lib)
        self.sinh = TestFFIBasic_sinh.load(self.lib)
        self.sinh = TestFFIBasic_sinh.load(self.lib)
        self.__sinh = TestFFIBasic___sinh.load(self.lib)
        self.tanh = TestFFIBasic_tanh.load(self.lib)
        self.tanh = TestFFIBasic_tanh.load(self.lib)
        self.__tanh = TestFFIBasic___tanh.load(self.lib)
        self.acosh = TestFFIBasic_acosh.load(self.lib)
        self.acosh = TestFFIBasic_acosh.load(self.lib)
        self.__acosh = TestFFIBasic___acosh.load(self.lib)
        self.asinh = TestFFIBasic_asinh.load(self.lib)
        self.asinh = TestFFIBasic_asinh.load(self.lib)
        self.__asinh = TestFFIBasic___asinh.load(self.lib)
        self.atanh = TestFFIBasic_atanh.load(self.lib)
        self.atanh = TestFFIBasic_atanh.load(self.lib)
        self.__atanh = TestFFIBasic___atanh.load(self.lib)
        self.exp = TestFFIBasic_exp.load(self.lib)
        self.exp = TestFFIBasic_exp.load(self.lib)
        self.__exp = TestFFIBasic___exp.load(self.lib)
        self.frexp = TestFFIBasic_frexp.load(self.lib)
        self.frexp = TestFFIBasic_frexp.load(self.lib)
        self.__frexp = TestFFIBasic___frexp.load(self.lib)
        self.ldexp = TestFFIBasic_ldexp.load(self.lib)
        self.ldexp = TestFFIBasic_ldexp.load(self.lib)
        self.__ldexp = TestFFIBasic___ldexp.load(self.lib)
        self.log = TestFFIBasic_log.load(self.lib)
        self.log = TestFFIBasic_log.load(self.lib)
        self.__log = TestFFIBasic___log.load(self.lib)
        self.log10 = TestFFIBasic_log10.load(self.lib)
        self.log10 = TestFFIBasic_log10.load(self.lib)
        self.__log10 = TestFFIBasic___log10.load(self.lib)
        self.modf = TestFFIBasic_modf.load(self.lib)
        self.modf = TestFFIBasic_modf.load(self.lib)
        self.__modf = TestFFIBasic___modf.load(self.lib)
        self.expm1 = TestFFIBasic_expm1.load(self.lib)
        self.expm1 = TestFFIBasic_expm1.load(self.lib)
        self.__expm1 = TestFFIBasic___expm1.load(self.lib)
        self.log1p = TestFFIBasic_log1p.load(self.lib)
        self.log1p = TestFFIBasic_log1p.load(self.lib)
        self.__log1p = TestFFIBasic___log1p.load(self.lib)
        self.logb = TestFFIBasic_logb.load(self.lib)
        self.logb = TestFFIBasic_logb.load(self.lib)
        self.__logb = TestFFIBasic___logb.load(self.lib)
        self.exp2 = TestFFIBasic_exp2.load(self.lib)
        self.exp2 = TestFFIBasic_exp2.load(self.lib)
        self.__exp2 = TestFFIBasic___exp2.load(self.lib)
        self.log2 = TestFFIBasic_log2.load(self.lib)
        self.log2 = TestFFIBasic_log2.load(self.lib)
        self.__log2 = TestFFIBasic___log2.load(self.lib)
        self.pow = TestFFIBasic_pow.load(self.lib)
        self.pow = TestFFIBasic_pow.load(self.lib)
        self.__pow = TestFFIBasic___pow.load(self.lib)
        self.sqrt = TestFFIBasic_sqrt.load(self.lib)
        self.sqrt = TestFFIBasic_sqrt.load(self.lib)
        self.__sqrt = TestFFIBasic___sqrt.load(self.lib)
        self.hypot = TestFFIBasic_hypot.load(self.lib)
        self.hypot = TestFFIBasic_hypot.load(self.lib)
        self.__hypot = TestFFIBasic___hypot.load(self.lib)
        self.cbrt = TestFFIBasic_cbrt.load(self.lib)
        self.cbrt = TestFFIBasic_cbrt.load(self.lib)
        self.__cbrt = TestFFIBasic___cbrt.load(self.lib)
        self.ceil = TestFFIBasic_ceil.load(self.lib)
        self.ceil = TestFFIBasic_ceil.load(self.lib)
        self.__ceil = TestFFIBasic___ceil.load(self.lib)
        self.fabs = TestFFIBasic_fabs.load(self.lib)
        self.fabs = TestFFIBasic_fabs.load(self.lib)
        self.__fabs = TestFFIBasic___fabs.load(self.lib)
        self.floor = TestFFIBasic_floor.load(self.lib)
        self.floor = TestFFIBasic_floor.load(self.lib)
        self.__floor = TestFFIBasic___floor.load(self.lib)
        self.fmod = TestFFIBasic_fmod.load(self.lib)
        self.fmod = TestFFIBasic_fmod.load(self.lib)
        self.__fmod = TestFFIBasic___fmod.load(self.lib)
        self.isinf = TestFFIBasic_isinf.load(self.lib)
        self.finite = TestFFIBasic_finite.load(self.lib)
        self.finite = TestFFIBasic_finite.load(self.lib)
        self.drem = TestFFIBasic_drem.load(self.lib)
        self.__drem = TestFFIBasic___drem.load(self.lib)
        self.significand = TestFFIBasic_significand.load(self.lib)
        self.__significand = TestFFIBasic___significand.load(self.lib)
        self.copysign = TestFFIBasic_copysign.load(self.lib)
        self.copysign = TestFFIBasic_copysign.load(self.lib)
        self.__copysign = TestFFIBasic___copysign.load(self.lib)
        self.nan = TestFFIBasic_nan.load(self.lib)
        self.nan = TestFFIBasic_nan.load(self.lib)
        self.__nan = TestFFIBasic___nan.load(self.lib)
        self.isnan = TestFFIBasic_isnan.load(self.lib)
        self.j0 = TestFFIBasic_j0.load(self.lib)
        self.__j0 = TestFFIBasic___j0.load(self.lib)
        self.j1 = TestFFIBasic_j1.load(self.lib)
        self.__j1 = TestFFIBasic___j1.load(self.lib)
        self.jn = TestFFIBasic_jn.load(self.lib)
        self.__jn = TestFFIBasic___jn.load(self.lib)
        self.y0 = TestFFIBasic_y0.load(self.lib)
        self.__y0 = TestFFIBasic___y0.load(self.lib)
        self.y1 = TestFFIBasic_y1.load(self.lib)
        self.__y1 = TestFFIBasic___y1.load(self.lib)
        self.yn = TestFFIBasic_yn.load(self.lib)
        self.__yn = TestFFIBasic___yn.load(self.lib)
        self.erf = TestFFIBasic_erf.load(self.lib)
        self.erf = TestFFIBasic_erf.load(self.lib)
        self.__erf = TestFFIBasic___erf.load(self.lib)
        self.erfc = TestFFIBasic_erfc.load(self.lib)
        self.erfc = TestFFIBasic_erfc.load(self.lib)
        self.__erfc = TestFFIBasic___erfc.load(self.lib)
        self.lgamma = TestFFIBasic_lgamma.load(self.lib)
        self.lgamma = TestFFIBasic_lgamma.load(self.lib)
        self.__lgamma = TestFFIBasic___lgamma.load(self.lib)
        self.tgamma = TestFFIBasic_tgamma.load(self.lib)
        self.tgamma = TestFFIBasic_tgamma.load(self.lib)
        self.__tgamma = TestFFIBasic___tgamma.load(self.lib)
        self.gamma = TestFFIBasic_gamma.load(self.lib)
        self.__gamma = TestFFIBasic___gamma.load(self.lib)
        self.lgamma_r = TestFFIBasic_lgamma_r.load(self.lib)
        self.__lgamma_r = TestFFIBasic___lgamma_r.load(self.lib)
        self.rint = TestFFIBasic_rint.load(self.lib)
        self.rint = TestFFIBasic_rint.load(self.lib)
        self.__rint = TestFFIBasic___rint.load(self.lib)
        self.nextafter = TestFFIBasic_nextafter.load(self.lib)
        self.nextafter = TestFFIBasic_nextafter.load(self.lib)
        self.__nextafter = TestFFIBasic___nextafter.load(self.lib)
        self.nexttoward = TestFFIBasic_nexttoward.load(self.lib)
        self.nexttoward = TestFFIBasic_nexttoward.load(self.lib)
        self.__nexttoward = TestFFIBasic___nexttoward.load(self.lib)
        self.remainder = TestFFIBasic_remainder.load(self.lib)
        self.remainder = TestFFIBasic_remainder.load(self.lib)
        self.__remainder = TestFFIBasic___remainder.load(self.lib)
        self.scalbn = TestFFIBasic_scalbn.load(self.lib)
        self.scalbn = TestFFIBasic_scalbn.load(self.lib)
        self.__scalbn = TestFFIBasic___scalbn.load(self.lib)
        self.ilogb = TestFFIBasic_ilogb.load(self.lib)
        self.ilogb = TestFFIBasic_ilogb.load(self.lib)
        self.__ilogb = TestFFIBasic___ilogb.load(self.lib)
        self.scalbln = TestFFIBasic_scalbln.load(self.lib)
        self.scalbln = TestFFIBasic_scalbln.load(self.lib)
        self.__scalbln = TestFFIBasic___scalbln.load(self.lib)
        self.nearbyint = TestFFIBasic_nearbyint.load(self.lib)
        self.nearbyint = TestFFIBasic_nearbyint.load(self.lib)
        self.__nearbyint = TestFFIBasic___nearbyint.load(self.lib)
        self.round = TestFFIBasic_round.load(self.lib)
        self.round = TestFFIBasic_round.load(self.lib)
        self.__round = TestFFIBasic___round.load(self.lib)
        self.trunc = TestFFIBasic_trunc.load(self.lib)
        self.trunc = TestFFIBasic_trunc.load(self.lib)
        self.__trunc = TestFFIBasic___trunc.load(self.lib)
        self.remquo = TestFFIBasic_remquo.load(self.lib)
        self.remquo = TestFFIBasic_remquo.load(self.lib)
        self.__remquo = TestFFIBasic___remquo.load(self.lib)
        self.lrint = TestFFIBasic_lrint.load(self.lib)
        self.lrint = TestFFIBasic_lrint.load(self.lib)
        self.__lrint = TestFFIBasic___lrint.load(self.lib)
        self.llrint = TestFFIBasic_llrint.load(self.lib)
        self.llrint = TestFFIBasic_llrint.load(self.lib)
        self.__llrint = TestFFIBasic___llrint.load(self.lib)
        self.lround = TestFFIBasic_lround.load(self.lib)
        self.lround = TestFFIBasic_lround.load(self.lib)
        self.__lround = TestFFIBasic___lround.load(self.lib)
        self.llround = TestFFIBasic_llround.load(self.lib)
        self.llround = TestFFIBasic_llround.load(self.lib)
        self.__llround = TestFFIBasic___llround.load(self.lib)
        self.fdim = TestFFIBasic_fdim.load(self.lib)
        self.fdim = TestFFIBasic_fdim.load(self.lib)
        self.__fdim = TestFFIBasic___fdim.load(self.lib)
        self.fmax = TestFFIBasic_fmax.load(self.lib)
        self.fmax = TestFFIBasic_fmax.load(self.lib)
        self.__fmax = TestFFIBasic___fmax.load(self.lib)
        self.fmin = TestFFIBasic_fmin.load(self.lib)
        self.fmin = TestFFIBasic_fmin.load(self.lib)
        self.__fmin = TestFFIBasic___fmin.load(self.lib)
        self.fma = TestFFIBasic_fma.load(self.lib)
        self.fma = TestFFIBasic_fma.load(self.lib)
        self.__fma = TestFFIBasic___fma.load(self.lib)
        self.scalb = TestFFIBasic_scalb.load(self.lib)
        self.__scalb = TestFFIBasic___scalb.load(self.lib)
        self.__fpclassifyf = TestFFIBasic___fpclassifyf.load(self.lib)
        self.__signbitf = TestFFIBasic___signbitf.load(self.lib)
        self.__isinff = TestFFIBasic___isinff.load(self.lib)
        self.__finitef = TestFFIBasic___finitef.load(self.lib)
        self.__finitef = TestFFIBasic___finitef.load(self.lib)
        self.__isnanf = TestFFIBasic___isnanf.load(self.lib)
        self.__iseqsigf = TestFFIBasic___iseqsigf.load(self.lib)
        self.__issignalingf = TestFFIBasic___issignalingf.load(self.lib)
        self.acosf = TestFFIBasic_acosf.load(self.lib)
        self.acosf = TestFFIBasic_acosf.load(self.lib)
        self.__acosf = TestFFIBasic___acosf.load(self.lib)
        self.asinf = TestFFIBasic_asinf.load(self.lib)
        self.asinf = TestFFIBasic_asinf.load(self.lib)
        self.__asinf = TestFFIBasic___asinf.load(self.lib)
        self.atanf = TestFFIBasic_atanf.load(self.lib)
        self.atanf = TestFFIBasic_atanf.load(self.lib)
        self.__atanf = TestFFIBasic___atanf.load(self.lib)
        self.atan2f = TestFFIBasic_atan2f.load(self.lib)
        self.atan2f = TestFFIBasic_atan2f.load(self.lib)
        self.__atan2f = TestFFIBasic___atan2f.load(self.lib)
        self.cosf = TestFFIBasic_cosf.load(self.lib)
        self.cosf = TestFFIBasic_cosf.load(self.lib)
        self.__cosf = TestFFIBasic___cosf.load(self.lib)
        self.sinf = TestFFIBasic_sinf.load(self.lib)
        self.sinf = TestFFIBasic_sinf.load(self.lib)
        self.__sinf = TestFFIBasic___sinf.load(self.lib)
        self.tanf = TestFFIBasic_tanf.load(self.lib)
        self.tanf = TestFFIBasic_tanf.load(self.lib)
        self.__tanf = TestFFIBasic___tanf.load(self.lib)
        self.coshf = TestFFIBasic_coshf.load(self.lib)
        self.coshf = TestFFIBasic_coshf.load(self.lib)
        self.__coshf = TestFFIBasic___coshf.load(self.lib)
        self.sinhf = TestFFIBasic_sinhf.load(self.lib)
        self.sinhf = TestFFIBasic_sinhf.load(self.lib)
        self.__sinhf = TestFFIBasic___sinhf.load(self.lib)
        self.tanhf = TestFFIBasic_tanhf.load(self.lib)
        self.tanhf = TestFFIBasic_tanhf.load(self.lib)
        self.__tanhf = TestFFIBasic___tanhf.load(self.lib)
        self.acoshf = TestFFIBasic_acoshf.load(self.lib)
        self.acoshf = TestFFIBasic_acoshf.load(self.lib)
        self.__acoshf = TestFFIBasic___acoshf.load(self.lib)
        self.asinhf = TestFFIBasic_asinhf.load(self.lib)
        self.asinhf = TestFFIBasic_asinhf.load(self.lib)
        self.__asinhf = TestFFIBasic___asinhf.load(self.lib)
        self.atanhf = TestFFIBasic_atanhf.load(self.lib)
        self.atanhf = TestFFIBasic_atanhf.load(self.lib)
        self.__atanhf = TestFFIBasic___atanhf.load(self.lib)
        self.expf = TestFFIBasic_expf.load(self.lib)
        self.expf = TestFFIBasic_expf.load(self.lib)
        self.__expf = TestFFIBasic___expf.load(self.lib)
        self.frexpf = TestFFIBasic_frexpf.load(self.lib)
        self.frexpf = TestFFIBasic_frexpf.load(self.lib)
        self.__frexpf = TestFFIBasic___frexpf.load(self.lib)
        self.ldexpf = TestFFIBasic_ldexpf.load(self.lib)
        self.ldexpf = TestFFIBasic_ldexpf.load(self.lib)
        self.__ldexpf = TestFFIBasic___ldexpf.load(self.lib)
        self.logf = TestFFIBasic_logf.load(self.lib)
        self.logf = TestFFIBasic_logf.load(self.lib)
        self.__logf = TestFFIBasic___logf.load(self.lib)
        self.log10f = TestFFIBasic_log10f.load(self.lib)
        self.log10f = TestFFIBasic_log10f.load(self.lib)
        self.__log10f = TestFFIBasic___log10f.load(self.lib)
        self.modff = TestFFIBasic_modff.load(self.lib)
        self.modff = TestFFIBasic_modff.load(self.lib)
        self.__modff = TestFFIBasic___modff.load(self.lib)
        self.expm1f = TestFFIBasic_expm1f.load(self.lib)
        self.expm1f = TestFFIBasic_expm1f.load(self.lib)
        self.__expm1f = TestFFIBasic___expm1f.load(self.lib)
        self.log1pf = TestFFIBasic_log1pf.load(self.lib)
        self.log1pf = TestFFIBasic_log1pf.load(self.lib)
        self.__log1pf = TestFFIBasic___log1pf.load(self.lib)
        self.logbf = TestFFIBasic_logbf.load(self.lib)
        self.logbf = TestFFIBasic_logbf.load(self.lib)
        self.__logbf = TestFFIBasic___logbf.load(self.lib)
        self.exp2f = TestFFIBasic_exp2f.load(self.lib)
        self.exp2f = TestFFIBasic_exp2f.load(self.lib)
        self.__exp2f = TestFFIBasic___exp2f.load(self.lib)
        self.log2f = TestFFIBasic_log2f.load(self.lib)
        self.log2f = TestFFIBasic_log2f.load(self.lib)
        self.__log2f = TestFFIBasic___log2f.load(self.lib)
        self.powf = TestFFIBasic_powf.load(self.lib)
        self.powf = TestFFIBasic_powf.load(self.lib)
        self.__powf = TestFFIBasic___powf.load(self.lib)
        self.sqrtf = TestFFIBasic_sqrtf.load(self.lib)
        self.sqrtf = TestFFIBasic_sqrtf.load(self.lib)
        self.__sqrtf = TestFFIBasic___sqrtf.load(self.lib)
        self.hypotf = TestFFIBasic_hypotf.load(self.lib)
        self.hypotf = TestFFIBasic_hypotf.load(self.lib)
        self.__hypotf = TestFFIBasic___hypotf.load(self.lib)
        self.cbrtf = TestFFIBasic_cbrtf.load(self.lib)
        self.cbrtf = TestFFIBasic_cbrtf.load(self.lib)
        self.__cbrtf = TestFFIBasic___cbrtf.load(self.lib)
        self.ceilf = TestFFIBasic_ceilf.load(self.lib)
        self.ceilf = TestFFIBasic_ceilf.load(self.lib)
        self.__ceilf = TestFFIBasic___ceilf.load(self.lib)
        self.fabsf = TestFFIBasic_fabsf.load(self.lib)
        self.fabsf = TestFFIBasic_fabsf.load(self.lib)
        self.__fabsf = TestFFIBasic___fabsf.load(self.lib)
        self.floorf = TestFFIBasic_floorf.load(self.lib)
        self.floorf = TestFFIBasic_floorf.load(self.lib)
        self.__floorf = TestFFIBasic___floorf.load(self.lib)
        self.fmodf = TestFFIBasic_fmodf.load(self.lib)
        self.fmodf = TestFFIBasic_fmodf.load(self.lib)
        self.__fmodf = TestFFIBasic___fmodf.load(self.lib)
        self.isinff = TestFFIBasic_isinff.load(self.lib)
        self.finitef = TestFFIBasic_finitef.load(self.lib)
        self.finitef = TestFFIBasic_finitef.load(self.lib)
        self.dremf = TestFFIBasic_dremf.load(self.lib)
        self.__dremf = TestFFIBasic___dremf.load(self.lib)
        self.significandf = TestFFIBasic_significandf.load(self.lib)
        self.__significandf = TestFFIBasic___significandf.load(self.lib)
        self.copysignf = TestFFIBasic_copysignf.load(self.lib)
        self.copysignf = TestFFIBasic_copysignf.load(self.lib)
        self.__copysignf = TestFFIBasic___copysignf.load(self.lib)
        self.nanf = TestFFIBasic_nanf.load(self.lib)
        self.nanf = TestFFIBasic_nanf.load(self.lib)
        self.__nanf = TestFFIBasic___nanf.load(self.lib)
        self.isnanf = TestFFIBasic_isnanf.load(self.lib)
        self.j0f = TestFFIBasic_j0f.load(self.lib)
        self.__j0f = TestFFIBasic___j0f.load(self.lib)
        self.j1f = TestFFIBasic_j1f.load(self.lib)
        self.__j1f = TestFFIBasic___j1f.load(self.lib)
        self.jnf = TestFFIBasic_jnf.load(self.lib)
        self.__jnf = TestFFIBasic___jnf.load(self.lib)
        self.y0f = TestFFIBasic_y0f.load(self.lib)
        self.__y0f = TestFFIBasic___y0f.load(self.lib)
        self.y1f = TestFFIBasic_y1f.load(self.lib)
        self.__y1f = TestFFIBasic___y1f.load(self.lib)
        self.ynf = TestFFIBasic_ynf.load(self.lib)
        self.__ynf = TestFFIBasic___ynf.load(self.lib)
        self.erff = TestFFIBasic_erff.load(self.lib)
        self.erff = TestFFIBasic_erff.load(self.lib)
        self.__erff = TestFFIBasic___erff.load(self.lib)
        self.erfcf = TestFFIBasic_erfcf.load(self.lib)
        self.erfcf = TestFFIBasic_erfcf.load(self.lib)
        self.__erfcf = TestFFIBasic___erfcf.load(self.lib)
        self.lgammaf = TestFFIBasic_lgammaf.load(self.lib)
        self.lgammaf = TestFFIBasic_lgammaf.load(self.lib)
        self.__lgammaf = TestFFIBasic___lgammaf.load(self.lib)
        self.tgammaf = TestFFIBasic_tgammaf.load(self.lib)
        self.tgammaf = TestFFIBasic_tgammaf.load(self.lib)
        self.__tgammaf = TestFFIBasic___tgammaf.load(self.lib)
        self.gammaf = TestFFIBasic_gammaf.load(self.lib)
        self.__gammaf = TestFFIBasic___gammaf.load(self.lib)
        self.lgammaf_r = TestFFIBasic_lgammaf_r.load(self.lib)
        self.__lgammaf_r = TestFFIBasic___lgammaf_r.load(self.lib)
        self.rintf = TestFFIBasic_rintf.load(self.lib)
        self.rintf = TestFFIBasic_rintf.load(self.lib)
        self.__rintf = TestFFIBasic___rintf.load(self.lib)
        self.nextafterf = TestFFIBasic_nextafterf.load(self.lib)
        self.nextafterf = TestFFIBasic_nextafterf.load(self.lib)
        self.__nextafterf = TestFFIBasic___nextafterf.load(self.lib)
        self.nexttowardf = TestFFIBasic_nexttowardf.load(self.lib)
        self.nexttowardf = TestFFIBasic_nexttowardf.load(self.lib)
        self.__nexttowardf = TestFFIBasic___nexttowardf.load(self.lib)
        self.remainderf = TestFFIBasic_remainderf.load(self.lib)
        self.remainderf = TestFFIBasic_remainderf.load(self.lib)
        self.__remainderf = TestFFIBasic___remainderf.load(self.lib)
        self.scalbnf = TestFFIBasic_scalbnf.load(self.lib)
        self.scalbnf = TestFFIBasic_scalbnf.load(self.lib)
        self.__scalbnf = TestFFIBasic___scalbnf.load(self.lib)
        self.ilogbf = TestFFIBasic_ilogbf.load(self.lib)
        self.ilogbf = TestFFIBasic_ilogbf.load(self.lib)
        self.__ilogbf = TestFFIBasic___ilogbf.load(self.lib)
        self.scalblnf = TestFFIBasic_scalblnf.load(self.lib)
        self.scalblnf = TestFFIBasic_scalblnf.load(self.lib)
        self.__scalblnf = TestFFIBasic___scalblnf.load(self.lib)
        self.nearbyintf = TestFFIBasic_nearbyintf.load(self.lib)
        self.nearbyintf = TestFFIBasic_nearbyintf.load(self.lib)
        self.__nearbyintf = TestFFIBasic___nearbyintf.load(self.lib)
        self.roundf = TestFFIBasic_roundf.load(self.lib)
        self.roundf = TestFFIBasic_roundf.load(self.lib)
        self.__roundf = TestFFIBasic___roundf.load(self.lib)
        self.truncf = TestFFIBasic_truncf.load(self.lib)
        self.truncf = TestFFIBasic_truncf.load(self.lib)
        self.__truncf = TestFFIBasic___truncf.load(self.lib)
        self.remquof = TestFFIBasic_remquof.load(self.lib)
        self.remquof = TestFFIBasic_remquof.load(self.lib)
        self.__remquof = TestFFIBasic___remquof.load(self.lib)
        self.lrintf = TestFFIBasic_lrintf.load(self.lib)
        self.lrintf = TestFFIBasic_lrintf.load(self.lib)
        self.__lrintf = TestFFIBasic___lrintf.load(self.lib)
        self.llrintf = TestFFIBasic_llrintf.load(self.lib)
        self.llrintf = TestFFIBasic_llrintf.load(self.lib)
        self.__llrintf = TestFFIBasic___llrintf.load(self.lib)
        self.lroundf = TestFFIBasic_lroundf.load(self.lib)
        self.lroundf = TestFFIBasic_lroundf.load(self.lib)
        self.__lroundf = TestFFIBasic___lroundf.load(self.lib)
        self.llroundf = TestFFIBasic_llroundf.load(self.lib)
        self.llroundf = TestFFIBasic_llroundf.load(self.lib)
        self.__llroundf = TestFFIBasic___llroundf.load(self.lib)
        self.fdimf = TestFFIBasic_fdimf.load(self.lib)
        self.fdimf = TestFFIBasic_fdimf.load(self.lib)
        self.__fdimf = TestFFIBasic___fdimf.load(self.lib)
        self.fmaxf = TestFFIBasic_fmaxf.load(self.lib)
        self.fmaxf = TestFFIBasic_fmaxf.load(self.lib)
        self.__fmaxf = TestFFIBasic___fmaxf.load(self.lib)
        self.fminf = TestFFIBasic_fminf.load(self.lib)
        self.fminf = TestFFIBasic_fminf.load(self.lib)
        self.__fminf = TestFFIBasic___fminf.load(self.lib)
        self.fmaf = TestFFIBasic_fmaf.load(self.lib)
        self.fmaf = TestFFIBasic_fmaf.load(self.lib)
        self.__fmaf = TestFFIBasic___fmaf.load(self.lib)
        self.scalbf = TestFFIBasic_scalbf.load(self.lib)
        self.__scalbf = TestFFIBasic___scalbf.load(self.lib)
        self.__fpclassifyl = TestFFIBasic___fpclassifyl.load(self.lib)
        self.__signbitl = TestFFIBasic___signbitl.load(self.lib)
        self.__isinfl = TestFFIBasic___isinfl.load(self.lib)
        self.__finitel = TestFFIBasic___finitel.load(self.lib)
        self.__finitel = TestFFIBasic___finitel.load(self.lib)
        self.__isnanl = TestFFIBasic___isnanl.load(self.lib)
        self.__iseqsigl = TestFFIBasic___iseqsigl.load(self.lib)
        self.__issignalingl = TestFFIBasic___issignalingl.load(self.lib)
        self.acosl = TestFFIBasic_acosl.load(self.lib)
        self.acosl = TestFFIBasic_acosl.load(self.lib)
        self.__acosl = TestFFIBasic___acosl.load(self.lib)
        self.asinl = TestFFIBasic_asinl.load(self.lib)
        self.asinl = TestFFIBasic_asinl.load(self.lib)
        self.__asinl = TestFFIBasic___asinl.load(self.lib)
        self.atanl = TestFFIBasic_atanl.load(self.lib)
        self.atanl = TestFFIBasic_atanl.load(self.lib)
        self.__atanl = TestFFIBasic___atanl.load(self.lib)
        self.atan2l = TestFFIBasic_atan2l.load(self.lib)
        self.atan2l = TestFFIBasic_atan2l.load(self.lib)
        self.__atan2l = TestFFIBasic___atan2l.load(self.lib)
        self.cosl = TestFFIBasic_cosl.load(self.lib)
        self.cosl = TestFFIBasic_cosl.load(self.lib)
        self.__cosl = TestFFIBasic___cosl.load(self.lib)
        self.sinl = TestFFIBasic_sinl.load(self.lib)
        self.sinl = TestFFIBasic_sinl.load(self.lib)
        self.__sinl = TestFFIBasic___sinl.load(self.lib)
        self.tanl = TestFFIBasic_tanl.load(self.lib)
        self.tanl = TestFFIBasic_tanl.load(self.lib)
        self.__tanl = TestFFIBasic___tanl.load(self.lib)
        self.coshl = TestFFIBasic_coshl.load(self.lib)
        self.coshl = TestFFIBasic_coshl.load(self.lib)
        self.__coshl = TestFFIBasic___coshl.load(self.lib)
        self.sinhl = TestFFIBasic_sinhl.load(self.lib)
        self.sinhl = TestFFIBasic_sinhl.load(self.lib)
        self.__sinhl = TestFFIBasic___sinhl.load(self.lib)
        self.tanhl = TestFFIBasic_tanhl.load(self.lib)
        self.tanhl = TestFFIBasic_tanhl.load(self.lib)
        self.__tanhl = TestFFIBasic___tanhl.load(self.lib)
        self.acoshl = TestFFIBasic_acoshl.load(self.lib)
        self.acoshl = TestFFIBasic_acoshl.load(self.lib)
        self.__acoshl = TestFFIBasic___acoshl.load(self.lib)
        self.asinhl = TestFFIBasic_asinhl.load(self.lib)
        self.asinhl = TestFFIBasic_asinhl.load(self.lib)
        self.__asinhl = TestFFIBasic___asinhl.load(self.lib)
        self.atanhl = TestFFIBasic_atanhl.load(self.lib)
        self.atanhl = TestFFIBasic_atanhl.load(self.lib)
        self.__atanhl = TestFFIBasic___atanhl.load(self.lib)
        self.expl = TestFFIBasic_expl.load(self.lib)
        self.expl = TestFFIBasic_expl.load(self.lib)
        self.__expl = TestFFIBasic___expl.load(self.lib)
        self.frexpl = TestFFIBasic_frexpl.load(self.lib)
        self.frexpl = TestFFIBasic_frexpl.load(self.lib)
        self.__frexpl = TestFFIBasic___frexpl.load(self.lib)
        self.ldexpl = TestFFIBasic_ldexpl.load(self.lib)
        self.ldexpl = TestFFIBasic_ldexpl.load(self.lib)
        self.__ldexpl = TestFFIBasic___ldexpl.load(self.lib)
        self.logl = TestFFIBasic_logl.load(self.lib)
        self.logl = TestFFIBasic_logl.load(self.lib)
        self.__logl = TestFFIBasic___logl.load(self.lib)
        self.log10l = TestFFIBasic_log10l.load(self.lib)
        self.log10l = TestFFIBasic_log10l.load(self.lib)
        self.__log10l = TestFFIBasic___log10l.load(self.lib)
        self.modfl = TestFFIBasic_modfl.load(self.lib)
        self.modfl = TestFFIBasic_modfl.load(self.lib)
        self.__modfl = TestFFIBasic___modfl.load(self.lib)
        self.expm1l = TestFFIBasic_expm1l.load(self.lib)
        self.expm1l = TestFFIBasic_expm1l.load(self.lib)
        self.__expm1l = TestFFIBasic___expm1l.load(self.lib)
        self.log1pl = TestFFIBasic_log1pl.load(self.lib)
        self.log1pl = TestFFIBasic_log1pl.load(self.lib)
        self.__log1pl = TestFFIBasic___log1pl.load(self.lib)
        self.logbl = TestFFIBasic_logbl.load(self.lib)
        self.logbl = TestFFIBasic_logbl.load(self.lib)
        self.__logbl = TestFFIBasic___logbl.load(self.lib)
        self.exp2l = TestFFIBasic_exp2l.load(self.lib)
        self.exp2l = TestFFIBasic_exp2l.load(self.lib)
        self.__exp2l = TestFFIBasic___exp2l.load(self.lib)
        self.log2l = TestFFIBasic_log2l.load(self.lib)
        self.log2l = TestFFIBasic_log2l.load(self.lib)
        self.__log2l = TestFFIBasic___log2l.load(self.lib)
        self.powl = TestFFIBasic_powl.load(self.lib)
        self.powl = TestFFIBasic_powl.load(self.lib)
        self.__powl = TestFFIBasic___powl.load(self.lib)
        self.sqrtl = TestFFIBasic_sqrtl.load(self.lib)
        self.sqrtl = TestFFIBasic_sqrtl.load(self.lib)
        self.__sqrtl = TestFFIBasic___sqrtl.load(self.lib)
        self.hypotl = TestFFIBasic_hypotl.load(self.lib)
        self.hypotl = TestFFIBasic_hypotl.load(self.lib)
        self.__hypotl = TestFFIBasic___hypotl.load(self.lib)
        self.cbrtl = TestFFIBasic_cbrtl.load(self.lib)
        self.cbrtl = TestFFIBasic_cbrtl.load(self.lib)
        self.__cbrtl = TestFFIBasic___cbrtl.load(self.lib)
        self.ceill = TestFFIBasic_ceill.load(self.lib)
        self.ceill = TestFFIBasic_ceill.load(self.lib)
        self.__ceill = TestFFIBasic___ceill.load(self.lib)
        self.fabsl = TestFFIBasic_fabsl.load(self.lib)
        self.fabsl = TestFFIBasic_fabsl.load(self.lib)
        self.__fabsl = TestFFIBasic___fabsl.load(self.lib)
        self.floorl = TestFFIBasic_floorl.load(self.lib)
        self.floorl = TestFFIBasic_floorl.load(self.lib)
        self.__floorl = TestFFIBasic___floorl.load(self.lib)
        self.fmodl = TestFFIBasic_fmodl.load(self.lib)
        self.fmodl = TestFFIBasic_fmodl.load(self.lib)
        self.__fmodl = TestFFIBasic___fmodl.load(self.lib)
        self.isinfl = TestFFIBasic_isinfl.load(self.lib)
        self.finitel = TestFFIBasic_finitel.load(self.lib)
        self.finitel = TestFFIBasic_finitel.load(self.lib)
        self.dreml = TestFFIBasic_dreml.load(self.lib)
        self.__dreml = TestFFIBasic___dreml.load(self.lib)
        self.significandl = TestFFIBasic_significandl.load(self.lib)
        self.__significandl = TestFFIBasic___significandl.load(self.lib)
        self.copysignl = TestFFIBasic_copysignl.load(self.lib)
        self.copysignl = TestFFIBasic_copysignl.load(self.lib)
        self.__copysignl = TestFFIBasic___copysignl.load(self.lib)
        self.nanl = TestFFIBasic_nanl.load(self.lib)
        self.nanl = TestFFIBasic_nanl.load(self.lib)
        self.__nanl = TestFFIBasic___nanl.load(self.lib)
        self.isnanl = TestFFIBasic_isnanl.load(self.lib)
        self.j0l = TestFFIBasic_j0l.load(self.lib)
        self.__j0l = TestFFIBasic___j0l.load(self.lib)
        self.j1l = TestFFIBasic_j1l.load(self.lib)
        self.__j1l = TestFFIBasic___j1l.load(self.lib)
        self.jnl = TestFFIBasic_jnl.load(self.lib)
        self.__jnl = TestFFIBasic___jnl.load(self.lib)
        self.y0l = TestFFIBasic_y0l.load(self.lib)
        self.__y0l = TestFFIBasic___y0l.load(self.lib)
        self.y1l = TestFFIBasic_y1l.load(self.lib)
        self.__y1l = TestFFIBasic___y1l.load(self.lib)
        self.ynl = TestFFIBasic_ynl.load(self.lib)
        self.__ynl = TestFFIBasic___ynl.load(self.lib)
        self.erfl = TestFFIBasic_erfl.load(self.lib)
        self.erfl = TestFFIBasic_erfl.load(self.lib)
        self.__erfl = TestFFIBasic___erfl.load(self.lib)
        self.erfcl = TestFFIBasic_erfcl.load(self.lib)
        self.erfcl = TestFFIBasic_erfcl.load(self.lib)
        self.__erfcl = TestFFIBasic___erfcl.load(self.lib)
        self.lgammal = TestFFIBasic_lgammal.load(self.lib)
        self.lgammal = TestFFIBasic_lgammal.load(self.lib)
        self.__lgammal = TestFFIBasic___lgammal.load(self.lib)
        self.tgammal = TestFFIBasic_tgammal.load(self.lib)
        self.tgammal = TestFFIBasic_tgammal.load(self.lib)
        self.__tgammal = TestFFIBasic___tgammal.load(self.lib)
        self.gammal = TestFFIBasic_gammal.load(self.lib)
        self.__gammal = TestFFIBasic___gammal.load(self.lib)
        self.lgammal_r = TestFFIBasic_lgammal_r.load(self.lib)
        self.__lgammal_r = TestFFIBasic___lgammal_r.load(self.lib)
        self.rintl = TestFFIBasic_rintl.load(self.lib)
        self.rintl = TestFFIBasic_rintl.load(self.lib)
        self.__rintl = TestFFIBasic___rintl.load(self.lib)
        self.nextafterl = TestFFIBasic_nextafterl.load(self.lib)
        self.nextafterl = TestFFIBasic_nextafterl.load(self.lib)
        self.__nextafterl = TestFFIBasic___nextafterl.load(self.lib)
        self.nexttowardl = TestFFIBasic_nexttowardl.load(self.lib)
        self.nexttowardl = TestFFIBasic_nexttowardl.load(self.lib)
        self.__nexttowardl = TestFFIBasic___nexttowardl.load(self.lib)
        self.remainderl = TestFFIBasic_remainderl.load(self.lib)
        self.remainderl = TestFFIBasic_remainderl.load(self.lib)
        self.__remainderl = TestFFIBasic___remainderl.load(self.lib)
        self.scalbnl = TestFFIBasic_scalbnl.load(self.lib)
        self.scalbnl = TestFFIBasic_scalbnl.load(self.lib)
        self.__scalbnl = TestFFIBasic___scalbnl.load(self.lib)
        self.ilogbl = TestFFIBasic_ilogbl.load(self.lib)
        self.ilogbl = TestFFIBasic_ilogbl.load(self.lib)
        self.__ilogbl = TestFFIBasic___ilogbl.load(self.lib)
        self.scalblnl = TestFFIBasic_scalblnl.load(self.lib)
        self.scalblnl = TestFFIBasic_scalblnl.load(self.lib)
        self.__scalblnl = TestFFIBasic___scalblnl.load(self.lib)
        self.nearbyintl = TestFFIBasic_nearbyintl.load(self.lib)
        self.nearbyintl = TestFFIBasic_nearbyintl.load(self.lib)
        self.__nearbyintl = TestFFIBasic___nearbyintl.load(self.lib)
        self.roundl = TestFFIBasic_roundl.load(self.lib)
        self.roundl = TestFFIBasic_roundl.load(self.lib)
        self.__roundl = TestFFIBasic___roundl.load(self.lib)
        self.truncl = TestFFIBasic_truncl.load(self.lib)
        self.truncl = TestFFIBasic_truncl.load(self.lib)
        self.__truncl = TestFFIBasic___truncl.load(self.lib)
        self.remquol = TestFFIBasic_remquol.load(self.lib)
        self.remquol = TestFFIBasic_remquol.load(self.lib)
        self.__remquol = TestFFIBasic___remquol.load(self.lib)
        self.lrintl = TestFFIBasic_lrintl.load(self.lib)
        self.lrintl = TestFFIBasic_lrintl.load(self.lib)
        self.__lrintl = TestFFIBasic___lrintl.load(self.lib)
        self.llrintl = TestFFIBasic_llrintl.load(self.lib)
        self.llrintl = TestFFIBasic_llrintl.load(self.lib)
        self.__llrintl = TestFFIBasic___llrintl.load(self.lib)
        self.lroundl = TestFFIBasic_lroundl.load(self.lib)
        self.lroundl = TestFFIBasic_lroundl.load(self.lib)
        self.__lroundl = TestFFIBasic___lroundl.load(self.lib)
        self.llroundl = TestFFIBasic_llroundl.load(self.lib)
        self.llroundl = TestFFIBasic_llroundl.load(self.lib)
        self.__llroundl = TestFFIBasic___llroundl.load(self.lib)
        self.fdiml = TestFFIBasic_fdiml.load(self.lib)
        self.fdiml = TestFFIBasic_fdiml.load(self.lib)
        self.__fdiml = TestFFIBasic___fdiml.load(self.lib)
        self.fmaxl = TestFFIBasic_fmaxl.load(self.lib)
        self.fmaxl = TestFFIBasic_fmaxl.load(self.lib)
        self.__fmaxl = TestFFIBasic___fmaxl.load(self.lib)
        self.fminl = TestFFIBasic_fminl.load(self.lib)
        self.fminl = TestFFIBasic_fminl.load(self.lib)
        self.__fminl = TestFFIBasic___fminl.load(self.lib)
        self.fmal = TestFFIBasic_fmal.load(self.lib)
        self.fmal = TestFFIBasic_fmal.load(self.lib)
        self.__fmal = TestFFIBasic___fmal.load(self.lib)
        self.scalbl = TestFFIBasic_scalbl.load(self.lib)
        self.__scalbl = TestFFIBasic___scalbl.load(self.lib)
        self.mj_defaultVFS = TestFFIBasic_mj_defaultVFS.load(self.lib)
        self.mj_addFileVFS = TestFFIBasic_mj_addFileVFS.load(self.lib)
        self.mj_addBufferVFS = TestFFIBasic_mj_addBufferVFS.load(self.lib)
        self.mj_deleteFileVFS = TestFFIBasic_mj_deleteFileVFS.load(self.lib)
        self.mj_deleteVFS = TestFFIBasic_mj_deleteVFS.load(self.lib)
        self.mj_loadXML = TestFFIBasic_mj_loadXML.load(self.lib)
        self.mj_parseXML = TestFFIBasic_mj_parseXML.load(self.lib)
        self.mj_parseXMLString = TestFFIBasic_mj_parseXMLString.load(self.lib)
        self.mj_compile = TestFFIBasic_mj_compile.load(self.lib)
        self.mj_recompile = TestFFIBasic_mj_recompile.load(self.lib)
        self.mj_saveLastXML = TestFFIBasic_mj_saveLastXML.load(self.lib)
        self.mj_freeLastXML = TestFFIBasic_mj_freeLastXML.load(self.lib)
        self.mj_saveXMLString = TestFFIBasic_mj_saveXMLString.load(self.lib)
        self.mj_saveXML = TestFFIBasic_mj_saveXML.load(self.lib)
        self.mj_step = TestFFIBasic_mj_step.load(self.lib)
        self.mj_step1 = TestFFIBasic_mj_step1.load(self.lib)
        self.mj_step2 = TestFFIBasic_mj_step2.load(self.lib)
        self.mj_forward = TestFFIBasic_mj_forward.load(self.lib)
        self.mj_inverse = TestFFIBasic_mj_inverse.load(self.lib)
        self.mj_forwardSkip = TestFFIBasic_mj_forwardSkip.load(self.lib)
        self.mj_inverseSkip = TestFFIBasic_mj_inverseSkip.load(self.lib)
        self.mj_defaultLROpt = TestFFIBasic_mj_defaultLROpt.load(self.lib)
        self.mj_defaultSolRefImp = TestFFIBasic_mj_defaultSolRefImp.load(self.lib)
        self.mj_defaultOption = TestFFIBasic_mj_defaultOption.load(self.lib)
        self.mj_defaultVisual = TestFFIBasic_mj_defaultVisual.load(self.lib)
        self.mj_copyModel = TestFFIBasic_mj_copyModel.load(self.lib)
        self.mj_saveModel = TestFFIBasic_mj_saveModel.load(self.lib)
        self.mj_loadModel = TestFFIBasic_mj_loadModel.load(self.lib)
        self.mj_deleteModel = TestFFIBasic_mj_deleteModel.load(self.lib)
        self.mj_sizeModel = TestFFIBasic_mj_sizeModel.load(self.lib)
        self.mj_makeData = TestFFIBasic_mj_makeData.load(self.lib)
        self.mj_copyData = TestFFIBasic_mj_copyData.load(self.lib)
        self.mj_resetData = TestFFIBasic_mj_resetData.load(self.lib)
        self.mj_resetDataDebug = TestFFIBasic_mj_resetDataDebug.load(self.lib)
        self.mj_resetDataKeyframe = TestFFIBasic_mj_resetDataKeyframe.load(self.lib)
        self.mj_markStack = TestFFIBasic_mj_markStack.load(self.lib)
        self.mj_freeStack = TestFFIBasic_mj_freeStack.load(self.lib)
        self.mj_stackAllocByte = TestFFIBasic_mj_stackAllocByte.load(self.lib)
        self.mj_stackAllocNum = TestFFIBasic_mj_stackAllocNum.load(self.lib)
        self.mj_stackAllocInt = TestFFIBasic_mj_stackAllocInt.load(self.lib)
        self.mj_deleteData = TestFFIBasic_mj_deleteData.load(self.lib)
        self.mj_resetCallbacks = TestFFIBasic_mj_resetCallbacks.load(self.lib)
        self.mj_setConst = TestFFIBasic_mj_setConst.load(self.lib)
        self.mj_setLengthRange = TestFFIBasic_mj_setLengthRange.load(self.lib)
        self.mj_makeSpec = TestFFIBasic_mj_makeSpec.load(self.lib)
        self.mj_copySpec = TestFFIBasic_mj_copySpec.load(self.lib)
        self.mj_deleteSpec = TestFFIBasic_mj_deleteSpec.load(self.lib)
        self.mjs_activatePlugin = TestFFIBasic_mjs_activatePlugin.load(self.lib)
        self.mjs_setDeepCopy = TestFFIBasic_mjs_setDeepCopy.load(self.lib)
        self.mj_printFormattedModel = TestFFIBasic_mj_printFormattedModel.load(self.lib)
        self.mj_printModel = TestFFIBasic_mj_printModel.load(self.lib)
        self.mj_printFormattedData = TestFFIBasic_mj_printFormattedData.load(self.lib)
        self.mj_printData = TestFFIBasic_mj_printData.load(self.lib)
        self.mju_printMat = TestFFIBasic_mju_printMat.load(self.lib)
        self.mju_printMatSparse = TestFFIBasic_mju_printMatSparse.load(self.lib)
        self.mj_printSchema = TestFFIBasic_mj_printSchema.load(self.lib)
        self.mj_fwdPosition = TestFFIBasic_mj_fwdPosition.load(self.lib)
        self.mj_fwdVelocity = TestFFIBasic_mj_fwdVelocity.load(self.lib)
        self.mj_fwdActuation = TestFFIBasic_mj_fwdActuation.load(self.lib)
        self.mj_fwdAcceleration = TestFFIBasic_mj_fwdAcceleration.load(self.lib)
        self.mj_fwdConstraint = TestFFIBasic_mj_fwdConstraint.load(self.lib)
        self.mj_Euler = TestFFIBasic_mj_Euler.load(self.lib)
        self.mj_RungeKutta = TestFFIBasic_mj_RungeKutta.load(self.lib)
        self.mj_implicit = TestFFIBasic_mj_implicit.load(self.lib)
        self.mj_invPosition = TestFFIBasic_mj_invPosition.load(self.lib)
        self.mj_invVelocity = TestFFIBasic_mj_invVelocity.load(self.lib)
        self.mj_invConstraint = TestFFIBasic_mj_invConstraint.load(self.lib)
        self.mj_compareFwdInv = TestFFIBasic_mj_compareFwdInv.load(self.lib)
        self.mj_sensorPos = TestFFIBasic_mj_sensorPos.load(self.lib)
        self.mj_sensorVel = TestFFIBasic_mj_sensorVel.load(self.lib)
        self.mj_sensorAcc = TestFFIBasic_mj_sensorAcc.load(self.lib)
        self.mj_energyPos = TestFFIBasic_mj_energyPos.load(self.lib)
        self.mj_energyVel = TestFFIBasic_mj_energyVel.load(self.lib)
        self.mj_checkPos = TestFFIBasic_mj_checkPos.load(self.lib)
        self.mj_checkVel = TestFFIBasic_mj_checkVel.load(self.lib)
        self.mj_checkAcc = TestFFIBasic_mj_checkAcc.load(self.lib)
        self.mj_kinematics = TestFFIBasic_mj_kinematics.load(self.lib)
        self.mj_comPos = TestFFIBasic_mj_comPos.load(self.lib)
        self.mj_camlight = TestFFIBasic_mj_camlight.load(self.lib)
        self.mj_flex = TestFFIBasic_mj_flex.load(self.lib)
        self.mj_tendon = TestFFIBasic_mj_tendon.load(self.lib)
        self.mj_transmission = TestFFIBasic_mj_transmission.load(self.lib)
        self.mj_crb = TestFFIBasic_mj_crb.load(self.lib)
        self.mj_factorM = TestFFIBasic_mj_factorM.load(self.lib)
        self.mj_solveM = TestFFIBasic_mj_solveM.load(self.lib)
        self.mj_solveM2 = TestFFIBasic_mj_solveM2.load(self.lib)
        self.mj_comVel = TestFFIBasic_mj_comVel.load(self.lib)
        self.mj_passive = TestFFIBasic_mj_passive.load(self.lib)
        self.mj_subtreeVel = TestFFIBasic_mj_subtreeVel.load(self.lib)
        self.mj_rne = TestFFIBasic_mj_rne.load(self.lib)
        self.mj_rnePostConstraint = TestFFIBasic_mj_rnePostConstraint.load(self.lib)
        self.mj_collision = TestFFIBasic_mj_collision.load(self.lib)
        self.mj_makeConstraint = TestFFIBasic_mj_makeConstraint.load(self.lib)
        self.mj_island = TestFFIBasic_mj_island.load(self.lib)
        self.mj_projectConstraint = TestFFIBasic_mj_projectConstraint.load(self.lib)
        self.mj_referenceConstraint = TestFFIBasic_mj_referenceConstraint.load(self.lib)
        self.mj_constraintUpdate = TestFFIBasic_mj_constraintUpdate.load(self.lib)
        self.mj_stateSize = TestFFIBasic_mj_stateSize.load(self.lib)
        self.mj_getState = TestFFIBasic_mj_getState.load(self.lib)
        self.mj_setState = TestFFIBasic_mj_setState.load(self.lib)
        self.mj_setKeyframe = TestFFIBasic_mj_setKeyframe.load(self.lib)
        self.mj_addContact = TestFFIBasic_mj_addContact.load(self.lib)
        self.mj_isPyramidal = TestFFIBasic_mj_isPyramidal.load(self.lib)
        self.mj_isSparse = TestFFIBasic_mj_isSparse.load(self.lib)
        self.mj_isDual = TestFFIBasic_mj_isDual.load(self.lib)
        self.mj_mulJacVec = TestFFIBasic_mj_mulJacVec.load(self.lib)
        self.mj_mulJacTVec = TestFFIBasic_mj_mulJacTVec.load(self.lib)
        self.mj_jac = TestFFIBasic_mj_jac.load(self.lib)
        self.mj_jacBody = TestFFIBasic_mj_jacBody.load(self.lib)
        self.mj_jacBodyCom = TestFFIBasic_mj_jacBodyCom.load(self.lib)
        self.mj_jacSubtreeCom = TestFFIBasic_mj_jacSubtreeCom.load(self.lib)
        self.mj_jacGeom = TestFFIBasic_mj_jacGeom.load(self.lib)
        self.mj_jacSite = TestFFIBasic_mj_jacSite.load(self.lib)
        self.mj_jacPointAxis = TestFFIBasic_mj_jacPointAxis.load(self.lib)
        self.mj_jacDot = TestFFIBasic_mj_jacDot.load(self.lib)
        self.mj_angmomMat = TestFFIBasic_mj_angmomMat.load(self.lib)
        self.mj_name2id = TestFFIBasic_mj_name2id.load(self.lib)
        self.mj_id2name = TestFFIBasic_mj_id2name.load(self.lib)
        self.mj_fullM = TestFFIBasic_mj_fullM.load(self.lib)
        self.mj_mulM = TestFFIBasic_mj_mulM.load(self.lib)
        self.mj_mulM2 = TestFFIBasic_mj_mulM2.load(self.lib)
        self.mj_addM = TestFFIBasic_mj_addM.load(self.lib)
        self.mj_applyFT = TestFFIBasic_mj_applyFT.load(self.lib)
        self.mj_objectVelocity = TestFFIBasic_mj_objectVelocity.load(self.lib)
        self.mj_objectAcceleration = TestFFIBasic_mj_objectAcceleration.load(self.lib)
        self.mj_geomDistance = TestFFIBasic_mj_geomDistance.load(self.lib)
        self.mj_contactForce = TestFFIBasic_mj_contactForce.load(self.lib)
        self.mj_differentiatePos = TestFFIBasic_mj_differentiatePos.load(self.lib)
        self.mj_integratePos = TestFFIBasic_mj_integratePos.load(self.lib)
        self.mj_normalizeQuat = TestFFIBasic_mj_normalizeQuat.load(self.lib)
        self.mj_local2Global = TestFFIBasic_mj_local2Global.load(self.lib)
        self.mj_getTotalmass = TestFFIBasic_mj_getTotalmass.load(self.lib)
        self.mj_setTotalmass = TestFFIBasic_mj_setTotalmass.load(self.lib)
        self.mj_getPluginConfig = TestFFIBasic_mj_getPluginConfig.load(self.lib)
        self.mj_loadPluginLibrary = TestFFIBasic_mj_loadPluginLibrary.load(self.lib)
        self.mj_loadAllPluginLibraries = TestFFIBasic_mj_loadAllPluginLibraries.load(self.lib)
        self.mj_version = TestFFIBasic_mj_version.load(self.lib)
        self.mj_versionString = TestFFIBasic_mj_versionString.load(self.lib)
        self.mj_multiRay = TestFFIBasic_mj_multiRay.load(self.lib)
        self.mj_ray = TestFFIBasic_mj_ray.load(self.lib)
        self.mj_rayHfield = TestFFIBasic_mj_rayHfield.load(self.lib)
        self.mj_rayMesh = TestFFIBasic_mj_rayMesh.load(self.lib)
        self.mju_rayGeom = TestFFIBasic_mju_rayGeom.load(self.lib)
        self.mju_rayFlex = TestFFIBasic_mju_rayFlex.load(self.lib)
        self.mju_raySkin = TestFFIBasic_mju_raySkin.load(self.lib)
        self.mjv_defaultCamera = TestFFIBasic_mjv_defaultCamera.load(self.lib)
        self.mjv_defaultFreeCamera = TestFFIBasic_mjv_defaultFreeCamera.load(self.lib)
        self.mjv_defaultPerturb = TestFFIBasic_mjv_defaultPerturb.load(self.lib)
        self.mjv_room2model = TestFFIBasic_mjv_room2model.load(self.lib)
        self.mjv_model2room = TestFFIBasic_mjv_model2room.load(self.lib)
        self.mjv_cameraInModel = TestFFIBasic_mjv_cameraInModel.load(self.lib)
        self.mjv_cameraInRoom = TestFFIBasic_mjv_cameraInRoom.load(self.lib)
        self.mjv_frustumHeight = TestFFIBasic_mjv_frustumHeight.load(self.lib)
        self.mjv_alignToCamera = TestFFIBasic_mjv_alignToCamera.load(self.lib)
        self.mjv_moveCamera = TestFFIBasic_mjv_moveCamera.load(self.lib)
        self.mjv_moveCameraFromState = TestFFIBasic_mjv_moveCameraFromState.load(self.lib)
        self.mjv_movePerturb = TestFFIBasic_mjv_movePerturb.load(self.lib)
        self.mjv_movePerturbFromState = TestFFIBasic_mjv_movePerturbFromState.load(self.lib)
        self.mjv_moveModel = TestFFIBasic_mjv_moveModel.load(self.lib)
        self.mjv_initPerturb = TestFFIBasic_mjv_initPerturb.load(self.lib)
        self.mjv_applyPerturbPose = TestFFIBasic_mjv_applyPerturbPose.load(self.lib)
        self.mjv_applyPerturbForce = TestFFIBasic_mjv_applyPerturbForce.load(self.lib)
        self.mjv_averageCamera = TestFFIBasic_mjv_averageCamera.load(self.lib)
        self.mjv_select = TestFFIBasic_mjv_select.load(self.lib)
        self.mjv_defaultOption = TestFFIBasic_mjv_defaultOption.load(self.lib)
        self.mjv_defaultFigure = TestFFIBasic_mjv_defaultFigure.load(self.lib)
        self.mjv_initGeom = TestFFIBasic_mjv_initGeom.load(self.lib)
        self.mjv_connector = TestFFIBasic_mjv_connector.load(self.lib)
        self.mjv_defaultScene = TestFFIBasic_mjv_defaultScene.load(self.lib)
        self.mjv_makeScene = TestFFIBasic_mjv_makeScene.load(self.lib)
        self.mjv_freeScene = TestFFIBasic_mjv_freeScene.load(self.lib)
        self.mjv_updateScene = TestFFIBasic_mjv_updateScene.load(self.lib)
        self.mjv_updateSceneFromState = TestFFIBasic_mjv_updateSceneFromState.load(self.lib)
        self.mjv_copyModel = TestFFIBasic_mjv_copyModel.load(self.lib)
        self.mjv_defaultSceneState = TestFFIBasic_mjv_defaultSceneState.load(self.lib)
        self.mjv_makeSceneState = TestFFIBasic_mjv_makeSceneState.load(self.lib)
        self.mjv_freeSceneState = TestFFIBasic_mjv_freeSceneState.load(self.lib)
        self.mjv_updateSceneState = TestFFIBasic_mjv_updateSceneState.load(self.lib)
        self.mjv_addGeoms = TestFFIBasic_mjv_addGeoms.load(self.lib)
        self.mjv_makeLights = TestFFIBasic_mjv_makeLights.load(self.lib)
        self.mjv_updateCamera = TestFFIBasic_mjv_updateCamera.load(self.lib)
        self.mjv_updateSkin = TestFFIBasic_mjv_updateSkin.load(self.lib)
        self.mjr_defaultContext = TestFFIBasic_mjr_defaultContext.load(self.lib)
        self.mjr_makeContext = TestFFIBasic_mjr_makeContext.load(self.lib)
        self.mjr_changeFont = TestFFIBasic_mjr_changeFont.load(self.lib)
        self.mjr_addAux = TestFFIBasic_mjr_addAux.load(self.lib)
        self.mjr_freeContext = TestFFIBasic_mjr_freeContext.load(self.lib)
        self.mjr_resizeOffscreen = TestFFIBasic_mjr_resizeOffscreen.load(self.lib)
        self.mjr_uploadTexture = TestFFIBasic_mjr_uploadTexture.load(self.lib)
        self.mjr_uploadMesh = TestFFIBasic_mjr_uploadMesh.load(self.lib)
        self.mjr_uploadHField = TestFFIBasic_mjr_uploadHField.load(self.lib)
        self.mjr_restoreBuffer = TestFFIBasic_mjr_restoreBuffer.load(self.lib)
        self.mjr_setBuffer = TestFFIBasic_mjr_setBuffer.load(self.lib)
        self.mjr_readPixels = TestFFIBasic_mjr_readPixels.load(self.lib)
        self.mjr_drawPixels = TestFFIBasic_mjr_drawPixels.load(self.lib)
        self.mjr_blitBuffer = TestFFIBasic_mjr_blitBuffer.load(self.lib)
        self.mjr_setAux = TestFFIBasic_mjr_setAux.load(self.lib)
        self.mjr_blitAux = TestFFIBasic_mjr_blitAux.load(self.lib)
        self.mjr_text = TestFFIBasic_mjr_text.load(self.lib)
        self.mjr_overlay = TestFFIBasic_mjr_overlay.load(self.lib)
        self.mjr_maxViewport = TestFFIBasic_mjr_maxViewport.load(self.lib)
        self.mjr_rectangle = TestFFIBasic_mjr_rectangle.load(self.lib)
        self.mjr_label = TestFFIBasic_mjr_label.load(self.lib)
        self.mjr_figure = TestFFIBasic_mjr_figure.load(self.lib)
        self.mjr_render = TestFFIBasic_mjr_render.load(self.lib)
        self.mjr_finish = TestFFIBasic_mjr_finish.load(self.lib)
        self.mjr_getError = TestFFIBasic_mjr_getError.load(self.lib)
        self.mjr_findRect = TestFFIBasic_mjr_findRect.load(self.lib)
        self.mjui_themeSpacing = TestFFIBasic_mjui_themeSpacing.load(self.lib)
        self.mjui_themeColor = TestFFIBasic_mjui_themeColor.load(self.lib)
        self.mjui_add = TestFFIBasic_mjui_add.load(self.lib)
        self.mjui_addToSection = TestFFIBasic_mjui_addToSection.load(self.lib)
        self.mjui_resize = TestFFIBasic_mjui_resize.load(self.lib)
        self.mjui_update = TestFFIBasic_mjui_update.load(self.lib)
        self.mjui_event = TestFFIBasic_mjui_event.load(self.lib)
        self.mjui_render = TestFFIBasic_mjui_render.load(self.lib)
        self.mju_error = TestFFIBasic_mju_error.load(self.lib)
        self.mju_error_i = TestFFIBasic_mju_error_i.load(self.lib)
        self.mju_error_s = TestFFIBasic_mju_error_s.load(self.lib)
        self.mju_warning = TestFFIBasic_mju_warning.load(self.lib)
        self.mju_warning_i = TestFFIBasic_mju_warning_i.load(self.lib)
        self.mju_warning_s = TestFFIBasic_mju_warning_s.load(self.lib)
        self.mju_clearHandlers = TestFFIBasic_mju_clearHandlers.load(self.lib)
        self.mju_malloc = TestFFIBasic_mju_malloc.load(self.lib)
        self.mju_free = TestFFIBasic_mju_free.load(self.lib)
        self.mj_warning = TestFFIBasic_mj_warning.load(self.lib)
        self.mju_writeLog = TestFFIBasic_mju_writeLog.load(self.lib)
        self.mjs_getError = TestFFIBasic_mjs_getError.load(self.lib)
        self.mjs_isWarning = TestFFIBasic_mjs_isWarning.load(self.lib)
        self.mju_zero3 = TestFFIBasic_mju_zero3.load(self.lib)
        self.mju_copy3 = TestFFIBasic_mju_copy3.load(self.lib)
        self.mju_scl3 = TestFFIBasic_mju_scl3.load(self.lib)
        self.mju_add3 = TestFFIBasic_mju_add3.load(self.lib)
        self.mju_sub3 = TestFFIBasic_mju_sub3.load(self.lib)
        self.mju_addTo3 = TestFFIBasic_mju_addTo3.load(self.lib)
        self.mju_subFrom3 = TestFFIBasic_mju_subFrom3.load(self.lib)
        self.mju_addToScl3 = TestFFIBasic_mju_addToScl3.load(self.lib)
        self.mju_addScl3 = TestFFIBasic_mju_addScl3.load(self.lib)
        self.mju_normalize3 = TestFFIBasic_mju_normalize3.load(self.lib)
        self.mju_norm3 = TestFFIBasic_mju_norm3.load(self.lib)
        self.mju_dot3 = TestFFIBasic_mju_dot3.load(self.lib)
        self.mju_dist3 = TestFFIBasic_mju_dist3.load(self.lib)
        self.mju_mulMatVec3 = TestFFIBasic_mju_mulMatVec3.load(self.lib)
        self.mju_mulMatTVec3 = TestFFIBasic_mju_mulMatTVec3.load(self.lib)
        self.mju_cross = TestFFIBasic_mju_cross.load(self.lib)
        self.mju_zero4 = TestFFIBasic_mju_zero4.load(self.lib)
        self.mju_unit4 = TestFFIBasic_mju_unit4.load(self.lib)
        self.mju_copy4 = TestFFIBasic_mju_copy4.load(self.lib)
        self.mju_normalize4 = TestFFIBasic_mju_normalize4.load(self.lib)
        self.mju_zero = TestFFIBasic_mju_zero.load(self.lib)
        self.mju_fill = TestFFIBasic_mju_fill.load(self.lib)
        self.mju_copy = TestFFIBasic_mju_copy.load(self.lib)
        self.mju_sum = TestFFIBasic_mju_sum.load(self.lib)
        self.mju_L1 = TestFFIBasic_mju_L1.load(self.lib)
        self.mju_scl = TestFFIBasic_mju_scl.load(self.lib)
        self.mju_add = TestFFIBasic_mju_add.load(self.lib)
        self.mju_sub = TestFFIBasic_mju_sub.load(self.lib)
        self.mju_addTo = TestFFIBasic_mju_addTo.load(self.lib)
        self.mju_subFrom = TestFFIBasic_mju_subFrom.load(self.lib)
        self.mju_addToScl = TestFFIBasic_mju_addToScl.load(self.lib)
        self.mju_addScl = TestFFIBasic_mju_addScl.load(self.lib)
        self.mju_normalize = TestFFIBasic_mju_normalize.load(self.lib)
        self.mju_norm = TestFFIBasic_mju_norm.load(self.lib)
        self.mju_dot = TestFFIBasic_mju_dot.load(self.lib)
        self.mju_mulMatVec = TestFFIBasic_mju_mulMatVec.load(self.lib)
        self.mju_mulMatTVec = TestFFIBasic_mju_mulMatTVec.load(self.lib)
        self.mju_mulVecMatVec = TestFFIBasic_mju_mulVecMatVec.load(self.lib)
        self.mju_transpose = TestFFIBasic_mju_transpose.load(self.lib)
        self.mju_symmetrize = TestFFIBasic_mju_symmetrize.load(self.lib)
        self.mju_eye = TestFFIBasic_mju_eye.load(self.lib)
        self.mju_mulMatMat = TestFFIBasic_mju_mulMatMat.load(self.lib)
        self.mju_mulMatMatT = TestFFIBasic_mju_mulMatMatT.load(self.lib)
        self.mju_mulMatTMat = TestFFIBasic_mju_mulMatTMat.load(self.lib)
        self.mju_sqrMatTD = TestFFIBasic_mju_sqrMatTD.load(self.lib)
        self.mju_transformSpatial = TestFFIBasic_mju_transformSpatial.load(self.lib)
        self.mju_dense2sparse = TestFFIBasic_mju_dense2sparse.load(self.lib)
        self.mju_sparse2dense = TestFFIBasic_mju_sparse2dense.load(self.lib)
        self.mju_rotVecQuat = TestFFIBasic_mju_rotVecQuat.load(self.lib)
        self.mju_negQuat = TestFFIBasic_mju_negQuat.load(self.lib)
        self.mju_mulQuat = TestFFIBasic_mju_mulQuat.load(self.lib)
        self.mju_mulQuatAxis = TestFFIBasic_mju_mulQuatAxis.load(self.lib)
        self.mju_axisAngle2Quat = TestFFIBasic_mju_axisAngle2Quat.load(self.lib)
        self.mju_quat2Vel = TestFFIBasic_mju_quat2Vel.load(self.lib)
        self.mju_subQuat = TestFFIBasic_mju_subQuat.load(self.lib)
        self.mju_quat2Mat = TestFFIBasic_mju_quat2Mat.load(self.lib)
        self.mju_mat2Quat = TestFFIBasic_mju_mat2Quat.load(self.lib)
        self.mju_derivQuat = TestFFIBasic_mju_derivQuat.load(self.lib)
        self.mju_quatIntegrate = TestFFIBasic_mju_quatIntegrate.load(self.lib)
        self.mju_quatZ2Vec = TestFFIBasic_mju_quatZ2Vec.load(self.lib)
        self.mju_mat2Rot = TestFFIBasic_mju_mat2Rot.load(self.lib)
        self.mju_euler2Quat = TestFFIBasic_mju_euler2Quat.load(self.lib)
        self.mju_mulPose = TestFFIBasic_mju_mulPose.load(self.lib)
        self.mju_negPose = TestFFIBasic_mju_negPose.load(self.lib)
        self.mju_trnVecPose = TestFFIBasic_mju_trnVecPose.load(self.lib)
        self.mju_cholFactor = TestFFIBasic_mju_cholFactor.load(self.lib)
        self.mju_cholSolve = TestFFIBasic_mju_cholSolve.load(self.lib)
        self.mju_cholUpdate = TestFFIBasic_mju_cholUpdate.load(self.lib)
        self.mju_cholFactorBand = TestFFIBasic_mju_cholFactorBand.load(self.lib)
        self.mju_cholSolveBand = TestFFIBasic_mju_cholSolveBand.load(self.lib)
        self.mju_band2Dense = TestFFIBasic_mju_band2Dense.load(self.lib)
        self.mju_dense2Band = TestFFIBasic_mju_dense2Band.load(self.lib)
        self.mju_bandMulMatVec = TestFFIBasic_mju_bandMulMatVec.load(self.lib)
        self.mju_bandDiag = TestFFIBasic_mju_bandDiag.load(self.lib)
        self.mju_eig3 = TestFFIBasic_mju_eig3.load(self.lib)
        self.mju_boxQP = TestFFIBasic_mju_boxQP.load(self.lib)
        self.mju_boxQPmalloc = TestFFIBasic_mju_boxQPmalloc.load(self.lib)
        self.mju_muscleGain = TestFFIBasic_mju_muscleGain.load(self.lib)
        self.mju_muscleBias = TestFFIBasic_mju_muscleBias.load(self.lib)
        self.mju_muscleDynamics = TestFFIBasic_mju_muscleDynamics.load(self.lib)
        self.mju_encodePyramid = TestFFIBasic_mju_encodePyramid.load(self.lib)
        self.mju_decodePyramid = TestFFIBasic_mju_decodePyramid.load(self.lib)
        self.mju_springDamper = TestFFIBasic_mju_springDamper.load(self.lib)
        self.mju_min = TestFFIBasic_mju_min.load(self.lib)
        self.mju_max = TestFFIBasic_mju_max.load(self.lib)
        self.mju_clip = TestFFIBasic_mju_clip.load(self.lib)
        self.mju_sign = TestFFIBasic_mju_sign.load(self.lib)
        self.mju_round = TestFFIBasic_mju_round.load(self.lib)
        self.mju_type2Str = TestFFIBasic_mju_type2Str.load(self.lib)
        self.mju_str2Type = TestFFIBasic_mju_str2Type.load(self.lib)
        self.mju_writeNumBytes = TestFFIBasic_mju_writeNumBytes.load(self.lib)
        self.mju_warningText = TestFFIBasic_mju_warningText.load(self.lib)
        self.mju_isBad = TestFFIBasic_mju_isBad.load(self.lib)
        self.mju_isZero = TestFFIBasic_mju_isZero.load(self.lib)
        self.mju_standardNormal = TestFFIBasic_mju_standardNormal.load(self.lib)
        self.mju_f2n = TestFFIBasic_mju_f2n.load(self.lib)
        self.mju_n2f = TestFFIBasic_mju_n2f.load(self.lib)
        self.mju_d2n = TestFFIBasic_mju_d2n.load(self.lib)
        self.mju_n2d = TestFFIBasic_mju_n2d.load(self.lib)
        self.mju_insertionSort = TestFFIBasic_mju_insertionSort.load(self.lib)
        self.mju_insertionSortInt = TestFFIBasic_mju_insertionSortInt.load(self.lib)
        self.mju_Halton = TestFFIBasic_mju_Halton.load(self.lib)
        self.mju_strncpy = TestFFIBasic_mju_strncpy.load(self.lib)
        self.mju_sigmoid = TestFFIBasic_mju_sigmoid.load(self.lib)
        self.mjd_transitionFD = TestFFIBasic_mjd_transitionFD.load(self.lib)
        self.mjd_inverseFD = TestFFIBasic_mjd_inverseFD.load(self.lib)
        self.mjd_subQuat = TestFFIBasic_mjd_subQuat.load(self.lib)
        self.mjd_quatIntegrate = TestFFIBasic_mjd_quatIntegrate.load(self.lib)
        self.mjp_defaultPlugin = TestFFIBasic_mjp_defaultPlugin.load(self.lib)
        self.mjp_registerPlugin = TestFFIBasic_mjp_registerPlugin.load(self.lib)
        self.mjp_pluginCount = TestFFIBasic_mjp_pluginCount.load(self.lib)
        self.mjp_getPlugin = TestFFIBasic_mjp_getPlugin.load(self.lib)
        self.mjp_getPluginAtSlot = TestFFIBasic_mjp_getPluginAtSlot.load(self.lib)
        self.mjp_defaultResourceProvider = TestFFIBasic_mjp_defaultResourceProvider.load(self.lib)
        self.mjp_registerResourceProvider = TestFFIBasic_mjp_registerResourceProvider.load(self.lib)
        self.mjp_resourceProviderCount = TestFFIBasic_mjp_resourceProviderCount.load(self.lib)
        self.mjp_getResourceProvider = TestFFIBasic_mjp_getResourceProvider.load(self.lib)
        self.mjp_getResourceProviderAtSlot = TestFFIBasic_mjp_getResourceProviderAtSlot.load(self.lib)
        self.mju_threadPoolCreate = TestFFIBasic_mju_threadPoolCreate.load(self.lib)
        self.mju_bindThreadPool = TestFFIBasic_mju_bindThreadPool.load(self.lib)
        self.mju_threadPoolEnqueue = TestFFIBasic_mju_threadPoolEnqueue.load(self.lib)
        self.mju_threadPoolDestroy = TestFFIBasic_mju_threadPoolDestroy.load(self.lib)
        self.mju_defaultTask = TestFFIBasic_mju_defaultTask.load(self.lib)
        self.mju_taskJoin = TestFFIBasic_mju_taskJoin.load(self.lib)
        self.mjs_attach = TestFFIBasic_mjs_attach.load(self.lib)
        self.mjs_detachBody = TestFFIBasic_mjs_detachBody.load(self.lib)
        self.mjs_detachDefault = TestFFIBasic_mjs_detachDefault.load(self.lib)
        self.mjs_addBody = TestFFIBasic_mjs_addBody.load(self.lib)
        self.mjs_addSite = TestFFIBasic_mjs_addSite.load(self.lib)
        self.mjs_addJoint = TestFFIBasic_mjs_addJoint.load(self.lib)
        self.mjs_addFreeJoint = TestFFIBasic_mjs_addFreeJoint.load(self.lib)
        self.mjs_addGeom = TestFFIBasic_mjs_addGeom.load(self.lib)
        self.mjs_addCamera = TestFFIBasic_mjs_addCamera.load(self.lib)
        self.mjs_addLight = TestFFIBasic_mjs_addLight.load(self.lib)
        self.mjs_addFrame = TestFFIBasic_mjs_addFrame.load(self.lib)
        self.mjs_delete = TestFFIBasic_mjs_delete.load(self.lib)
        self.mjs_addActuator = TestFFIBasic_mjs_addActuator.load(self.lib)
        self.mjs_addSensor = TestFFIBasic_mjs_addSensor.load(self.lib)
        self.mjs_addFlex = TestFFIBasic_mjs_addFlex.load(self.lib)
        self.mjs_addPair = TestFFIBasic_mjs_addPair.load(self.lib)
        self.mjs_addExclude = TestFFIBasic_mjs_addExclude.load(self.lib)
        self.mjs_addEquality = TestFFIBasic_mjs_addEquality.load(self.lib)
        self.mjs_addTendon = TestFFIBasic_mjs_addTendon.load(self.lib)
        self.mjs_wrapSite = TestFFIBasic_mjs_wrapSite.load(self.lib)
        self.mjs_wrapGeom = TestFFIBasic_mjs_wrapGeom.load(self.lib)
        self.mjs_wrapJoint = TestFFIBasic_mjs_wrapJoint.load(self.lib)
        self.mjs_wrapPulley = TestFFIBasic_mjs_wrapPulley.load(self.lib)
        self.mjs_addNumeric = TestFFIBasic_mjs_addNumeric.load(self.lib)
        self.mjs_addText = TestFFIBasic_mjs_addText.load(self.lib)
        self.mjs_addTuple = TestFFIBasic_mjs_addTuple.load(self.lib)
        self.mjs_addKey = TestFFIBasic_mjs_addKey.load(self.lib)
        self.mjs_addPlugin = TestFFIBasic_mjs_addPlugin.load(self.lib)
        self.mjs_addDefault = TestFFIBasic_mjs_addDefault.load(self.lib)
        self.mjs_addMesh = TestFFIBasic_mjs_addMesh.load(self.lib)
        self.mjs_addHField = TestFFIBasic_mjs_addHField.load(self.lib)
        self.mjs_addSkin = TestFFIBasic_mjs_addSkin.load(self.lib)
        self.mjs_addTexture = TestFFIBasic_mjs_addTexture.load(self.lib)
        self.mjs_addMaterial = TestFFIBasic_mjs_addMaterial.load(self.lib)
        self.mjs_getSpec = TestFFIBasic_mjs_getSpec.load(self.lib)
        self.mjs_findSpec = TestFFIBasic_mjs_findSpec.load(self.lib)
        self.mjs_findBody = TestFFIBasic_mjs_findBody.load(self.lib)
        self.mjs_findElement = TestFFIBasic_mjs_findElement.load(self.lib)
        self.mjs_findChild = TestFFIBasic_mjs_findChild.load(self.lib)
        self.mjs_getParent = TestFFIBasic_mjs_getParent.load(self.lib)
        self.mjs_getFrame = TestFFIBasic_mjs_getFrame.load(self.lib)
        self.mjs_findFrame = TestFFIBasic_mjs_findFrame.load(self.lib)
        self.mjs_getDefault = TestFFIBasic_mjs_getDefault.load(self.lib)
        self.mjs_findDefault = TestFFIBasic_mjs_findDefault.load(self.lib)
        self.mjs_getSpecDefault = TestFFIBasic_mjs_getSpecDefault.load(self.lib)
        self.mjs_getId = TestFFIBasic_mjs_getId.load(self.lib)
        self.mjs_firstChild = TestFFIBasic_mjs_firstChild.load(self.lib)
        self.mjs_nextChild = TestFFIBasic_mjs_nextChild.load(self.lib)
        self.mjs_firstElement = TestFFIBasic_mjs_firstElement.load(self.lib)
        self.mjs_nextElement = TestFFIBasic_mjs_nextElement.load(self.lib)
        self.mjs_setBuffer = TestFFIBasic_mjs_setBuffer.load(self.lib)
        self.mjs_setString = TestFFIBasic_mjs_setString.load(self.lib)
        self.mjs_setStringVec = TestFFIBasic_mjs_setStringVec.load(self.lib)
        self.mjs_setInStringVec = TestFFIBasic_mjs_setInStringVec.load(self.lib)
        self.mjs_appendString = TestFFIBasic_mjs_appendString.load(self.lib)
        self.mjs_setInt = TestFFIBasic_mjs_setInt.load(self.lib)
        self.mjs_appendIntVec = TestFFIBasic_mjs_appendIntVec.load(self.lib)
        self.mjs_setFloat = TestFFIBasic_mjs_setFloat.load(self.lib)
        self.mjs_appendFloatVec = TestFFIBasic_mjs_appendFloatVec.load(self.lib)
        self.mjs_setDouble = TestFFIBasic_mjs_setDouble.load(self.lib)
        self.mjs_setPluginAttributes = TestFFIBasic_mjs_setPluginAttributes.load(self.lib)
        self.mjs_getString = TestFFIBasic_mjs_getString.load(self.lib)
        self.mjs_getDouble = TestFFIBasic_mjs_getDouble.load(self.lib)
        self.mjs_setDefault = TestFFIBasic_mjs_setDefault.load(self.lib)
        self.mjs_setFrame = TestFFIBasic_mjs_setFrame.load(self.lib)
        self.mjs_resolveOrientation = TestFFIBasic_mjs_resolveOrientation.load(self.lib)
        self.mjs_bodyToFrame = TestFFIBasic_mjs_bodyToFrame.load(self.lib)
        self.mjs_setUserValue = TestFFIBasic_mjs_setUserValue.load(self.lib)
        self.mjs_getUserValue = TestFFIBasic_mjs_getUserValue.load(self.lib)
        self.mjs_deleteUserValue = TestFFIBasic_mjs_deleteUserValue.load(self.lib)
        self.mjs_defaultSpec = TestFFIBasic_mjs_defaultSpec.load(self.lib)
        self.mjs_defaultOrientation = TestFFIBasic_mjs_defaultOrientation.load(self.lib)
        self.mjs_defaultBody = TestFFIBasic_mjs_defaultBody.load(self.lib)
        self.mjs_defaultFrame = TestFFIBasic_mjs_defaultFrame.load(self.lib)
        self.mjs_defaultJoint = TestFFIBasic_mjs_defaultJoint.load(self.lib)
        self.mjs_defaultGeom = TestFFIBasic_mjs_defaultGeom.load(self.lib)
        self.mjs_defaultSite = TestFFIBasic_mjs_defaultSite.load(self.lib)
        self.mjs_defaultCamera = TestFFIBasic_mjs_defaultCamera.load(self.lib)
        self.mjs_defaultLight = TestFFIBasic_mjs_defaultLight.load(self.lib)
        self.mjs_defaultFlex = TestFFIBasic_mjs_defaultFlex.load(self.lib)
        self.mjs_defaultMesh = TestFFIBasic_mjs_defaultMesh.load(self.lib)
        self.mjs_defaultHField = TestFFIBasic_mjs_defaultHField.load(self.lib)
        self.mjs_defaultSkin = TestFFIBasic_mjs_defaultSkin.load(self.lib)
        self.mjs_defaultTexture = TestFFIBasic_mjs_defaultTexture.load(self.lib)
        self.mjs_defaultMaterial = TestFFIBasic_mjs_defaultMaterial.load(self.lib)
        self.mjs_defaultPair = TestFFIBasic_mjs_defaultPair.load(self.lib)
        self.mjs_defaultEquality = TestFFIBasic_mjs_defaultEquality.load(self.lib)
        self.mjs_defaultTendon = TestFFIBasic_mjs_defaultTendon.load(self.lib)
        self.mjs_defaultActuator = TestFFIBasic_mjs_defaultActuator.load(self.lib)
        self.mjs_defaultSensor = TestFFIBasic_mjs_defaultSensor.load(self.lib)
        self.mjs_defaultNumeric = TestFFIBasic_mjs_defaultNumeric.load(self.lib)
        self.mjs_defaultText = TestFFIBasic_mjs_defaultText.load(self.lib)
        self.mjs_defaultTuple = TestFFIBasic_mjs_defaultTuple.load(self.lib)
        self.mjs_defaultKey = TestFFIBasic_mjs_defaultKey.load(self.lib)
        self.mjs_defaultPlugin = TestFFIBasic_mjs_defaultPlugin.load(self.lib)
        self.mjs_asBody = TestFFIBasic_mjs_asBody.load(self.lib)
        self.mjs_asGeom = TestFFIBasic_mjs_asGeom.load(self.lib)
        self.mjs_asJoint = TestFFIBasic_mjs_asJoint.load(self.lib)
        self.mjs_asSite = TestFFIBasic_mjs_asSite.load(self.lib)
        self.mjs_asCamera = TestFFIBasic_mjs_asCamera.load(self.lib)
        self.mjs_asLight = TestFFIBasic_mjs_asLight.load(self.lib)
        self.mjs_asFrame = TestFFIBasic_mjs_asFrame.load(self.lib)
        self.mjs_asActuator = TestFFIBasic_mjs_asActuator.load(self.lib)
        self.mjs_asSensor = TestFFIBasic_mjs_asSensor.load(self.lib)
        self.mjs_asFlex = TestFFIBasic_mjs_asFlex.load(self.lib)
        self.mjs_asPair = TestFFIBasic_mjs_asPair.load(self.lib)
        self.mjs_asEquality = TestFFIBasic_mjs_asEquality.load(self.lib)
        self.mjs_asExclude = TestFFIBasic_mjs_asExclude.load(self.lib)
        self.mjs_asTendon = TestFFIBasic_mjs_asTendon.load(self.lib)
        self.mjs_asNumeric = TestFFIBasic_mjs_asNumeric.load(self.lib)
        self.mjs_asText = TestFFIBasic_mjs_asText.load(self.lib)
        self.mjs_asTuple = TestFFIBasic_mjs_asTuple.load(self.lib)
        self.mjs_asKey = TestFFIBasic_mjs_asKey.load(self.lib)
        self.mjs_asMesh = TestFFIBasic_mjs_asMesh.load(self.lib)
        self.mjs_asHField = TestFFIBasic_mjs_asHField.load(self.lib)
        self.mjs_asSkin = TestFFIBasic_mjs_asSkin.load(self.lib)
        self.mjs_asTexture = TestFFIBasic_mjs_asTexture.load(self.lib)
        self.mjs_asMaterial = TestFFIBasic_mjs_asMaterial.load(self.lib)
        self.mjs_asPlugin = TestFFIBasic_mjs_asPlugin.load(self.lib)

