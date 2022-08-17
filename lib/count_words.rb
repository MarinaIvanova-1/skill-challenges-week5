def count_words(str)
  if str.include? " - "
    str[" - "] = " "
  elsif str.include? "-"
    str["-"] = " "
  end
  return str.split(" ").length
end

