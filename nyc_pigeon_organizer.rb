def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |all_data, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][all_data] ||= []
        pigeon_list[pigeon][all_data] << option.to_s
      end
    end
  end
  pigeon_list
end
