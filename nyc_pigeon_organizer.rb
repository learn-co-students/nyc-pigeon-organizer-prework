
require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  colors = data[:color]
  gender = data[:gender]
  lives = data[:lives]
  reformating(colors, :color, pigeon_list)
  reformating(gender, :gender, pigeon_list)
  reformating(lives, :lives, pigeon_list)
end

def reformating(hash, symbol_key, pigeon_list)
  hash.each do |attribute, name_array|
    name_array.each do |name|
      if pigeon_list[name].nil?
        pigeon_list[name] = {symbol_key => [attribute.to_s]}
      elsif pigeon_list[name][symbol_key].nil?
        pigeon_list[name][symbol_key] = [attribute.to_s]
      else
        pigeon_list[name][symbol_key] << attribute.to_s
      end
    end
  end
  pigeon_list
end
