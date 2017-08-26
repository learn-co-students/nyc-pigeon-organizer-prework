require 'pry'
def nyc_pigeon_organizer(data)
  name_arr = []
  color = {}
  gender = {}
  lives = {}

  data.each {|item, details|
    details.each {|detail, pigeons|
      pigeons.each {|name|
        if item == :color
          if name_arr.include?(name) == false
            name_arr << name
            color[name] = [detail.to_s]
          elsif name_arr.include?(name)
            color[name] << detail.to_s
          end
        end

        if item == :gender
            gender[name] = [detail.to_s]
        end

        if item == :lives
            lives[name] = [detail.to_s]
        end
      }
    }
  }


  pigeon_list = {}
  name_arr.each {|pigeon|
    pigeon_list[pigeon] = {:color => color[pigeon], :gender => gender[pigeon],:lives => lives[pigeon]}
  }
  pigeon_list
end
