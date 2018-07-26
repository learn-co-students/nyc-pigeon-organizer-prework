require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |category, data_items|
    data_items.each do |attributes, names|
      names.each do |name|
        if result[name] == nil
          result[name] = {}
          result[name][category] = [attributes.to_s]
        elsif result[name][category] == nil
          result[name][category] = [attributes.to_s]
        else
          result[name][category] << attributes.to_s
        end
      end
    end
  end
  result
end