require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  #collects the bird names and puts them into the new hash as keys of hashes
  data.each do |top_key,level_down_hash|
    if top_key == :gender
      birdies_arr = level_down_hash.values.flatten
      pigeon_list = Hash[birdies_arr.collect {|elem| [elem, {}]}]
    end
  end
  
  #add color, gender, lives to each bird hash
  pigeon_list.each do |bird_hash|
    pigeon_list[bird_hash[0]] = Hash[data.keys.collect {|x| [x, []]}]
  end
  
  #create arrays for each bird and put them into their correct key
  pigeon_list.each do |bird, cgl_hash|
    cgl_hash.each do |cgl_key,cgl_val_arr|
      data[cgl_key].each do |a, biiird|
        if biiird.include? bird
          cgl_val_arr << a.to_s
        end
      end
    end
  end
  pigeon_list
end