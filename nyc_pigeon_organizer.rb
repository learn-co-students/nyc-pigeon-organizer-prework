require "pry"

def nyc_pigeon_organizer(data)

pigeon_list = {}

data.each do |pigeon_color_gender_lives, cgl_hash|
  cgl_hash.each do |stats, names|
    names.each do |name|
      !pigeon_list.include?(name) ? (pigeon_list[name] = Hash.new) : nil
        if !pigeon_list[name].include?(pigeon_color_gender_lives)
          pigeon_list[name][pigeon_color_gender_lives] = Array.new
          pigeon_list[name][pigeon_color_gender_lives].push(stats.to_s)
        else
          pigeon_list[name][pigeon_color_gender_lives].push(stats.to_s)
      end
    end
  end
end
  return pigeon_list
end
