require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |stats, info|
    info.each do |type, names|
      names.each do |bird|
        if !new_hash.has_key?(bird)
          new_hash[bird] = {}

        end

        if !new_hash[bird].has_key?(stats)
          new_hash[bird][stats] = []
        end

        if !new_hash[bird][stats].include?(type)
          new_hash[bird][stats] << type.to_s
        end
      end
    end
  end
  new_hash
end