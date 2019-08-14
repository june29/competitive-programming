n, y = gets.split(' ').map(&:to_i)

(0..n).each do |man|
  break if (10000 * man) > y
  next if (10000 * man) + (5000 * (n - man)) < y

  (0..(n - man)).each do |gosen|
    break if (10000 * man) + (5000 * gosen) > y
    next if (10000 * man) + (5000 * gosen) + (1000 * (n - man - gosen)) < y

    sen = n - man - gosen

    if (10000 * man) + (5000 * gosen) + (1000 * sen) == y
      puts "#{man} #{gosen} #{sen}"
      exit
    end
  end
end

puts "-1 -1 -1"
