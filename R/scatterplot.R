#' Create a scatterplot
#'
#' This function creates a scatterplot using ggplot2, allowing you to visualize the relationship
#' between two variables in a data frame while coloring the points by a third variable.
#'
#' @param data A data frame containing the data to be plotted.
#' @param xvar The name of the variable to be used for the x-axis.
#' @param yvar The name of the variable to be used for the y-axis.
#' @param colvar The name of the variable to be used for color mapping.
#'
#' @return A ggplot2 scatterplot.
#'
#' @examples
#' data(iris)
#' scatterplot(iris, "Sepal.Length", "Sepal.Width", "Species")
#'
#' @import ggplot2
#'
#' @export
scatterplot <- function(data, xvar, yvar, colvar) {
  ggplot(data, aes_string(x = xvar, y = yvar, col = colvar)) +
    geom_point()
}
