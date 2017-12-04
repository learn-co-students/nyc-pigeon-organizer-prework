require "pry"

def nyc_pigeon_organizer(data)
    pigeons = {}
    data.each do |attr,specs|
        specs.each do |categ, names|
            names.each do |name|
                pigeons[name] = {}
                data.keys.each do |key|
                    pigeons[name][key] = []
                end
            end
        end
    end
    data.each do |attr,specs|
        specs.each do |categ, names|
            names.each do |name|
                if names.include?(name)
                    pigeons[name][attr] << categ.to_s
                end
            end
        end
    end
    pigeons
end
