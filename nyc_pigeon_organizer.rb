require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  organized_pigeons = {}
  pigeon_data.each do |attributes, data_hash|
    data_hash.each do |catagory, names_array|
      names_array.each do |name|
        if organized_pigeons[name].nil?
          organized_pigeons[name] = {
            color: [],
            gender: [],
            lives: []
          }
        end
        organized_pigeons[name][attributes] << catagory.to_s 
      end
    end
  end
  organized_pigeons
end