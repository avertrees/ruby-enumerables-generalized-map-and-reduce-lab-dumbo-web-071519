# Your Code Here
def map(source_array, block)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] ) # <== Unique work
    i += 1
  end
  return new
end

def reduce(source_array, starting_value=0)

