#' treant htmlwidget
#'
#' @param config \code{list}
#'
#' @import htmlwidgets
#'
#' @export
treant <- function(
  config,
  width = NULL,
  height = NULL,
  elementId = NULL
) {

  # forward options using x
  x = list(
    config = config
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'treant',
    x,
    width = width,
    height = height,
    package = 'treant',
    elementId = elementId
  )
}

#' Shiny bindings for treant
#'
#' Output and render functions for using treant within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a treant
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name treant-shiny
#'
#' @export
treantOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'treant', width, height, package = 'treant')
}

#' @rdname treant-shiny
#' @export
renderTreant <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, treantOutput, env, quoted = TRUE)
}
