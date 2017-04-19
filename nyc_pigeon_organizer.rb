def nyc_pigeon_organizer(data)
  organized_pigeon = {}

  data.each do | category, attributes |
    attributes.each do | attribute, pigeons |
      pigeons.each do |pigeon|
        organized_pigeon[pigeon] ||= {}
        organized_pigeon[pigeon][category] ||= []
        organized_pigeon[pigeon][category] << attribute.to_s
      end
    end
  end

  organized_pigeon
  # write your code here!
end
