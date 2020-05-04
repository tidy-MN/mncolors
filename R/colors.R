#' Minnesota Color Palettes
#'
#'A collection of color palettes inspired by the landscape and wildlife of Australia. The palettes include:
#' mncolors
#' mn_qual, mn_div
#' primary
#' accent
#' extended
#' grays
#' safety
#'
#'@examples
#'
#' # Make an x-y plot using the Primary palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'                 y = rnorm(100, 0, 20),
#'                cl = sample(letters[1:8], 100, replace=T))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) + scale_color_mncolors(palette="primary") +
#'   theme_bw() + theme(aspect.ratio=1)
#'
#' # Make a histogram using the Secondary palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_mncolors(palette="secondary")
#'
#' @export
mn_palettes <- list(
    ## https://mn.gov/portal/brand/style-guide/colors/

    primary = c(
        "MN Blue"  = "#003865", # MN Blue
        "MN Green" = "#78BE21"  # MN Green
    ),

    accent = c(
        "#008EAA", # teal
        "#0D5257", # greenish
        "#8D3F2B", # orange
        "#5D295F", # purple
        "#53565A"  # dark gray
    ),

    extended = c(
        "#A4BCC2", # blue gray
        "#F5E1A4", # cream
        "#9BCBEB", # sky blue
        "#FFC845"  # gold
    ),

    blue = c(
        "#D9D9D6", # light gray
        "#A4BCC2", # blue gray
        "#9BCBEB", # sky blue
        "#008EAA", # teal
        "#003865"  # MN Blue
    ),

    green = c(
        "#D9D9D6", # light gray
        "#A4BCC2", # blue gray
        "#0D5257", # greenish
        "#78BE21" # MN green
    ),

    gray = c(
        "#53565A", # dark
        "#97999B", # medium
        "#D9D9D6"  # light
    ),


    safety = c(
        "#A6192E", # red
        "#E57200"  # orange
    ),

 ## Jumping Frog (John Olsen, 1982)
 ## http://cdn.artserieshotels.com.au/images/made/images/remote/http_cdn.artserieshotels.com.au/images/uploads/main/john-olsen-artist-artwork1_600_400_60.jpg
 jumping_frog = c(
     "#607848",
     "#184848",
     "#c0c030",
     "#a8a890",
     "#90a878"
 ))



