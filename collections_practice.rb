# your code goes here
def begins_with_r arr
  arr.all? do |word|
    word.start_with?("r")
  end
end

def contain_a arr
  arr.select {|word| word.include?("a") == true}
end

def first_wa arr
  newArr = []
  arr.find {|word| /^wa/.match(word)}
end

def remove_non_strings arr
  arr.delete_if {|ele| ele.class != String}
end

def count_elements arr
  newArr = []
  arr.map do |ele|
   newArr << ele.merge({:count=>arr.count(ele)})
  end
  newArr.uniq
end

def merge_data keys, data
  keys[1].merge!(data[0]['ashley'])
  keys[0].merge!(data[0]['blake'])
  keys
end

def find_cool hash
  hash.select do |h|
   h.has_value?("cool")
 end
end

def organize_schools h
  newH = {
    "Chicago" => [],
    "NYC" => [],
    "SF" => []
  }
  h.each do |k,v|
    if v.has_value?("Chicago")
      newH["Chicago"].push(k)
    elsif v.has_value?("NYC")
      newH["NYC"].push(k)
    elsif v.has_value?("SF")
      newH["SF"].push(k)
    end
  end
  newH
end
