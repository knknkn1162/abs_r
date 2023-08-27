# ignore the first line
readline()
readline() |>
  str_split_1(" ") |>
  parse_number() |>
  as_tibble() |>
  rowwise() |>
  mutate(b = (
    intToBits(value) |>
    as.integer() |>
    str_flatten() |>
    str_match("^0*") |>
    str_length())
  ) |>
  ungroup() |>
  summarize(ans = min(b)) |>
  pull() |>
  print()