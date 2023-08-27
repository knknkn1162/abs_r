inputs <- readline() |> str_split_1(" ") |> parse_number();
N <- inputs[1];
Y <- inputs[2];
expand_grid(s1 = 0:N, s2 = 0:N) |>
  filter(s1 <= s2) |>
  mutate(a = s1, b = s2-s1, c = N-s2, sum = 10000*a + 5000*b + 1000*c) |>
  add_row(a=-1, b=-1, c=-1, sum = Y) |>
  mutate(res = str_glue("{a} {b} {c}")) |>
  filter(sum == Y) |>
  first() |>
  pull(res) |>
  print()