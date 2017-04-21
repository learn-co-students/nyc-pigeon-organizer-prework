require 'pry'
# def nyc_pigeon_organizer(data)
#   new_hash={}
#   data[:gender].values.each do |name_array|
#     name_array.each do |name|
#     if new_hash[name].nil?
#       new_hash[name]={}
#     end
#     new_hash[name]
#   end
#   end
#     new_hash
# end

def nyc_pigeon_organizer(data)
  new_hash={}
  data.each do |key, values|
    values.each do |category, array_names|
      array_names.each do |name|
        if new_hash[name].nil?
          new_hash[name]={:color=>[], :gender=>[], :lives=>[]}
        end
        new_hash[name][key]<<category.to_s
      end
    end
  end
  new_hash
end
