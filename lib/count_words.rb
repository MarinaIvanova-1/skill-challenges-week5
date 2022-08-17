def count_words(str)
  if str.include? " - "
    str[" - "] = " "
  end
  if str.include? "-"
    str["-"] = " "
  end
  return str.split(" ").length
end

