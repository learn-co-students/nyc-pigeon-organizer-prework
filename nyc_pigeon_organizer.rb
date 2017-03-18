def nyc_pigeon_organizer(data)
  # write your code here!
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
