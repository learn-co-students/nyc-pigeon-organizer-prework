
def nyc_pigeon_organizer(data)
holder_object = {}

data.each do |feature, values|
values.each do |value, pigeons|
  pigeons.each do |pigeon|
  holder_object[pigeon] ||= {}
  holder_object[pigeon][feature] ||= []
  holder_object[pigeon][feature] << value.to_s
 end
 end
end
return holder_object
end