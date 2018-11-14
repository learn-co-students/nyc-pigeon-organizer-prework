def nyc_pigeon_organizer(data)
hashy = {}
  data.each do |attributes,data1|
    data1.each do |key, names|
      names.each do |individual_names|
      hashy[individual_names]= {:color =>[], :gender =>[], :lives =>[]}
        
      end
    end
  end
data.each do |attributes,data1|
    data1.each do |key, names|
      names.each do |individual_names| 
        hashy.each do |hashy_names,hashy_data|
          if individual_names == hashy_names
            hashy[hashy_names][:"#{attributes}"] << "#{key}"
          end
        end
      end
    end
end
hashy  
end   
 
