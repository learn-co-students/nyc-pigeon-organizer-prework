require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key1, hash|
    hash.each do |attribute, array|
      array.each do |value|
        if new_hash[value].nil?
          new_hash[value]={}
          #binding.pry
        end
        new_hash[value][key1]||=[]
        new_hash[value][key1]<<attribute.to_s
        #binding.pry
      end
    end
  end
  new_hash
end
