require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, entries|
    entries.each do |entry, birds|
      birds.each do |bird|
        if !pigeon_list[bird]
          pigeon_list[bird] = {}
        end
        if !pigeon_list[bird][category]
          pigeon_list[bird][category] = [entry.to_s]
        else
          pigeon_list[bird][category] << entry.to_s
        end
      end
    end
  end
  pigeon_list
end
