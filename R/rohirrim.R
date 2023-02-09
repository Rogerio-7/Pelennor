#' Calculation of Over-prediction rate, Under-prediction rate, Potential Presence Increment, and Potential Aabsence Increment
#'
#' This function calculates the OPR, UPR, PPI, and PAI values from the confMatrix function of the SDMtune package.
#'
#' @param confMatrix An object of class data.frame created by the confMatrix function from the SDMtune package.
#'
#' @return A data.frame with the OPR, UPR, PPI, and PAI values.
#'
#' @export

rohirrim <- function(obj) {
  tp <- obj$tp
  fp <- obj$fp
  fn <- obj$fn
  tn <- obj$tn

  OPR <- fp/(tp + fp)
  UPR <- fn/(fn + tn)
  PPI <- (tp + fp)/(tp + fn) - 1
  PAI <- (fn + tn)/(fp + tn) - 1

  data.frame(OPR = OPR,
             UPR = UPR,
             PPI = PPI,
             PAI = PAI)
}
