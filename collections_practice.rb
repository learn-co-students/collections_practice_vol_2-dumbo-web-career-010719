require 'pry'

def begins_with_r(arr)
  arr.each do |word|
    return false if !word.start_with?("r")
  end
  true 
end

def contain_a(arr)
  arr.select do |word|
    word.include? ?a 
  end
end

def first_wa(arr)
  arr.each do |word|
    return word if word.to_s.start_with?('wa')
  end
end

def remove_non_strings(arr)
  arr.each do |word|
    arr.delete_if { |word| word.class != String }
  end
end

def count_elements(arr)
  rarr = []
  narr = arr.uniq
  narr.each do |hash|
    count = arr.select { |hash_check| hash[:name] == hash_check[:name] }.count
    rarr << { :count => count, :name => hash[:name] }
  end
   rarr
 end
 
 def merge_data(keys, vals)
  rarr = []
     keys.each do |hash|
       vals.each do |objectVal|
         found = objectVal.select {|key, val| key == hash[:first_name]}[ hash[:first_name] ]
         found.store(:first_name, hash[:first_name])
         found.store(:motto, hash[:motto])
         
         rarr << found
       end
     end
  rarr
end

def find_cool(coll)
  rarr = []
  coll.each do |hash|
    rarr << {:name => hash[:name], :temperature => hash[:temperature] } if hash[:temperature] == "cool"
  end
  rarr 
end

def organize_schools(coll)
   rhash = {}
   coll.each do |objectHash|
     
      location = objectHash[1][:location]
      #binding.pry
      if !rhash.key?(location)
         rhash.store(location, Array[objectHash[0]]) #create new key-pair if not already there
      else #already here 
         value = rhash.values_at(location).flatten
         rhash.store(location, value.push(objectHash[0]))
      end 
      #binding.pry
   end
   rhash
end

