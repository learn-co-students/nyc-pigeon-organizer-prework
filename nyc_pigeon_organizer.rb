require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |attribute, details|
    details.each do |detail, name_array|
      name_array.each do |name|
        pigeons[name] ||= {}
        pigeons[name][attribute] ||= []
        pigeons[name][attribute] << detail.to_s
      end
    end
  end
  pigeons
end