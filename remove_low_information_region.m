function result = remove_low_information_region(input, level)
  if abs(input) <= level
    result = 0;
  else
    result = input;
  endif
end
