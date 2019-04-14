class Search

  def initialize(numbers, number)
    @numbers = numbers
    @number = number
  end

  def binary_search
    first = 0
    last = @numbers.size - 1

    while first <= last
      mid = ( first + last ) / 2

      return "Si" if @numbers[mid] == @number 

      if @numbers[mid] < @number
        first = mid + 1
      else
        last = mid - 1
      end
    end

    return "No"

  end
end


search = Search.new([1,4,6,9,106,305,468,563,693], 468)
#search = Search.new([1,4,6,9,106,305,468,563,693], 346)
puts search.binary_search

