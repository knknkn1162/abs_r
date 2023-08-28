N <- readline() |> parse_integer()
readLines(n=N) |>
  str_split(" ") |>
  unlist() |>
  parse_integer() |>
  # t_i, x_i, x_i
  matrix(ncol = 3, byrow=TRUE) |>
  as_tibble() |>
  add_row(V1 = 0, V2 = 0, V3 = 0) |>
  arrange(V1) |>
  mutate(vdiff = abs(V2-lag(V2))+abs(V3-lag(V3)), tdiff = V1-lag(V1)) |>
  filter((tdiff-vdiff)>=0 & (tdiff-vdiff) %% 2 == 0) |>
  count() |>
  pull() |>
  (\(x) if_else(x == 2, "Yes", "No"))() |>
  print()