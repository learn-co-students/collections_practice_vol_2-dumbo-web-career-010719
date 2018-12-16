# your code goes here

def begins_with_r(arr)
  arr.all? do |word|
    word[0] == "r"
  end
end

# array = ["ra", "rb", "rr"]

# begins_with_r(array)

def contain_a(arr)
  arr.select do |word|  
    word.include?("a")
  end
end


def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end



def remove_non_strings(arr)
  arr.delete_if do |element|
    element != element.to_s
  end
end



def count_elements(arr)
  new_hash = Hash.new(0)

  arr.each do |key|
    new_hash[key] += 1
  end
  
    new_hash.each do |key, value|
      key[:count] = value
    end
  
  new_hash.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |hashes|
    hashes.find do |keys, values|
     values == "cool"
    end
  end
end

def organize_schools(hash)
  new_hash = {}

  hash.each do |key, value|
    value.each do |k2, v2|
      if new_hash[v2] == nil
        new_hash[v2] = [key]
      else
        new_hash[v2] << key
      end
    end
  end

  new_hash
end


