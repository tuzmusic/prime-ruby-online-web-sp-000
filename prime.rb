require 'pry'
require 'benchmark'

def prime?(num)
  return false if num < 2 || (num > 3 && num.even?)
  # now we're dealing only with odd numbers greater than 4
  highest_factor = (num / 2).floor
  possible_factors = (2..highest_factor)#.select {|n| n.odd?}
  # binding.pry
  puts "testing #{possible_factors.size´} factors."
  possible_factors.each { |factor|
    if num % factor == 0
      # binding.pry
      return false
    end
  }
  return true
end

puts Benchmark.measure{
  5.times {
    prime?(2999999)
  }
}
