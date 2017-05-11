require "benchmark"

def quicksort(array)
  if array.size < 2
    array
  else
    # TODO: this pivot should be randomized in some manner...
    pivot = array[0]
    less = array.drop(1).select { |i| i <= pivot }
    greater = array.drop(1).select { |i| i > pivot }
    quicksort(less) + [pivot] + quicksort(greater)
  end
end

p unsorted_array = (0..100).to_a.shuffle.take(100)

time = Benchmark.realtime do
  p quicksort(unsorted_array)
end

puts "Time elapsed #{time*1000} milliseconds"
