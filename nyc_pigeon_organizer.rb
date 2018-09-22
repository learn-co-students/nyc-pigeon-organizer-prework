require 'pry'
def nyc_pigeon_organizer(data)
  pidgeon_list=Hash.new
    data.each do |category,value_of_category_arr|
      value_of_category_arr.each do |singlevalue,array_name|
        array_name.each do |pidgeon_name|
                binding.pry

          if pidgeon_list.has_key?(pidgeon_name)
            pidgeon_list[pidgeon_name][category] << singlevalue
        
      else
        pidgeon_list[pidgeon_name][category] = singlevalue
    end
    end
    end
    end
    pidgeon_list
end