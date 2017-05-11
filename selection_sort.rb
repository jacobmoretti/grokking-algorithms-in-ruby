require "benchmark"

def find_smallest(array)
  smallest = array.first
  smallest_index = 0

  array.each_with_index do |value, index|
    if value < smallest
      smallest = value
      smallest_index = index
    end
  end

  smallest_index
end

def selection_sort(array)
  new_array = []

  array.size.times do |value|
    smallest = find_smallest(array)
    new_array.push(array.slice!(smallest))
  end

  new_array
end

p unsorted_array = (0..100).to_a.shuffle.take(100)

time = Benchmark.realtime do
  p selection_sort(unsorted_array)
end

puts "Time elapsed #{time*1000} milliseconds"
