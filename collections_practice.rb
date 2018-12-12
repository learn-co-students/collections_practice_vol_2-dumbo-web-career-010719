# your code goes here
def begins_with_r(array)
  array.each do |item|
    if item[0] != 'r'
      return false 
    end
  end
  return true
end

def contain_a(array)
  contain_a_array = []
  array.each do |item|
    contain_a_array << item if item.include?('a')
  end
  contain_a_array
end

def first_wa(array)
  array.find do |item|
    item[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.class === 'String'
  end
end

def count_elements(array)
  array.group_by(&:itself)
    .map{|k, v| k.merge(count: v.length)}
end 

def merge_data(keys, data)
  i = 0
  while i < keys.length
   data.each do |element|
      element.each do |ka, va|
        if keys[i].has_value?(ka)
          keys[i].merge!(va)
        end
      end
    end
  i+=1
  end
  return keys
end 

def find_cool(arr)
  i = 0
  new_arr = [];
  while i < arr.length do
    arr[i].collect do | key, values |
      if values == "cool"
        new_arr << arr[i]
      return new_arr
      end
    end
    i+=1
  end
end 

def organize_schools(arr)
  new_hash = {}
  arr.each do |key, location_hash|
    location_hash.each do |k, location|
      if !new_hash.has_key?(location)
        new_hash[location] = [key]
      elsif new_hash.has_key?(location)
        new_hash[location] << key
      end
    end
  end
  new_hash
end