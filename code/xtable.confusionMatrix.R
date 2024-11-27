#' xtable method for confusionMatrix objects
#' @param x object of class 'confusionMatrix' as produced by the
#' \code{confusionMatrix}
#' @param caption LaTeX caption, see the \code{xtable} help page
#' @param label LaTeX label, see the \code{xtable} help page
#' @param align alignment specification, see the \code{xtable} help page
#' @param digits number of digits to display, see the \code{xtable} help page
#' @param display format of the columns, see the \code{xtable} help page
#' @param \dots additional arguments to be passed to \code{xtable}
#' @return LaTeX table representing the confusion matrix
#' @author Willem Talloen and Tobias Verbeke
#' @seealso \code{\link{confusionMatrix}}, \code{\link[xtable]{xtable}}
#' @keywords manip
#' @importFrom xtable xtable
#' @S3method xtable confusionMatrix
#' @export

xtable.confusionMatrix <- function(x,
                                   caption = NULL,
                                   label = NULL,
                                   align = NULL,
                                   digits = NULL,
                                   display = NULL,
                                   ...)
{
    tech <- attr(x, "tech")
    nFeaturesOptim <- attr(x, "nFeaturesOptim")

    mat <- x[1:2, 1:2] # assumes two-class problems

    dimnames(mat) <- list(observed = paste("observed", attr(x, "row.vars")[[1]]),
                          predicted = paste("predicted", attr(x, "col.vars")[[1]]))
    
    if(is.null(caption)) caption <- paste("Confusion matrix for classifier: ", tech,
                                          "; Optimal number of features: ", nFeaturesOptim, sep = "")
    xtable(mat, caption = caption, label = label, align = align,
           digits = digits, display = display, ...)
}

