# 1.)
# Return true if every element of the tools array starts with an "r"
#  and false otherwise.
# Should return false if there's an element that does not begin with r.
def begins_with_r(tools)
    tools.all? do |tool|
        if tool.start_with?("r")
            true
        else
            false
        end
    end
end

# .all? -VS- .each/.collect/.map

# FIRST ATTEMPT
# def contain_a(elements)
#     words_with_a = []

#     elements.each do |element|
#         if element.include?("a")
#             words_with_a << element
#         end
#     end
#     words_with_a.join(" ")
# end

# 2.)
# Return all elements that contain the letter 'a'
def contain_a(elements)
	elements.find_all do |element|
        element.include?("a")
    end
end

#           - OR -

# def contain_a(array)
# 	array.find_all {|word| word.include?("a")}
# end

# 3.)
# Return the first element that begins with the letters 'wa'
def first_wa(elements)
    elements.detect do |element|
    element[0,2] == "wa"
  end
end

# WHY DOESN'T THIS WORK!?
# def first_wa(elements)
#     elements.collect do |element|
#         element.start_with?("wa")
#     end
# end

# 4.)
# Remove anything that's not a string from an array
def remove_non_strings(array)
    array.delete_if do |string|
        string.is_a?(String) == false
    end
end

# 5.)
# Count how many times something appears in an array
def count_elements(array)
    counts = Hash.new(0)
    array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
        hash[:count] = number
    end
    counts.keys
end

#           - OR -

# def count_elements(array)
#     array.uniq.each {|i| count = 0
#         array.each {|i2| if i2 == i then count += 1 end}
#         i[:count] = count}
# end

# 6.)
# Combines two nested data structures into one
def merge_data(keys, data)
    keys.each do |name_hash|
        data.each do |hash|
            name_hash.merge!(hash[name_hash[:first_name]])
        end
    end
end

# 7.)
# Find all cool hashes
def find_cool(hash)
    hash.select do |h|
        h if h.has_value?("cool")
    end
end

#             - OR -

# def find_cool(array)
#   array.select {|entry| entry if entry.has_value?("cool")}
# end

#             - OR -

# def find_cool(cool)
#     cool.select {|i| i.any? {|k,v| v == "cool"}}
# end

# 8.)
# Organizes the schools by location
def organize_schools(schools)
    by_location = {}
    schools.each do |school, location_hash|
        location_hash.each do |symbol, location|
            if by_location[location] == nil
                by_location[location] = [school]
            else
                by_location[location] << school
            end
        end
    end
    by_location
end

#                    - OR -

# def organize_schools(schools)
#     locations_hash = {}
#     schools.collect {|k,v| locations_hash[v[:location]] = []}
#     locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
# end
