require 'pry'

def prime?(num)
  return true if  num < 4 && num > 1
  return false if num < 2 || (num > 3 && num.even?)
  # now we're dealing only with odd numbers greater than 4
  highest_factor = (num / 2).floor
  possible_factors = (2..highest_factor)
  possible_factors.each { |factor|
    if num % factor == 0
      # binding.pry
      return false
    end
  }
  return true
end
