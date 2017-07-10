require 'pry'


def nyc_pigeon_organizer(data)
    pigeon_list = {}
    data.each do |subdata, list|
        if subdata == :lives
            list.each do |key, array|
                array.each do |element|
                    pigeon_list[element] = {}
                end
            end
        end
    end
    data.each do |subdata, list|
        list.each do |attribute, array|
            array.each do |name|
                pigeon_list[name][subdata] = []
            end
        end
    end
    pigeon_list.each do |name, attribute|
        attribute.each do |subattribute, array|
            data[subattribute].each do |key, value|
                if data[subattribute][key].include? name
                    pigeon_list[name][subattribute] << key.to_s
                    end
            end
        end
    end
    pigeon_list
end
