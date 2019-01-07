# your code goes here
def begins_with_r(arr)
  arr.all? { |ele| ele[0] == "r" }
end

def contain_a(arr)
  arr.select { |ele| ele.include?("a") }
end

def first_wa(arr)
  arr.find { |ele| ele[0] == "w" && ele[1] == "a" }
end

def remove_non_strings(arr)
  arr.delete_if { |ele| ele.class != String }
end

def count_elements(arr)
  arr.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  keys.each do |name|
    data.each do |hash|
      name.merge!(hash[name[:first_name]])
    end
  end
end
 
def find_cool(cool)
  cool_parts = []
  cool.each do |hashes|
    if hashes[:temperature] == ("cool")
      cool_parts << hashes
    end
  end
  return cool_parts
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location|
    location.each do |location, city|
      unless organized.key?(city)
        organized[city] = [school]
      else
        organized[city] << school
      end
    end
  end
  return organized
end