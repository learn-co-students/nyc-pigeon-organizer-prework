#require 'pry'
# -updated-

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |attribute, attribute_hash|#:color, {:purple=>['Theo'...
    attribute_hash.each do |trait, name_array| #:purple, ['Theo',..]
      name_array.each do |name| # 'Theo'
        
        list[name] ||= {} # 'Theo' => {}
        list[name][attribute] ||= [] # {"Theo"=>{:purple=>[] 
        list[name][attribute] << trait.to_s #{"Theo"=>{:color=>["purple"]
        
      end
    end
  end
  list
end




#-original-

def nyc_pigeon_organizer(data)
  list_hash = {}

  data.each do |attribute, attribute_hash|
    attribute_hash.each do |attribute_name, name_array|
      name_array.each do |name|

       if !list_hash[name]
          list_hash[name] = {}
          list_hash[name][attribute] = [attribute_name.to_s]
       elsif !list_hash[name][attribute]
         list_hash[name][attribute] = [attribute_name.to_s]
       else list_hash[name][attribute] << attribute_name.to_s
       end

     end
    end
  end
  return list_hash
end
