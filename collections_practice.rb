def begins_with_r(tools)
return true if tools.all? {|wrd| wrd.start_with? "r"}
else
  false
end

def contain_a(array)
array.select {|wrd| wrd.include?("a")==true}
end

def first_wa(array)
array.each {|wrd| return wrd if wrd.to_s.start_with?("wa")}

end



def remove_non_strings(array)
array.delete_if {|wrd| wrd.class != String}
end

def count_elements(array)
new=[]
array.map{|elem| new<< elem.merge(:count=>array.count(elem))}
new.uniq!
end


def merge_data(keys,data)
keys[0].merge!(data[0]["blake"])
keys[1].merge!(data[0]["ashley"])
keys
end

def find_cool(array)
  new=[]
if array[0].has_value?("cool")== true
  new << array[0]
elsif array[1].has_value?("cool")== true
  new << array[1]
end
end


def organize_schools(schools)
newHash={
  "Chicago" => [],
  "NYC" => [],
  "SF" => []
  }
schools.each do |school_name,city_hash|
  if city_hash.has_value?("NYC")
    newHash["NYC"].push(school_name)
  elsif city_hash.has_value?("Chicago")
    newHash["Chicago"].push(school_name)
  elsif city_hash.has_value?("SF")
    newHash["SF"].push(school_name)

  end
end
newHash
end
