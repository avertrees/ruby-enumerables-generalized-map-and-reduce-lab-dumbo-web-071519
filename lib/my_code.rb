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
  temp = starting_point
  i = 0
  while i < source_array.length do
      temp += source_array[i]
      i += 1
  end
  return temp
end



def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end

def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
make_sandwich("grits", "abject terror") { |innards| "#{innards} on rye" }
#=> "A grits and abject terror sandwich on rye"
 
# Wheat, sure!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }
 "A Creamy peanut butter and glittering sense of accomplishment sandwich on wheat"
# Bueno!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on tortilla" }
 "A Creamy peanut butter and glittering sense of accomplishment sandwich on tortilla"
# Lewis Carroll's Kitchen
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b.reverse} on #{"bread".reverse}" }
"hciwdnas tnemhsilpmocca fo esnes gnirettilg dna rettub tunaep ymaerC A on daerb"