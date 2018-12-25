require 'pry'
#begins_with_r
#Return true if every element of the tools array starts with an "r" and false otherwise.

def begins_with_r (tools_array)

tools_array.all? {|word| word[0]=="r"}

end
=begin
array1=["ruby", "rspec", "rails"]
puts begins_with_r (array1)
array2=["ruby", "rspec", "sails"]
puts begins_with_r (array2)
=end
#return all elements that contain the letter 'a'
def contain_a (array)
	array.select {|element| element.include?("a")}
end
=begin
array=["earth", "fire", "wind", "water", "heart"]
puts contain_a (array)
=end
#first_wa---Return the first element that begins with the letters 'wa'
def first_wa (array)
	array.find {|word| word.match(/^wa/)}
end
#puts first_wa (["candy", :pepper, "wall", :ball, "wacky"])

#remove_non_strings --remove anything that's not a string from an array
def remove_non_strings (array)
	array.delete_if {|element| element.class != String }
end
#puts remove_non_strings(["blake", 1, :hello])

#count_elements ---count how many times something appears in an array
def count_elements (array_of_hashes)
#array_of_hashes = [ {:name=>'blake'}, {:name=>'blake'}, {:name=>'ashley'} ]
count_hash=Hash.new(0)
array_of_hashes.each {|hash|
         count_hash[hash]+=1
    }
    #puts new_hash
     #output: {{:name=>"blake"}=>2, {:name=>"ashley"}=>1}
   merge_count_hash=  count_hash.keys.map { |key| 
     	key[:count]=count_hash[key] 
     	key
     }
end

#merge_data---combines two nested data structures into one
def merge_data(keys, data)
	# keys=[{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, 
	#  {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]

	# data=[{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
	#  {"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
   
   merged=[]
 keys.each_with_index { |hash,index| merged<<keys[index].merge(data[index-index][hash[:first_name]])}     
 merged
 
end
 #find_cool find all cool hashes

 def find_cool (cool_array_of_hash)
=begin [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]
=end

 answer=cool.select{|hash|  hash[:temperature] == "cool"}.map{|cool_hash| cool_hash}

 end
 #organize_schools---organizes the schools by location

 def organize_schools (school_hash)
 
=begin 
 hash={}
 nyc=[]
 sf=[]
 chicago=[]

 	school_hash.map { |k,v|  
                       if v[:location]=="NYC"
                           hash["NYC"]= nyc.push (k)
                        elsif v[:location]=="SF"
                             hash["SF"] = sf.push (k)
                        elsif v[:location]=="Chicago"
                          hash["Chicago"] = chicago.push (k)
                       end
 }
 hash
=end
	organized_school_hash = Hash.new()
 
    school_hash.each do |school_name, hash|
     	hash.each do |location_key, location|
       		if organized_school_hash[location].nil?
         	organized_school_hash[location] = [school_name]
       		else
         	organized_school_hash[location] << school_name
       		end
     	end
   end

         	organized_school_hash
 end