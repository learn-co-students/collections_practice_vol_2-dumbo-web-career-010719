require 'pry'

# your code goes here
def begins_with_r(arr)
  res = true
  arr.find do |tool|
    if tool[0] != 'r'
      res = false
    end
  end
  res
end

def contain_a(arr)
  # res = []
  # arr.each do |word|
  #   if word.include?('a')
  #     res << word
  #   end
  # end
  # res
  arr.select do |word|
    word.include?('a')
  end
end

def first_wa(arr)
  arr.find do |word|
    word[0..1] == 'wa'
  end
end

def remove_non_strings(arr)
  arr.delete_if do |e| 
    !(e.is_a? String)
  end
end

def count_elements(arr)
  arr.each do |el|
    el[:count] = arr.count(el)
  end.uniq do |h| 
    h[:name]
  end
end

def merge_data(keys, data)
  keys.each do |d1|
    data.each do |d2|
      d2.each do |person, stats|
        stats.each do |att, val|
          if person == d1[:first_name]
            d1[att] = val
          end
        end
      end
    end
  end
end

def find_cool(data)
  data.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(data)
  res = {}
  data.each do |school, info|
    if res[info[:location]] == nil
      res[info[:location]] = [school]
    else
      res[info[:location]] << school
    end
  end
  res
end


