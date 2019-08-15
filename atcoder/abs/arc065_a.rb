s = gets.chomp

words = %w[dream dreamer erase eraser]

words_hash =
  words.map { |word|
    [word, words.map { |word2| "#{word}#{word2}" }]
  }.to_h

loop do
  if words.include?(s)
    puts "YES"
    exit
  end

  s_prev = s.dup

  words_hash.each do |word, word2s|
    word2s.each do |word2|
      if s.start_with?(word2)
        s.sub!(/^#{word}/, "")
        break
      end
    end
  end

  break if s_prev == s
end

puts "NO"
