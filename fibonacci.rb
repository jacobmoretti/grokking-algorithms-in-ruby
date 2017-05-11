require "benchmark"

def fibonacci(n, memo = {})
  if n < 2
    n
  elsif memo[n]
    memo[n]
  else
    memo[n] = fibonacci(n-1, memo) + fibonacci(n-2, memo)
  end
end

n = 6
puts "Calling fibonacci(#{n})"
time = Benchmark.realtime do
  puts fibonacci(n)
end

puts "Time elapsed #{time*1000} milliseconds"
