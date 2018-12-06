require "pry"
# def nyc_pigeon_organizer(data)
# pigeon_list ={}
#   pigeons=[]
#     data.each do |attributes,type_hash|
#       type_hash.each do |type_symbol,values_array|
#           binding.pry
#       if attributes == :gender
#         pigeons << values_array
#         pigeons = pigeons.flatten
#         pigeons.each do |name|
#           pigeon_list[name]={attribues}
#
# end
# end
# end
# end
# end
def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, hash), result|
    hash.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
          # binding.pry
      end
    end
  end
end
