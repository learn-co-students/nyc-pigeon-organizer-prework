def nyc_pigeon_organizer(data)
  # write your code here!
  new_data ={}
  new_data
  data[:color].each do |keys, values|
      values.each do |name|
          new_data[name] = {:color => []}
              new_data[name][:color].push(keys.to_s) if values.include?(name)
              new_data[name][:color]
              #binding.pry
          end
      end

data[:color].each do |keys, values|
    values.each do |name|
        new_data[name][:color].push(keys.to_s) if values.include?(name)
        new_data[name][:color] = new_data[name][:color].uniq
        end
    end
new_data
#binding.pry
  another_new_data = {}
  data[:gender].each do |keys, values|
      values.each do |names|
          if values.include?(names)
              #binding.pry
              #names[:gender] => keys
              another_new_data[names] = new_data[names].merge({:gender => [keys.to_s]})
              #binding.pry
      end
      end
      end
  another_new_data
  finished_data = {}
  data[:lives].each do |keys, values|
      values.each do |names|
          if values.include?(names)
               finished_data[names] = another_new_data[names].merge({:lives => [keys.to_s]})
               #binding.pry
      end
      end
      end
finished_data
#binding.pry
end
