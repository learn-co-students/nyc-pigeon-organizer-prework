
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |k1,v1|
      v1.each do |k2,v2|
        v2.each {|x| pigeon_list[x] = {}}
      end
  end

  pigeon_list.each do |bird,dats|
    data.each do |k,v|
      arr = []
      v.each {|attrib,array| arr << attrib.to_s if array.include?(bird)}
      dats[k] = arr
    end
  end

return pigeon_list
end
