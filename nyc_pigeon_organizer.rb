require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, categories|
    # puts "#{attribute}: #{categories.values}"

    #:color, {:purple => {...}}

    categories.map do |details, people|
      #purple: ["Theo", "Peter Jr.", "Lucky"]
      #grey: ["Theo", "Peter Jr.", "Ms. K"]

      people.map do |person|
        #Check if person is added to hash already. If empty, add person to top level
        if pigeon_list[person].nil?
          pigeon_list[person] = {}
        end

        pigeon_list[person][attribute] ||= []
        pigeon_list[person][attribute].push(details.to_s)
      end
    end
  end
  pigeon_list
  # binding.pry
end
