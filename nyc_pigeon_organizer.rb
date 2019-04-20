require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = {}
  data.each do |category, attrib|
    attrib.each do |value, names|
      names.each do |name|
        organized_data[name] ||= {}
        organized_data[name][category] ||= []
        organized_data[name][category] << value.to_s
      end
    end
  end
  organized_data
end
