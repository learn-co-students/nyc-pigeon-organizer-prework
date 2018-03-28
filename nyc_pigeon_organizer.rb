def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |stat,hash|
    hash.each do |specific,birds| #purple
      birds.each do |bird|
        new_hash[bird] ||= {color: [], gender: [], lives: []}
        new_hash[bird][stat] << specific.to_s 
      end
    end
  end
  return new_hash
end