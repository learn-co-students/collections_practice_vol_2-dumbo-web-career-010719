def begins_with_r(array)
  array.each do |x|
    if x.start_with?("r") == false
      return false
    end
  end
    return true
end
def contain_a(array)
  array.select do |x|
    if x.match("a")
      x
    end
  end
end
def first_wa(array)
 array.each do |x|
   if x.class == String
     if x.start_with?("wa")
     return x
   end
 end
 end
end
def remove_non_strings(array)
  array.select do |x|
    x.class == String
  end
end
def count_elements(array)
arr2 = []
array.each do |x|
  int = array.count(x)
  y = {:count => int}
  y.merge!(x)
  if arr2.count(y) == 0
      arr2.push(y)
  end
end
return arr2
end
def merge_data(keys, data)
  arr = []
 keys.each do |x|
   arr2 = {}
   name = x[:first_name]
   arr2.store(:first_name, name)
   arr2.merge!(data[0][name])
   arr2.store(:motto, x[:motto])
   arr.push(arr2)
 end
 return arr
end
def organize_schools(schools)
  arr = {}
  nyc = []
  sf = []
  chicago = []
  schools.each do |x|
   school = x[0]
    if x[1].has_value?("NYC")
      nyc.push(school)
    end
    if x[1].has_value?("SF")
      sf.push(school)
    end
    if x[1].has_value?("Chicago")
      chicago.push(school)
    end
  end
  arr.store("NYC", nyc)
  arr.store("SF", sf)
  arr.store("Chicago", chicago)
  return arr
end
def find_cool(arr)
  arr.each do |x|
    if x.has_value?("cool")
      return [x]
    end
  end
end
