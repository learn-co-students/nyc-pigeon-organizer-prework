require 'pry'
def nyc_pigeon_organizer(data)
  pidgeon_list=Hash.new
    data.each do |category,value_of_category_arr|
      value_of_category_arr.each do |singlevalue,array_name|
        array_name.each do |pidgeon_name|

          if !pidgeon_list.has_key?(pidgeon_name)
            pidgeon_list[pidgeon_name]={}
          end
            if !pidgeon_list[pidgeon_name].has_key?(category)
              pidgeon_list[pidgeon_name][category]=[]
            end
            if !pidgeon_list[pidgeon_name][category].include?(singlevalue)
              pidgeon_list[pidgeon_name][category]<< singlevalue.to_s
        end
    end
    end
    end
    
    pidgeon_list
end