# ignore the first line
readline()
readline() |>
  str_split_1(" ") |>
  parse_number() |>
  map(\(x) sum(x %% (2 ** (1:31)) == 0)) |>
  unlist() |>
  min() |>
  print()