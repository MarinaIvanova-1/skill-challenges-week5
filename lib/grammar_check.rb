def grammar_check(str)
  ending = ["!", ".", "?"]
  if str == nil || str == ""
    fail "Input string!"
  elsif str[0].upcase == str[0] && ending.include?(str[-1]) 
    if str[-2] == "." && str[-3] != "."
      return false
    else
      return true
    end
  else 
    return false 
  end
end