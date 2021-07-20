#' Line to text
#'
#' Converts a line value into a short text summary
#'
#' @param line
#'
#' @return
#' @export
#'
#' @examples
#' generate_hexagram() |>
#' line_to_text()
#'
#' generate_hexagram() |>
#' mutate(text = line_to_text(line))
line_to_text <- function(line = line) {
  dplyr::case_when(
    line == 6 ~ "yielding, changing",
    line == 7 ~ "strong",
    line == 8 ~ "yielding",
    line == 9 ~ "strong, changing"
  )
}
