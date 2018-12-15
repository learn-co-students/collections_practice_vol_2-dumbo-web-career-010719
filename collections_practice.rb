# your code goes here
def begins_with_r(arr)
  for item in arr
    if item.start_with?("r") == false
      return false
    end
  end
  return true
end

def contain_a(arr)
  output = []
  for item in arr
    if item.index('a') != nil
      output.push(item)
    end
  end
  return output
end

def first_wa(arr)
  arr.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(arr)
  output = []
  arr.each do |item|
    if item.instance_of?(String)
      output.push(item)
    end
  end
  output
end

def count_elements(arr)
  h = Hash.new(0)
  output = []
  
  arr.each do |item|
    h[item.values] += 1
  end

  h.each do |key, item|
    output.push({:count => item, :name => key.join("")})
  end
  output
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |d|
      key.merge!(d[key[:first_name]])
    end
  end
end

def find_cool(cool)
  output = []
  
  cool.each do |c|
    if c[:temperature] == "cool"
      output.push(c)
    end
  end
  output
end

def organize_schools(schools)
  hm = Hash.new {|h,k| h[k] = []}
    
  schools.each do |s|
    hm[s[1][:location]] << s[0]
  end
  hm
end
