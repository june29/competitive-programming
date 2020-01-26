S = gets.chomp

class String
  def c1?
    self[0] == "A"
  end

  def c2?
    self[2..(self.length - 2)].chars.select { |c| c == "C" }.size == 1
  end

  def c3?
    tmp = self.sub("A", "").sub("C", "")
    tmp == tmp.downcase
  end
end

puts S.c1? && S.c2? && S.c3? ? "AC" : "WA"
