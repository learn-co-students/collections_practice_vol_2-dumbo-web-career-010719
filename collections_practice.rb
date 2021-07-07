require 'pry'
def begins_with_r(array)
  array2 = []
  array.each do |a|
    if a.start_with?("r") == true
      array2 << 1
    else array2.delete(a)
    end
  end
  if array2.size == array.length
    true
  else false
  end
end

def contain_a(array)
  array2 = []
  array.each do |word|
    if word.include?("a") == true
      array2 << word
    end
  end
  array2
end

def first_wa(array)
  array2 = []
  array.each do |word|
    word = word.to_s
    if word.start_with?("wa") == true
      return word
    end
  end
end

def remove_non_strings(array)
  new_array = []
  
  array.each do |word|
    if word == word.to_s
      new_array << word
    end
  end
  return new_array
end

def count_elements(array)
  array2 = []
 array.each_with_index do |name , i|
   counts = {}
   counts[:count] = 1
   counts[:name] = name[:name]
   
   array2[i] = counts
 end
list_of_names = ""
array2.map do |name|
  if list_of_names.include?(name[:name]) 
    name[:count] += 1
  else list_of_names << name[:name]
    end
  end
array2.delete({:count=>1, :name=>"blake"})
return array2
end

def merge_data(keys, data)
 data.map do | info , datas |
  
   
     keys[0][:awesomeness] = info["blake"][:awesomeness]
     keys[0][:height] = info["blake"][:height]
     keys[0][:last_name] = info["blake"][:last_name]
     
     
      keys[1][:awesomeness] = info["ashley"][:awesomeness]
      keys[1][:height] = info["ashley"][:height]
      keys[1][:last_name] = info["ashley"][:last_name]
  
    
 end
 return keys
end

def find_cool(cool)
  hash = {}
  array = []
  cool.map do |info|
    if info[:temperature] == "cool"
      hash = info
    end
  end
  array << hash
  return array
end

def organize_schools(schools)
  
  hash = {}
  arrayNYC = []
  arrayCHI = []
  arraySF = []
  schools.map do |school,location|
    if location[:location] == "NYC"
      arrayNYC << school
    elsif location[:location] == "Chicago"
      arrayCHI << school
    elsif location[:location] == "SF"
      arraySF << school
    end
  end
  hash["Chicago"] = arrayCHI
  hash["NYC"] = arrayNYC
  hash["SF"] = arraySF
  return hash
end




