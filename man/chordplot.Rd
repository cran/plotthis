% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chordplot.R
\name{ChordPlot}
\alias{ChordPlot}
\alias{CircosPlot}
\title{Chord / Circos plot}
\usage{
ChordPlot(
  data,
  y = NULL,
  from = NULL,
  from_sep = "_",
  to = NULL,
  to_sep = "_",
  split_by = NULL,
  split_by_sep = "_",
  flip = FALSE,
  links_color = c("from", "to"),
  theme = "theme_this",
  theme_args = list(),
  palette = "Paired",
  palcolor = NULL,
  alpha = 0.5,
  labels_rot = FALSE,
  title = NULL,
  subtitle = NULL,
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

CircosPlot(
  data,
  y = NULL,
  from = NULL,
  from_sep = "_",
  to = NULL,
  to_sep = "_",
  split_by = NULL,
  split_by_sep = "_",
  flip = FALSE,
  links_color = c("from", "to"),
  theme = "theme_this",
  theme_args = list(),
  palette = "Paired",
  palcolor = NULL,
  alpha = 0.5,
  labels_rot = FALSE,
  title = NULL,
  subtitle = NULL,
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

\item{y}{A character string specifying the column name of the data frame to plot for the y-axis.}

\item{from}{A character string of the column name to plot for the source.
A character/factor column is expected.}

\item{from_sep}{A character string to concatenate the columns in \code{from}, if multiple columns are provided.}

\item{to}{A character string of the column name to plot for the target.
A character/factor column is expected.}

\item{to_sep}{A character string to concatenate the columns in \code{to}, if multiple columns are provided.}

\item{split_by}{The column(s) to split data by and plot separately.}

\item{split_by_sep}{The separator for multiple split_by columns. See \code{split_by}}

\item{flip}{A logical value to flip the source and target.}

\item{links_color}{A character string to specify the color of the links.
Either "from" or "to".}

\item{theme}{A character string or a theme class (i.e. ggplot2::theme_classic) specifying the theme to use.
Default is "theme_this".}

\item{theme_args}{A list of arguments to pass to the theme function.}

\item{palette}{A character string specifying the palette to use.
A named list or vector can be used to specify the palettes for different \code{split_by} values.}

\item{palcolor}{A character string specifying the color to use in the palette.
A named list can be used to specify the colors for different \code{split_by} values.
If some values are missing, the values from the palette will be used (palcolor will be NULL for those values).}

\item{alpha}{A numeric value specifying the transparency of the plot.}

\item{labels_rot}{A logical value to rotate the labels by 90 degrees.}

\item{title}{A character string specifying the title of the plot.
A function can be used to generate the title based on the default title.
This is useful when split_by is used and the title needs to be dynamic.}

\item{subtitle}{A character string specifying the subtitle of the plot.}

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
}
\value{
A combined plot or a list of plots
}
\description{
\code{ChordPlot} is used to create a chord plot to visualize the relationships between two categorical variables.
\code{CircosPlot} is an alias of \code{ChordPlot}.
}
\examples{
\donttest{
set.seed(8525)
data <- data.frame(
    nodes1 = sample(c("Soure1", "Source2", "Source3"), 10, replace = TRUE),
    nodes2 = sample(letters[1:3], 10, replace = TRUE),
    y = sample(1:5, 10, replace = TRUE)
)

ChordPlot(data, from = "nodes1", to = "nodes2")
ChordPlot(data, from = "nodes1", to = "nodes2",
          links_color = "to", labels_rot = TRUE)
ChordPlot(data, from = "nodes1", to = "nodes2", y = "y")
ChordPlot(data, from = "nodes1", to = "nodes2", split_by = "y")
ChordPlot(data, from = "nodes1", to = "nodes2", split_by = "y",
          palette = c("1" = "Reds", "2" = "Blues", "3" = "Greens", "4" = "Purp"))
ChordPlot(data, from = "nodes1", to = "nodes2", flip = TRUE)
}
}
