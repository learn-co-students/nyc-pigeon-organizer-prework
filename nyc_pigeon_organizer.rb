def nyc_pigeon_organizer(data)

complete_birds = {}

data.each do |attribute , details|
  details.each do |detail , names|
    names.each do |name|
      complete_birds[name] ||= {}
      complete_birds[name][attribute] ||= []
      complete_birds[name][attribute] << detail.to_s
    end
  end
end
complete_birds

  # write your code here!
end
