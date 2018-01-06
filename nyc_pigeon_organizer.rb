require "pry"

#def nyc_pigeon_organizer(data) #data = attributes as symbols => spec attr (symb or string) => array of pigeon names with spec
  #pigeon_list = {} #end_result_hash = names as strings => attributes as symbols => array of attr strings for the individual pigeons
  #pigeon_names = [] #my keys for the end_result_hash
  #data.each do |attribute,attr_data|
    #attr_data.each do |spec,pigeon_array|
      #pigeon_array.each do |name| #having each item available from the data/original hash
        #pigeon_names += pigeon_array #creating an array of pigeon names to have keys for the end result hash
        #pigeon_names.uniq.each do |pigeon_name| #remove duplicates from the array and having each element available for end result
          #if pigeon_list[pigeon_name] == nil
            #pigeon_list[pigeon_name] = {}
          #end #create a hash for each pigeon for {attribute:array}
        #end
        #pigeon_list[name].merge!({attribute=>[]}) #add pigeon names into the end result + attribute
      #end
    #end
  #end
  #binding.pry
  #pigeon_list
#end

def nyc_pigeon_organizer(data) #data = attributes as symbols => spec attr (symb or string) => array of pigeon names with spec
  pigeon_list = {} #end_result_hash = names as strings => attributes as symbols => array of attr strings for the individual pigeons
  pigeon_names = [] #my keys for the end_result_hash
  data.each do |attribute,attr_data|
    attr_data.each do |spec,pigeon_array| #attribute symbol available, spec attr (symb/string), pigeon_array
      pigeon_names += pigeon_array #pigeon_names in an array
      pigeon_names.uniq.each do |name| #pigeon_names w/o duplicates
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end #end_result_hash has the keys
        #binding.pry
        pigeon_list[name].merge!({attribute=>[]}) #adding nested hash into end result wiht attribute and empty array
        #binding.pry
        if pigeon_array.include?(name) #check if the pigeon_array of old hash has the name of the pigeon
          pigeon_list[name][attribute] << spec.to_s #if so, add spec into array of pigeon key
        end
      end
    end
  end
  #binding.pry
  pigeon_list

end
