def nyc_pigeon_organizer(data)
  # write your code here!
  res = {}
  data.each {|attribute, attr_data|
    
    attr_data.each{| attr_name, bird_names |
      bird_names.each {|bird_name|
        if res[bird_name] == nil
          res[bird_name] = {}
        end
        if res[bird_name][attribute] == nil 
          res[bird_name][attribute] = []
        end
        res[bird_name][attribute] << attr_name.to_s
      }
    }
  }
  res
end

