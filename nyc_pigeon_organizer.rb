def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}

  data.each do |trait, options|
  	options.each do |option, pigeons|
  		pigeons.each do |pigeon|
  			new_hash[pigeon] ||= {}
  			new_hash[pigeon][trait] ||= []
  			new_hash[pigeon][trait] << option.to_s
  		end
  	end
  end

  new_hash

end