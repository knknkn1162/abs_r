expand_grid(a = 0:(readline()), b = 0:(readline()), c = 0:(readline())) |>
  mutate(sum = a*500 + b*100 + c*50) |>
  filter(sum == readline()) |>
  summarise(n = n()) |>
  pull() |>
  print()