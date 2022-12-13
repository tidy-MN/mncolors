#' MN color palette maps
#'
#' This function creates a vector of \code{n} equally spaced colors along a MN color palette.
#'
#' @param n The number of colors (\eqn{\ge 1}) to be in the palette.
#'
#' @param palette A character string indicating the MN palette. The
#' options available are: "primary", "accent", "extended", "blue", "green", "gray", "safety", "primary_accent", "primary_extended", "primary_accent_extended", "corn", "treefrog", "crayfish".
#'
#' @param alpha	The alpha transparency, a number in [0,1], see argument alpha in
#' \code{\link[grDevices]{hsv}}.
#'
#' @param begin The (corrected) hue in [0,1] at which the colormap begins.
#'
#' @param end The (corrected) hue in [0,1] at which the colormap ends.
#'
#' @param direction Sets the order of colors in the scale. If 1, the default, colors
#' are ordered from darkest to lightest. If -1, the order of colors is reversed.
#'
#'
#' @return \code{mncolors} returns a character vector, \code{cv}, of color hex
#' codes. This can be used either to create a user-defined color palette for
#' subsequent graphics by \code{palette(cv)}, a \code{col =} specification in
#' graphics functions or in \code{par}.
#'
#' @author Dorian Kvale: \email{@@state.mn.us}, \href{https://mn.gov/portal/brand/style-guide/colors/}{@@MN Style Guide}
#'
#' @details
#'
#' \if{html}{Here are the color scales:
#'
#'   \out{<div style="text-align: center">}\figure{mncolors-scales.png}{options: style="width:750px;max-width:90\%;"}\out{</div>}
#'
#'   }
#' \if{latex}{Here are the color scales:
#'
#'   \out{\begin{center}}\figure{mncolors-scales.png}\out{\end{center}}
#'   }
#'
#'
#' Semi-transparent colors (\eqn{0 < alpha < 1}) are supported only on some
#' devices: see \code{\link[grDevices]{rgb}}.
#'
#' @examples
#' library(ggplot2)
#' library(hexbin)
#'
#' dat <- data.frame(x = rnorm(10000), y = rnorm(10000))
#'
#' ggplot(dat, aes(x = x, y = y)) +
#'   geom_hex() + coord_fixed() +
#'   scale_fill_gradientn(colours = mncolors(256, palette = "primary_extended"))
#'
#' # using code from RColorBrewer to demo the palette
#' n = 200
#' image(
#'   1:n, 1, as.matrix(1:n),
#'   col = mncolors(n, palette = "blue"),
#'   xlab = "mncolors n", ylab = "", xaxt = "n", yaxt = "n", bty = "n"
#' )
#' @export
#'
mncolors <- function(n, palette = "primary", alpha = 1, begin = 0, end = 1, direction = 1) {

  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in [0,1]")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (n == 0) {
    return(character(0))
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  map_cols <- mn_palettes[[tolower(palette)]]

  fn_cols <- grDevices::colorRamp(map_cols, space = "Lab", interpolate = "spline")

  cols <- fn_cols(seq(begin, end, length.out = n)) / 255

  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
} # nocov end

#' @rdname mncolors
#' @export
primary <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  mncolors(n, palette = "primary_extended", alpha, begin, end, direction)
}

