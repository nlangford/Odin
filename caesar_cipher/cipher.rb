def caesar(input, num)
  chars = []
  input.length.times do |i|

    if input[i] == " "
      chars.push(" ")
    elsif (input[i].ord+num) > 90 && (input[i].ord+num) < 97
      chars.push(input[i].ord + (num-26))
    elsif (input[i].ord+num) > 122
      chars.push(input[i].ord + (num-26))
    else
      chars.push(input[i].ord + num)
    end
      
  end
  print "\nResult:\n"
  chars.length.times do |i|
    print chars[i].chr
  end
end

caesar("Hello World", 1)
caesar("Hello World", 4)
caesar("Hello World", 21)