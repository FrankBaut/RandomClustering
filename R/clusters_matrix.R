#' clusters_matrix
#'
#' @param ncell
#' @param prob_vector
#'
#' @return
#' @export
#'
#' @examples
clusters_matrix <- function(ncell=10,prob = 0.5) {
  rbinom(n = ncell^2, size = 1, prob = prob) %>%
    as.logical(.) %>%
    matrix(data = ., nrow = ncell, ncol = ncell) %>%
    RandomClustering::label(.)
}
