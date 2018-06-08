def nyc_pigeon_organizer(data)
  sorted_pigeons = {}
  data.each do |color_gender_lives, detail|
    detail.each do |detail_data, name_array|
      name_array.each do |name|
        sorted_pigeons[name] = {}
        end
      end
    end
  sorted_pigeons.each do |name, attribute|
    data.each_key do |key|
      attribute[key] = []
    end
  end
  sorted_pigeons.each do |name, attributes|
    attributes.each do |category, array|
      data.each do |color_gender_lives, detail|
        detail.each do |detail_data, name_array|
          if name_array.include?(name) && category == color_gender_lives
            array << detail_data.to_s
          end
        end
      end
    end
  end
  sorted_pigeons
end
