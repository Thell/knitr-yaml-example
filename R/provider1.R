#' Provide a chunk hook for knitr to be executed by run_hooks.
#'
#' @param before
#' @param options
#' @param envir
#' @export
providedHook1 <- function(before, options, envir) {
  if ( before ) {
    sprintf( "providedHook1 is triggering!  \n" )
  }
}

#' Provide a chunk hook for knitr to be executed by run_hooks.
#'
#' @param before
#' @param options
#' @param envir
#' @export
providedHook2 <- function(before, options, envir) {
  if ( before ) {
    sprintf( "providedHook2 is triggering!  \n" )
  }
}
