require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |characteristics, attributes|
    attributes.each do |value, names|
      names.each do |name|
# ||= is useful i you want to do nothing if it does exist but create it if it doesn't exist
        pigeon_hash[name] ||= {}
        pigeon_hash[name][characteristics] ||= []
        pigeon_hash[name][characteristics] << value.to_s
      end
    end
  end
  pigeon_hash
end