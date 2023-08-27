readline() |>
  str_split_1(" ") |>
  parse_number() |>
  (\(x) any(x %% 2 == 0))() |>
  (\(x) if_else(x, "Even", "Odd"))() |>
  print()