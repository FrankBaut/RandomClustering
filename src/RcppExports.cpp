// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// label_cpp
IntegerMatrix label_cpp(IntegerMatrix mat, IntegerMatrix nbmask, bool wrap);
RcppExport SEXP _RandomClustering_label_cpp(SEXP matSEXP, SEXP nbmaskSEXP, SEXP wrapSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< IntegerMatrix >::type mat(matSEXP);
    Rcpp::traits::input_parameter< IntegerMatrix >::type nbmask(nbmaskSEXP);
    Rcpp::traits::input_parameter< bool >::type wrap(wrapSEXP);
    rcpp_result_gen = Rcpp::wrap(label_cpp(mat, nbmask, wrap));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_RandomClustering_label_cpp", (DL_FUNC) &_RandomClustering_label_cpp, 3},
    {NULL, NULL, 0}
};

RcppExport void R_init_RandomClustering(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
