require 'pry'
require 'benchmark'

def prime?(num)
  return false if num < 2 || (num > 3 && num.even?)
  # now we're dealing only with odd numbers greater than 4
  highest_factor = (num / 3).floor
  possible_factors = (5..highest_factor)
  !possible_factors.any? { |factor|
    return true if factor > num/factor
    num % factor == 0
  }
end

puts Benchmark.measure{
  5.times {
    prime?(2999999)
  }
}
