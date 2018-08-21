require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = []

  data.each do |attribute, type|
    type.each do |type, name|
      pigeon_names << name
    end
  end

  pigeon_names = pigeon_names.flatten.uniq

  pigeon_names.each do |bird_name|
    pigeon_list[bird_name] = {}
  end

  pigeon_names.each do |bird_name|
    pigeon_list[bird_name][:color] = []
    pigeon_list[bird_name][:gender] = []
    pigeon_list[bird_name][:lives] = []
  end

  pigeon_list.each do |bird_name|
    data.each do |attribute, type|
      type.each do |type, name|
        if name.include?(bird_name[0])
          pigeon_list[bird_name[0]][attribute] << type.to_s
        end
      end
    end
  end
end
