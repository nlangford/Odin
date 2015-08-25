def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num=2)
  ([input] * num).join(" ")
end

def start_of_word(input, num)
  return input[0..num-1]
end

def first_word(input)
  words = input.split(" ")
  return words[0]
end

def titleize(s)
  words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end