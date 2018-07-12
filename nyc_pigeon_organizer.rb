require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |trait, categories|
    # puts "#{trait}: #{categories.values}"

    #:color, {:purple => {...}}

    categories.each do |details, pigeons|
      #purple: ["Theo", "Peter Jr.", "Lucky"]
      #grey: ["Theo", "Peter Jr.", "Ms. K"]

      pigeons.each do |pigeon|
        #Check if pigeon is added to hash already. If empty, add pigeon to top level
        if pigeon_list[pigeon].nil?
          pigeon_list[pigeon] = {}
        end

        pigeon_list[pigeon][trait] ||= []
        pigeon_list[pigeon][trait].push(details.to_s)
      end
    end
  end
  pigeon_list
  # binding.pry
end
