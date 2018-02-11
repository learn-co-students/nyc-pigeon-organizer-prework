def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |details, data|
    data.each do |info, array|
      array.each do |name|
        if !organized_pigeons.has_key?(name)
          organized_pigeons[name] = {}
        end
        if !organized_pigeons[name].has_key?(details)
          organized_pigeons[name][details] = []
        end
        if !organized_pigeons[name][details].include?(info)
          organized_pigeons[name][details] << info.to_s
        end
      end
    end
  end
  organized_pigeons
end
