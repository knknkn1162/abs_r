# ignore the first line
readline()
readline() |>
  str_split_1(" ") |>
  parse_number() |>
  as_tibble() |>
  arrange(desc(value)) |>
  group_by(row_number() %% 2) |>
  summarize(sum = sum(value), ) |>
  ungroup() |>
  summarise(ans = max(sum) - min(sum)) |>
  pull() |>
  print()