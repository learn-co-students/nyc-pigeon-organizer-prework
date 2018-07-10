require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  organizer = {}
  data.each do |attributes, attributes_hash|
    attributes_hash.each do |style, name|
      name.each do |pigeon|
        if organizer[pigeon] == nil
          organizer[pigeon] = {}
          organizer[pigeon][attributes] = [style.to_s]
        elsif organizer[pigeon][attributes] == nil
            organizer[pigeon][attributes] = [style.to_s]
        else
            organizer[pigeon][attributes] << style.to_s
          end
      end
    end
  end
  organizer
end
