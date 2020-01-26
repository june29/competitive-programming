def score(string)
  return 0 if string.length <= 1

  result = 0

  string.length.times do |i|
    char = string[i]

    case i
    when 0
      if char == "R" && string[i + 1] == "R"
        result += 1
      end
    when string.length - 1
      if char == "L" && string[i - 1] == "L"
        result += 1
      end
    else
      if char == "R" && string[i + 1] == "R"
        result += 1
      end

      if char == "L" && string[i - 1] == "L"
        result += 1
      end
    end
  end

  result
end

N, K = gets.split.map(&:to_i)
S = gets.chomp

puts score(S)
