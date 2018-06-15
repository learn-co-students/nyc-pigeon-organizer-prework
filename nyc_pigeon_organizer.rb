def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  arr =[]
  data.each do |k,v|
     v.each do |kk,vv|
     arr << vv 
       end 
  end
   name_keys = arr.flatten.uniq
   name_keys.each{|ele| new_hash[ele] = {}}
  
  new_hash.each do |k,v|  
  data.each do |kk,vv|
    #puts "This is the keys #{kk}"
    #puts "This is the values #{vv}"
     v[kk] =[]
    vv.each do |key,value|
      puts "deeeep KEY #{key}" 
      puts "deeeep VALUE #{value}"
      if value.include?(k.to_s)
        v[kk] << key.to_s
      end
 
end
  end
   end
  new_hash 
end