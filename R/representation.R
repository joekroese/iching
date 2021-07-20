assignment_to_line <- function(assignment) {
  dplyr::case_when(
    assignment == 6 ~ "yielding, changing",
    assignment == 7 ~ "strong",
    assignment == 8 ~ "yielding",
    assignment == 9 ~ "strong, changing"
  )
}
