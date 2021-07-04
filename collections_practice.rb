def begins_with_r(array)
  starts_with_r = true
  array.each do |element|
    if !element.start_with? 'r' 
      starts_with_r = false
      break
    end
  end
  starts_with_r
end

def contain_a(array)
    array.select do |element|
      element.include? 'a'
    end
end

def first_wa(array)
   array.select do |element|
      element[0..1] == "wa"
    end[0]
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a? String
  end
end

def count_elements(array)
  array.group_by do |element| 
    element
  end.each do |key, value|
       key[:count] = value.count{|x|x}
    end.keys
end

def merge_data(data_structure1, data_structure2)
  
  data_structure2.each do |item|
    item.each do |key, value|
      data_structure1.each do |element|
        if element.has_value?(key)
          element.merge!(value)
        end
      end
    end
  end
  data_structure1
end
  
def find_cool(array_of_hashes)
  array_of_hashes.select do |element|
    element.has_value?("cool")
  end
end
  

def organize_schools(hash_of_schools)
  organized_schools = {}
  hash_of_schools.collect do |name, hash|
    location = hash[:location]
    organized_schools[location] ||= []
    organized_schools[location] << name
  end
  organized_schools
end
  
  