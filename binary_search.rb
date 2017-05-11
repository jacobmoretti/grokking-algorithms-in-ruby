def binary_search(list, item)
  lowIndex = 0
  highIndex = list.length - 1

  while lowIndex <= highIndex do
    midIndex = (lowIndex + highIndex) / 2
    guess = list[midIndex]

    if guess == item
     return midIndex
    elsif guess > item
     highIndex = midIndex - 1
    else
     lowIndex = midIndex + 1
    end
  end
end

p list = [0, 4, 5, 10, 11, 15, 23, 27]
p item = 23
p binary_search(list, item)
