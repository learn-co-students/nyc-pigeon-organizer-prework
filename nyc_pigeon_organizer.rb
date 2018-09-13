require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, att_data|
    if attribute == :color
      att_data.each do |color, pigeons|
        pigeons.each do |name|
          if pigeon_list.keys.include?(name)
            pigeon_list[name][:color] << color.to_s
          else
            pigeon_list[name] ||= {color: []}
            pigeon_list[name][:color] << color.to_s
          end
        end
      end
    end
    if attribute == :gender
      att_data.each do |gender, gender_types|
        gender_types.each do |name|
          pigeon_list[name] = {gender: []}
          pigeon_list[name][:gender] << gender.to_s
        end
      end
    end
  end
  pigeon_list
end
