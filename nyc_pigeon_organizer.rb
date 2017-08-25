# what's a more efficient way to do this?
require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  names = []
  pigeon_list = {}
  pigeon_data.each do |class_sym, a_hash|
    a_hash.each do |stat_sym, names_ary|
      names_ary.each do |name|
        names.push(name)
      end
    end
  end

  names = names.uniq
  names.each do |name|
    pigeon_list[name] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end

pigeon_data.each do |class_sym, a_hash|
  a_hash.each do |stat_sym, names_ary|
    names_ary.each do |name|
      if pigeon_data[class_sym][stat_sym].include?(name)
      pigeon_list[name][class_sym] << stat_sym.to_s
      end
    end
  end
end
 pigeon_list
end
