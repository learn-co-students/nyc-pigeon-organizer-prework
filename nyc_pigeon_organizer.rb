def nyc_pigeon_organizer(data)
  pidgeon_list = Hash.new
  data.each do |key, value|
    value.each do |att, pidgeons|
      pidgeons.each do |bird|
        pidgeon_list[bird] ||= {}
        pidgeon_list[bird][key] ||= []
        pidgeon_list[bird][key] << att.to_s
      end
    end
  end
  pidgeon_list
end
