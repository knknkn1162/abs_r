readline() |>
  str_remove("(dream|dreamer|erase|eraser)*$") |>
  (\(x) if_else(str_length(x) == 0, "YES", "NO"))() |>
  print()