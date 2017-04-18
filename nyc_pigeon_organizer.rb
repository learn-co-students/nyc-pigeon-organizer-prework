require "pry"

def nyc_pigeon_organizer(data)
  pigeon = {}
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if pigeon[name]
        else
          pigeon[name] = {}
        end
        if pigeon[name][key]
          pigeon[name][key] << k.to_s 
        else
          pigeon[name][key] = [k.to_s]
        end
      end
    end
  end
  pigeon
end
