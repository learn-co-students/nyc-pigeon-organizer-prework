require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  list = {}
  names = []
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        names << name
      end
    end
  end
  names = names.uniq
  names.each do |name|
    list[name] = {color: [], gender: [], lives: []}
  end
  names.each do |name|
    data.each do |key, value|
      value.each do |k, v|
        if v.include?(name)
          list[name][key] << k.to_s
        end
      end
    end
  end
  list
end
