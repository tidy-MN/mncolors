#' MN palettes with ramped colours
#'
#' @param palette Choose from 'mn_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(scales)
#' show_col(mn_pal()(10))
#'
#' filled.contour(volcano,color.palette = mn_pal(), asp=1)
#'
#' @export
mn_pal <- function(palette = "primary_extended", 
                   alpha = 1, 
                   reverse = FALSE) {
    pal <- mn_palettes[[palette]]
    if (reverse){
        pal <- rev(pal)
    }
    return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_mn
#'
#' @param palette Choose from 'mn_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_mn(palette="mn_qual")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_mn(palette="mn_qual", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_mn(palette="accent")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_mn()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_mn <- function(palette = "primary_extended",
                           discrete = TRUE, 
                           alpha = 1, 
                           reverse = FALSE,
                          ...) {
   if (discrete) {
       discrete_scale("colour", "mn", palette=mn_pal(palette, alpha = alpha, reverse = reverse))
   } else {
       scale_color_gradientn(colours = mn_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
   }
    #scale_colour_manual(values=mn_palettes[[palette]])
}

#' @rdname scale_color_mn
#' @export
scale_colour_mn <- scale_color_mn

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'mn_palettes' list
#'
#' @inheritParams mn_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_mn <- function(palette="primary_extended",
                          discrete = TRUE, 
                          alpha = 1, 
                          reverse = FALSE,
                          ...) {
    if (discrete) {
        discrete_scale("fill", "mn", palette=mn_pal(palette, alpha = alpha, reverse = reverse))
    }
    else {
        scale_fill_gradientn(colours = mn_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
    }
}
