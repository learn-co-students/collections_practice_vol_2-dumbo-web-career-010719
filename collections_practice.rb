# your code goes here

def begins_with_r (array)
  test = true 
  # .start_with?("r") -or- [0] == "r"
  array.each do |name| 
  test = false if name[0] != "r"
    end
  test
end


#-- Return all elements that contain the letter 'a'
def contain_a (array)
  array_with_a = []
  
  array.each do |element|
    array_with_a << element if element.include?("a")
  end 
  array_with_a
end


#-- Return the first element that begins with the letters 'wa'
def first_wa(array)
  #first_with_wa = []
  array.find do |word|
    word.match(/wa/)  
end 
  #first_with_wa
end 


#-- remove anything that's not a string from an array
def remove_non_strings (array)
  array.grep(String) 
end


#-- count how many times somethingappears in an array
def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end


#-- combines two nested data structures into one
def merge_data(array_one, array_two)
  array_two[0].map do |name, data|
    new_data_structure = {}
    array_one.each do |new_data|
      if new_data[:first_name] == name
        new_data_structure = data.merge(new_data)
      end
    end
    new_data_structure
  end
end


#-- find all cool hashes 
def find_cool (array)
  cool_array = []
  
  array.each { |hash|
  cool_array << hash if hash[:temperature] == "cool"
}
cool_array
end


#-- organize the schools by location

def organize_schools(array)
  school_list_organized = {}
  array.each do |school, where|
    location = where[:location]
    if school_list_organized[location]
      school_list_organized[location] << school
    else
      school_list_organized[location] = []
      school_list_organized[location] << school
    end
  end
  school_list_organized
end


