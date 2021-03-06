#' Create a Tree-based Model
#'
#' Create either a classification or regression tree model.
#'
#' @param x Formula. An expression of the form \code{y ~ x | z} where \code{x}
#'   is the variable we want on the x-axis, \code{y} is the variable we want on
#'   the y-axis and \code{z} is an optional variable we would like to use for
#'   faceting.
#' @param data Data frame. The data where the variables can be found.
#' @param cp Number. Stands for \emph{complexity parameter}, which determins how
#'   simple or complex to build the model. Default value is 0.01. Smaller values
#'   result in more complex models.
#' @param minsplit Integer. The minimum number of data points that need to be
#'   categorized into a node before the algorithm decides to split the node into
#'   a pair of branches.
#'
#'
#' @examples
#' m1 <- tree(survived ~ age + embarked + class, data = titanic)
#' treeplot(m1)
#'
#' # For a more complex model
#' m2 <- tree(survived ~ age + embarked + class, data = titanic, cp = 0.001, minsplit = 5)
#' treeplot(m2)
#'
#' @importFrom rpart rpart
#' @export

tree <- function(x, data, cp = 0.01, minsplit = 20, ...) {
  rpart(formula = x, data = data, cp = cp, minsplit = minsplit, ...)
}
