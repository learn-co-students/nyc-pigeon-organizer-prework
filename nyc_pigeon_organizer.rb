require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |attribute, info|
    info.each do |category, array|
      array.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}

      end 
    end 
  end 

pig_names = pigeon_list.keys
  data[:color].each do |color, name|
    name.each do |bird_name|
      pig_names.each do |x|
        if bird_name == x
          pigeon_list[x][:color] << color.to_s 
        end 
      end 
    end   
  end 
  
  data[:gender].each do |gender, name|
    name.each do |bird_name|
      pig_names.each do |x|
        if bird_name == x   
          pigeon_list[x][:gender] << gender.to_s
        end
      end 
    end 
  end 

  data[:lives].each do |area, name|
    name.each do |bird_name|
      pig_names.each do |x|
        if bird_name == x 
          pigeon_list[x][:lives] << area.to_s 
        end 
      end 
    end 
  end 
  pigeon_list
end 
