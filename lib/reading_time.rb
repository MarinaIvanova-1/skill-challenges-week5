def reading_time(text)
  words = text.split(" ")
  (words.length.to_f / 200).ceil
end