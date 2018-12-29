require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon = {}
  bird_names = data[:gender].values.flatten
  bird_names.each do |name|
    pigeon[name] = {}
  end
  data.each do |info, group_data|
    group_data.each do |bio, name|
      name.each do |bird|
        if pigeon[bird].has_key?(info)
          pigeon[bird][info] << bio.to_s
        else
          pigeon[bird][info] = [bio.to_s]
        end
      end
    end
  end
  pigeon
end
