def nyc_pigeon_organizer(data)
  birds = []
  out = {}
  data.each do |stat, vals|
    vals.each do |val, names|
      names.each do |name|
        if !birds.include?(name)
          birds << name
        end
      end
    end
  end
  birds.each do |bird|
    out[bird] = {}
    data.each do |stat, vals|
      out[bird][stat] = []
      vals.each do |val, names|
        if names.include?(bird)
          out[bird][stat] << val.to_s
        end
      end
    end
  end
  out
end