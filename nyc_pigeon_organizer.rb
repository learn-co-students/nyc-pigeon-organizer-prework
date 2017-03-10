require "pry"
=begin
data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
=end




def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |category, sub_category|
    sub_category.each do |detail, names|
      names.each do |pigeon|
      if pigeon_list.include?(pigeon) == false

        pigeon_list[pigeon] = {
          :color => [],
          :gender => [],
          :lives => []
        }



      end



      end

      pigeon_list.each do |new_name, value|

        if names.include?(new_name)

          value[category] << detail.to_s













        end

      end

    end



  end

pigeon_list

end

#nyc_pigeon_organizer(data)
