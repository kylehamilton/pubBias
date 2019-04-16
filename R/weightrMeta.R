#' weightr
#'
#' `weightrMeta()` Connects the weightr package to the Metaverse.
#'
#' @param meta a meta-analysis object (e.g. `rma.uni`)
#'
#' @return a data frame with infomation passed from weightr containing the meta-analysis
#' @import weightr
#' @export
#' @examples
#' \dontrun{
#' library(metafor)
#' library(broom)
#' ma_model_molloy2014 <- metafor::dat.molloy2014
#'
#'
#' ma <- ma_model_molloy2014 %>%
#'  escalc(
#'    measure = "ZCOR",
#'    ni = ni,
#'    ri = ri,
#'    data = .) %>%
#'  group_by(design) %>%
#'  meta_analysis(yi = yi, vi = vi, slab = authors, exponentiate = TRUE)
#'
#' weightrMeta(ma)
#' }
weightrMeta <- function(meta) {
  weightrMeta_yi <- meta$estimate
  weightrMeta_vi <- meta$std.error
  weightfunct(weightrMeta_yi,weightrMeta_vi)
}

