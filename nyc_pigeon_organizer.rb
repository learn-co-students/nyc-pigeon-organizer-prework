def nyc_pigeon_organizer(data)
    organized = {}
    
    data.each do |attribute, types|
        types.each do |type, names|
            names.each do |name|
                if organized[name] == nil
                    organized[name] = {attribute => [type.to_s]}
                elsif organized[name][attribute] == nil
                    organized[name][attribute] = [type.to_s]
                else
                    organized[name][attribute] << type.to_s
                end
            end
        end
    end
    
    organized
end

