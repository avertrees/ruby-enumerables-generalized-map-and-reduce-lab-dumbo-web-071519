# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield(source_array[i]) ) # <== Unique work
    i += 1
  end
  return new
end

def reduce(source_array, starting_point=0)
  temp = starting_point
  i = 0
  while i < source_array.length do
      if source_array[i] == nil
        temp = false
      end
      temp = yield(temp, source_array[i])
      i += 1
  end
  return temp
end
