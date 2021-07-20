#' Generate hexagram
#'
#' @return
#' @export
#'
#' @examples
generate_hexagram <- function() {
  tibble::tibble(.rows = 6) |>
    rowwise() |>
    mutate(line = generate_line()) |>
    ungroup()
}

generate_line <- function() {
  stalks <- 50
  stalks <- stalks - 1

  line <- tibble::tibble(turn, stalks, hand_pile, .rows = 0)

  for(i in 1:3) {
    hand_pile <- generate_number(stalks)
    stalks <- stalks - hand_pile
    line <- line |>
      add_row(stalks = stalks, hand_pile = hand_pile)
  }

  line <- line |>
    dplyr::mutate(number = remainder_to_assignment(hand_pile))

  line |>
    dplyr::summarise(sum(number)) |>
    as.numeric()
}

remainder_to_assignment <- function(remainder) {
  dplyr::case_when(
    # turn == 1
    remainder == 9 ~ 2,
    remainder == 5 ~ 3,
    # turn %in% c(2, 3)
    remainder == 8 ~ 2,
    remainder == 4 ~ 3
  )
}


generate_number <- function(number_of_stalks) {
  # Randomly separate the remaining stalks into two piles, left and right
  right_pile <- stats::rbinom(n = 1, size = number_of_stalks, prob = 0.5)
  left_pile <- number_of_stalks - right_pile

  # take one from right pile and hold it in left hand
  right_pile <- right_pile - 1
  hand_pile <- 1

  # Take stalks in groups of four from the left pile, until four or fewer stalks remain.
  while(left_pile > 4) {
    left_pile <- left_pile - 4
  }
  # put it in hand pile
  hand_pile <- hand_pile + left_pile

  # same for right
  while(right_pile > 4) {
    right_pile <- right_pile - 4
  }
  hand_pile <- hand_pile + right_pile

  hand_pile

}
