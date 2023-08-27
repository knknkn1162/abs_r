N <- readline()
readLines(n=N) |>
  parse_number() |>
  as_tibble() |>
  distinct(value) |>
  summarize(n = n()) |>
  pull() |>
  print()