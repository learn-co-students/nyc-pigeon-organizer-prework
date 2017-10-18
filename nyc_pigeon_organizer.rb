require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, data|
    data.each do |attribute, array|
      array.each do |name|
        #binding.pry
        pigeon_list[name] ||= {}
        pigeon_list[name][category] ||= []
        pigeon_list[name][category] << attribute.to_s
        #binding.pry
      end
    end
  end
  pigeon_list
end
