#' Minnesota Color Palettes
#'
#'A collection of color palettes based on the official state brand colors and others inspired by the landscape and wildlife of Minnesota. 
#'
#'@examples
#'
#' # Make an x-y plot using the Primary palette
#' library(tidyverse)
#' 
#' df <- data.frame(x = rnorm(100, 0, 20),
#'                 y = rnorm(100, 0, 20),
#'                cl = sample(letters[1:8], 100, replace=T))
#' ggplot(df, aes(x, y, color = cl, shape=cl)) +
#'   geom_point(size=4) + 
#'   scale_color_mncolors(palette = "primary") +
#'   theme_bw()
#'
#' # Make a histogram using the Secondary palette
#' ggplot(df, aes(x, fill=cl)) + 
#'   geom_histogram() +
#'   scale_fill_mncolors(palette = "secondary")
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
        "#78BE21"  # MN green
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

    primary_accent = c(
      "MN Blue"  = "#003865", # MN Blue
      "MN Green" = "#78BE21",  # MN Green
      "#008EAA", # teal
      "#0D5257", # greenish
      "#8D3F2B", # orange
      "#5D295F", # purple
      "#53565A"  # dark gray
    ),
    
    primary_extended = c(
      "MN Blue"  = "#003865", # MN Blue
      "MN Green" = "#78BE21",  # MN Green
      "#A4BCC2", # blue gray
      "#F5E1A4", # cream
      "#9BCBEB", # sky blue
      "#FFC845"  # gold
    ),
    
    primary_accent_extended = c(
      "MN Blue"  = "#003865", # MN Blue
      "MN Green" = "#78BE21",  # MN Green
      "#008EAA", # teal
      "#0D5257", # greenish
      "#8D3F2B", # orange
      "#5D295F", # purple
      "#53565A", # dark gray
      "#A4BCC2", # blue gray
      "#F5E1A4", # cream
      "#9BCBEB", # sky blue
      "#FFC845"  # gold
    ),
    
    corn = c(
        "#78BE21", # MN green
        "#FFC845"  # gold
    ),

 ## MN Gray Tree Frog
 ## http://minnesotaseasons.com/Amphibians/Small/treefrog_(Hyla_sp)_02s.jpg
 treefrog = c(
     "#53412B",
     "#474F27",
     "#96B02C",
     "#94AD81",
     "#BFC453"
 ),

 ## MN Crayfish
 ## https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS7Db_F7XNVm2vCTDAJh25Cf2WRZAffl5hWdCcCHxbpyQQSA-Cp&usqp=CAU
 crayfish = c(
     "#832D12",
     "#34424A",
     "#6C5E2E",
     "#AB8237",
     "#5493AA"
 )
 )

