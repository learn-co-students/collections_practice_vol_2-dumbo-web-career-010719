# begins_with_r
# Return true if every element of the tools array starts with an "r"
# return false if there's an element that does not begin with r
def begins_with_r(array)
  array.all? { |ele| ele[0] == "r"}
end
# contain_a
# return all elements that contain the letter 'a'
def contain_a(array)
  a_arr = []
  array.find_all do |ele|
    if ele.include?("a")
      a_arr << ele
    end
  end
  return a_arr
end
# first_wa
# Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.find {|ele| ele[0..1] == "wa"}
end
# remove_non_strings
# remove anything that's not a string from an array
def remove_non_strings(array)
  array.reject {|ele| ele != ele.to_s}
end
# count_elements
# count how many times something appears in an array
# ex {:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}
def count_elements(array)
  answer = {"count" => 0, "name" => ""}
end
# merge_data
# combines two nested data structures into one
def merge_data

end
# find_cool
# find all cool hashes
def find_cool(hash)

end
# organize_schools
# organizes the schools by location
def organize_schools(schools)

end
