% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densityplot.R
\name{DensityPlot}
\alias{DensityPlot}
\alias{Histogram}
\title{Density Plot / Histogram}
\usage{
DensityPlot(
  data,
  x,
  group_by = NULL,
  group_by_sep = "_",
  group_name = NULL,
  xtrans = "identity",
  ytrans = "identity",
  split_by = NULL,
  split_by_sep = "_",
  flip = FALSE,
  position = "identity",
  palette = "Paired",
  palcolor = NULL,
  alpha = 0.5,
  theme = "theme_this",
  theme_args = list(),
  add_bars = FALSE,
  bar_height = 0.025,
  bar_alpha = 1,
  bar_width = 0.1,
  title = NULL,
  subtitle = NULL,
  xlab = NULL,
  ylab = NULL,
  expand = c(bottom = 0, left = 0, right = 0),
  facet_by = NULL,
  facet_scales = "free_y",
  facet_ncol = NULL,
  facet_nrow = NULL,
  facet_byrow = TRUE,
  legend.position = ifelse(is.null(group_by), "none", "right"),
  legend.direction = "vertical",
  seed = 8525,
  combine = TRUE,
  nrow = NULL,
  ncol = NULL,
  byrow = TRUE,
  axes = NULL,
  axis_titles = axes,
  guides = NULL,
  design = NULL,
  ...
)

Histogram(
  data,
  x,
  group_by = NULL,
  group_by_sep = "_",
  group_name = NULL,
  xtrans = "identity",
  ytrans = "identity",
  split_by = NULL,
  split_by_sep = "_",
  flip = FALSE,
  bins = NULL,
  binwidth = NULL,
  trend_skip_zero = FALSE,
  add_bars = FALSE,
  bar_height = 0.025,
  bar_alpha = 1,
  bar_width = 0.1,
  position = "identity",
  use_trend = FALSE,
  add_trend = FALSE,
  trend_alpha = 1,
  trend_linewidth = 0.8,
  trend_pt_size = 1.5,
  palette = "Paired",
  palcolor = NULL,
  alpha = 0.5,
  theme = "theme_this",
  theme_args = list(),
  title = NULL,
  subtitle = NULL,
  xlab = NULL,
  ylab = NULL,
  expand = c(bottom = 0, left = 0, right = 0),
  facet_by = NULL,
  facet_scales = "free_y",
  facet_ncol = NULL,
  facet_nrow = NULL,
  facet_byrow = TRUE,
  legend.position = ifelse(is.null(group_by), "none", "right"),
  legend.direction = "vertical",
  seed = 8525,
  combine = TRUE,
  nrow = NULL,
  ncol = NULL,
  byrow = TRUE,
  axes = NULL,
  axis_titles = axes,
  guides = NULL,
  design = NULL,
  ...
)
}
\arguments{
\item{data}{A data frame.}

\item{x}{A character string specifying the column name of the data frame to plot for the x-axis.}

\item{group_by}{Columns to group the data for plotting
For those plotting functions that do not support multiple groups,
They will be concatenated into one column, using \code{group_by_sep} as the separator}

\item{group_by_sep}{The separator for multiple group_by columns. See \code{group_by}}

\item{group_name}{A character string to name the legend of group_by}

\item{xtrans}{A character string specifying the transformation of the x-axis. Default is "identity".
Other options see transform of \code{\link[ggplot2]{scale_x_continuous}}.}

\item{ytrans}{A character string specifying the transformation of the y-axis. Default is "identity".
Other options see transform of \code{\link[ggplot2]{scale_y_continuous}}.}

\item{split_by}{The column(s) to split data by and plot separately.}

\item{split_by_sep}{The separator for multiple split_by columns. See \code{split_by}}

\item{flip}{A logical value. If TRUE, the plot will be flipped.}

\item{position}{How should we position the values in each bin? Default is "identity".
Unlike the default position = "stack" in \link[ggplot2:geom_histogram]{ggplot2::geom_histogram} or \link[ggplot2:geom_density]{ggplot2::geom_density},
the default position is "identity" to show the actual count or density for each group.}

\item{palette}{A character string specifying the palette to use.
A named list or vector can be used to specify the palettes for different \code{split_by} values.}

\item{palcolor}{A character string specifying the color to use in the palette.
A named list can be used to specify the colors for different \code{split_by} values.
If some values are missing, the values from the palette will be used (palcolor will be NULL for those values).}

\item{alpha}{A numeric value specifying the transparency of the plot.}

\item{theme}{A character string or a theme class (i.e. ggplot2::theme_classic) specifying the theme to use.
Default is "theme_this".}

\item{theme_args}{A list of arguments to pass to the theme function.}

\item{add_bars}{A logical value. If TRUE, add lines to the plot to show the data distribution on the bottom.}

\item{bar_height}{A numeric value specifying the height of the bars. The actual height will be calculated based on the maximum density or count.}

\item{bar_alpha}{A numeric value specifying the alpha of the bars.}

\item{bar_width}{A numeric value specifying the width of the bars.}

\item{title}{A character string specifying the title of the plot.
A function can be used to generate the title based on the default title.
This is useful when split_by is used and the title needs to be dynamic.}

\item{subtitle}{A character string specifying the subtitle of the plot.}

\item{xlab}{A character string specifying the x-axis label.}

\item{ylab}{A character string specifying the y-axis label.}

\item{expand}{The values to expand the x and y axes. It is like CSS padding.
When a single value is provided, it is used for both axes on both sides.
When two values are provided, the first value is used for the top/bottom side and the second value is used for the left/right side.
When three values are provided, the first value is used for the top side, the second value is used for the left/right side, and the third value is used for the bottom side.
When four values are provided, the values are used for the top, right, bottom, and left sides, respectively.
You can also use a named vector to specify the values for each side.
When the axis is discrete, the values will be applied as 'add' to the 'expansion' function.
When the axis is continuous, the values will be applied as 'mult' to the 'expansion' function.
See also \url{https://ggplot2.tidyverse.org/reference/expansion.html}}

\item{facet_by}{A character string specifying the column name of the data frame to facet the plot.
Otherwise, the data will be split by \code{split_by} and generate multiple plots
and combine them into one using \code{patchwork::wrap_plots}}

\item{facet_scales}{Whether to scale the axes of facets. Default is "fixed"
Other options are "free", "free_x", "free_y". See \code{ggplot2::facet_wrap}}

\item{facet_ncol}{A numeric value specifying the number of columns in the facet.
When facet_by is a single column and facet_wrap is used.}

\item{facet_nrow}{A numeric value specifying the number of rows in the facet.
When facet_by is a single column and facet_wrap is used.}

\item{facet_byrow}{A logical value indicating whether to fill the plots by row. Default is TRUE.}

\item{legend.position}{A character string specifying the position of the legend.
if \code{waiver()}, for single groups, the legend will be "none", otherwise "right".}

\item{legend.direction}{A character string specifying the direction of the legend.}

\item{seed}{The random seed to use. Default is 8525.}

\item{combine}{Whether to combine the plots into one when facet is FALSE. Default is TRUE.}

\item{nrow}{A numeric value specifying the number of rows in the facet.}

\item{ncol}{A numeric value specifying the number of columns in the facet.}

\item{byrow}{A logical value indicating whether to fill the plots by row.}

\item{axes}{A string specifying how axes should be treated. Passed to \code{\link[patchwork:wrap_plots]{patchwork::wrap_plots()}}.
Only relevant when \code{split_by} is used and \code{combine} is TRUE.
Options are:
\itemize{
\item 'keep' will retain all axes in individual plots.
\item 'collect' will remove duplicated axes when placed in the same run of rows or columns of the layout.
\item 'collect_x' and 'collect_y' will remove duplicated x-axes in the columns or duplicated y-axes in the rows respectively.
}}

\item{axis_titles}{A string specifying how axis titltes should be treated. Passed to \code{\link[patchwork:wrap_plots]{patchwork::wrap_plots()}}.
Only relevant when \code{split_by} is used and \code{combine} is TRUE.
Options are:
\itemize{
\item 'keep' will retain all axis titles in individual plots.
\item 'collect' will remove duplicated titles in one direction and merge titles in the opposite direction.
\item 'collect_x' and 'collect_y' control this for x-axis titles and y-axis titles respectively.
}}

\item{guides}{A string specifying how guides should be treated in the layout. Passed to \code{\link[patchwork:wrap_plots]{patchwork::wrap_plots()}}.
Only relevant when \code{split_by} is used and \code{combine} is TRUE.
Options are:
\itemize{
\item 'collect' will collect guides below to the given nesting level, removing duplicates.
\item 'keep' will stop collection at this level and let guides be placed alongside their plot.
\item 'auto' will allow guides to be collected if a upper level tries, but place them alongside the plot if not.
}}

\item{design}{Specification of the location of areas in the layout, passed to \code{\link[patchwork:wrap_plots]{patchwork::wrap_plots()}}.
Only relevant when \code{split_by} is used and \code{combine} is TRUE. When specified, \code{nrow}, \code{ncol}, and \code{byrow} are ignored.
See \code{\link[patchwork:wrap_plots]{patchwork::wrap_plots()}} for more details.}

\item{...}{Additional arguments.}

\item{bins}{A numeric value specifying the number of bins for the histogram.}

\item{binwidth}{A numeric value specifying the width of the bins for the histogram.}

\item{trend_skip_zero}{A logical value. If TRUE, skip the zero count when drawing the trend line.}

\item{use_trend}{A logical value. If TRUE, use trend line instead of histogram.}

\item{add_trend}{A logical value. If TRUE, add trend line to the histogram.}

\item{trend_alpha}{A numeric value specifying the alpha of the trend line and points}

\item{trend_linewidth}{A numeric value specifying the width of the trend line}

\item{trend_pt_size}{A numeric value specifying the size of the trend points}
}
\value{
A ggplot object or wrap_plots object or a list of ggplot objects
}
\description{
Density plot and histogram to illustrate the distribution of the data.
}
\examples{
set.seed(8525)
data <- data.frame(
    x = c(rnorm(500, -1), rnorm(500, 1)),
    group = rep(c("A", "B"), each = 500),
    facet = sample(c("F1", "F2"), 1000, replace = TRUE)
)

DensityPlot(data, x = "x")
DensityPlot(data, x = "x", group_by = "group", facet_by = "facet")
DensityPlot(data, x = "x", split_by = "facet", add_bars = TRUE)
DensityPlot(data, x = "x", split_by = "facet", add_bars = TRUE,
    palette = c(F1 = "Set1", F2 = "Set2"))
set.seed(8525)
data <- data.frame(
    x = sample(setdiff(1:100, c(30:36, 50:55, 70:77)), 1000, replace = TRUE),
    group = factor(rep(c("A", "B"), each = 500), levels = c("A", "B")),
    facet = sample(c("F1", "F2"), 1000, replace = TRUE)
)

Histogram(data, x = "x")
Histogram(data, x = "x", group_by = "group")
Histogram(data, x = "x", split_by = "facet", add_bars = TRUE)
Histogram(data, x = "x", group_by = "group", add_trend = TRUE)
Histogram(data, x = "x", group_by = "group", add_trend = TRUE, trend_skip_zero = TRUE)
Histogram(data, x = "x", group_by = "group", split_by = "facet",
 use_trend = TRUE, trend_pt_size = 3)
Histogram(data, x = "x", group_by = "group", split_by = "facet",
 palette = c(F1 = "Paired", F2 = "Spectral"))
}
