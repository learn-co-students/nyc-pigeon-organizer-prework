require 'pry'

def nyc_pigeon_organizer(data)
  pigeons_uniq = []
  data.each do |attributes, details|
    details.each do |detail, name_arr|
      pigeons_uniq.concat(name_arr)
    end
  end
  pigeons_uniq.uniq!
  pigeon_list = {}
  pigeons_uniq.each do |pidgey| 
    pigeon_list[pidgey] = {:color => [], :gender => [], :lives => []}
  end
  pigeon_list
  pigeon_list.each do |name, hash|
    data.each do |a, b| # a :color, b colors_hash
      b.each do |c, d| # c :first_color, d array of names
        d.each do |item|
          if name == item
            pigeon_list[name][a] << c.to_s
          end
        end
      end
    end
  end
  pigeon_list
end