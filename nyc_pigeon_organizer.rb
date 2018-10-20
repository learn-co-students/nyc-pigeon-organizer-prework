require "pry"

def nyc_pigeon_organizer(data)
  pigeon_names = []
  pigeon_list = {}
  data.each do |category, subcategory|
    subcategory.each do |x, y|
      y.each do |z|
        pigeon_list[z] ||= {}
        pigeon_list[z][category] ||= []
        pigeon_list[z][category] << x.to_s
      end
    end
  end
  pigeon_list
end
