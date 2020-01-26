N = gets.to_i
Ss = gets.split.map(&:to_i)

sorted = Ss.sort.reverse

slimes = [sorted[0]]

N.times do#|n|
  slimes_after = slimes.dup

  slimes.each do |slime|
    value = sorted.find { |v| v < slime }

    if value.nil?
      puts "No"
      exit
    end

    sorted.delete_at(sorted.index(value))
    slimes_after << value
  end

  slimes = slimes_after

  #p [n, slimes]
end

puts(Ss.sort == slimes.sort ? "Yes" : "No")
