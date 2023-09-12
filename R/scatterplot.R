#' Create a scatterplot
#'
#' This function creates a scatterplot using ggplot2.
#'
#' @param data A data frame containing the data to be plotted.
#' @param xvar The name of the variable to be used for the x-axis.
#' @param yvar The name of the variable to be used for the y-axis.
#'
#' @return A ggplot2 scatterplot.
#'
#' @examples
#' data(iris)
#' scatterplot(iris, "Sepal.Length", "Sepal.Width")
#'
#' @import ggplot2
#'
#' @export
scatterplot <- function(data, xvar, yvar) {
  ggplot(data, aes_string(x = xvar, y = yvar, col = "Species")) +
    geom_point()
}
