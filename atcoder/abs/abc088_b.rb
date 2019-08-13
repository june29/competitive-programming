gets
numbers = gets.split(' ').map(&:to_i)

alice_cards, bob_cards =
  numbers.sort.reverse.inject([[], []]) { |result, num|
    alice, bob = result
    alice.size == bob.size ? alice << num : bob << num
    [alice, bob]
  }

puts alice_cards.inject(&:+) - bob_cards.inject(&:+)
