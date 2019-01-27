def nyc_pigeon_organizer(data)
  organize = {}

  data.each do |attribute, subdata|
    subdata.each do |otherdata, pigeons|
      pigeons.each do |pigeon|
        organize[pigeon] ||= {}
        organize[pigeon][attribute] ||= []
        organize[pigeon][attribute] << otherdata.to_s
      end
    end
  end
  organize
end
