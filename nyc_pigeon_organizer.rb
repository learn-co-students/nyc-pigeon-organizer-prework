require 'pry'

  # name_array = []
  # pigeon_hash = {}
  # data.each do |key, value|
  #   value.each do |attribute, names|
  #     names.each do |name|
  #         name_array<<name
  #     end
  #   end
  # end
  #
  # name_array.each do |pigeon|
  #   pigeon_hash[pigeon] = {}
  #
  #   data.keys.each do |attribute|
  #     pigeon_hash[pigeon][attribute] = []
  #   end
  # end

def nyc_pigeon_organizer(data)

data.each_with_object({}) do |(keys, values), pigeon_hash|
  values.each do |key, value|
    value.each do |name|
      pigeon_hash[name] ||= {}
        pigeon_hash[name][keys] ||= []
          pigeon_hash[name][keys]<<key.to_s
  # binding.pry
    end
  end
end
end













# name_array.each do |pigeon|
#   data.each do |key, value|
#     value.each do |attribute, names|
#       names.each do |name|
#
#
#       if pigeon == name
#         pigeon_hash[pigeon][key]<<attribute.to_s
#
#           # binding.pry
#         # if data[key][attribute].include?(name)
#         #
#         #   # pigeon_hash.keys.include?(name)
#         # pigeon_hash[pigeon][key]<<attribute.to_s
#
# # binding.pry
# end
# end
# end
# end
# end
# binding.pry
# pigeon_hash
# end
