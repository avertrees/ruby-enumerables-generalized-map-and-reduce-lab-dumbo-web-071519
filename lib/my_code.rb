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


require 'spec_helper'

describe 'my own map' do
  it "returns an array with all values made negative" do
    expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
  end

  it "returns an array with the original values" do
    dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
    expect(map(dune){|n| n}).to eq(dune)
  end

  it "returns an array with the original values multiplied by 2" do
    expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18])
  end

  it "returns an array with the original values squared" do
    expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
  end
end

describe 'my own reduce' do
  it "returns a running total when not given a starting point" do
    source_array = [1,2,3]
    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
  end

  it "returns a running total when given a starting point" do
    source_array = [1,2,3]
    starting_point = 100
    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
  end

  it "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
  end

it "returns false when any value is false" do
    source_array = [1, 2, true, "razmatazz", false]
    expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
  end

reduce(source_array){|memo, n| memo || n}
reduce(source_array){|memo, n| memo && n}
