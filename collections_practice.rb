# your code goes here
def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.find_all {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  array.uniq.each do |ele|
    count=0
    array.each do |ele2|
      if ele2 == ele
        count+=1
      end 
    end
    ele[:count]=count
  end 
end

def merge_data(keys, data)
   merged = []
  keys.each do |ele|
   data.each do |value|
     value.each do |t, s|
       if ele.values[0] == t
         merged.push(ele.merge(s))
       end
     end
    end
  end
  merged
end

def find_cool(array)
  result =[]
  array.each do |element|
    element.each do |k, v|
      if v =="cool"
       result.push(element)
      end
    end
  end
  result
end

def organize_schools(data)
my_hash = Hash.new {|h, k| h[k] = [] }
  data.each do |k, v|
    if v[:location] =="NYC"
      my_hash[v[:location]].push(k)
    elsif v[:location] =="SF"
      my_hash[v[:location]].push(k)  
    else v[:location] =="chicago"
      my_hash[v[:location]].push(k) 
    end
  end
  my_hash
end

