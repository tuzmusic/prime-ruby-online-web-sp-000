def prime(num)
  return true if num < 4
  return false if num > 3 && num.even?
  # now we're dealing only with odd numbers greater than 4
  highest_factor = (num / 2).floor
  possible_factors = (1..highest_factor)
  possible_factors.each { |factor|
    return false if num % factor == 0
  }
  return true
end
