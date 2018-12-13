def begins_with_r(array)
  array.each do |ele|
    if ele[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  result = array.select do |ele|
    ele.include?("a")
  end
  return result
end

def first_wa(array)
  array.each do |ele|
    if ele[0..1] == "wa"
      return ele
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |ele|
    if String === ele
      new_array << ele
    end
  end
  return new_array
end

def count_elements(array)
  new_array = []
  hash = Hash.new(0)
  array.each do |ele|
    hash[ele] = array.count(ele)
  end
  hash.each do |key,v1|
    key.each do |key2,v2|
      hash2 = {}
      hash2[key2] = v2
      hash2[:count] = v1
      new_array << hash2
    end
  end
  return new_array
end

def merge_data(arr1, arr2)

  array = []
  # array << arr1[0].merge(arr2[0]["blake"])
  # array << arr1[1].merge(arr2[0]["ashley"])
  
  arr1.each do |hash|
    arr2[0].each do |name, info| 
      if hash[:first_name] == name
        array << hash.merge(info)
      end
    end
  end

  return array
end

def find_cool(arg)
  result = []
  arg.each do |hash|
    hash.each do |k,v|
      if v == "cool"
        result << hash
      end
    end
  end
  return result
end

def organize_schools(arg)

  new_hash = Hash.new(Array.new)
  arg.each do |key, value|
    value.each do |var, location|
      new_hash[location] = []
    end
  end
  
  arg.each do |key, value|
    value.each do |var, location|
      new_hash[location] << key
    end
  end
  
  return new_hash
end