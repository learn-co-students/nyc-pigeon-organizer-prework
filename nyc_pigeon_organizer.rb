def nyc_pigeon_organizer(data)
    new_data = {}
    data.each do |attribute, att_data|
        att_data.each do |option, pigeons|
            pigeons.each do |pigeon|
                if !new_data.has_key?(pigeon)
                    new_data[pigeon] = {}
                end
                if !new_data[pigeon].has_key?(attribute)
                    new_data[pigeon][attribute] = []
                end
                new_data[pigeon][attribute] << option.to_s
            end
        end
    end
    new_data
end
