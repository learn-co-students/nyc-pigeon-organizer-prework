require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |stats, inner_data|
    inner_data.each do |item, values|
        values.each do |value|
          if !pigeon_list.include?(value)
            pigeon_list[value] = {}
          end
      end
    end
    pigeon_list.each do |pigeon, pigeon_stats|
      data.each do |stats, inner_data|
        if !pigeon_stats.include?(stats)
          pigeon_stats[stats] = []
        else
          inner_data.each do |item, values|
            if values.include?(pigeon)
              if !pigeon_list[pigeon][stats].include?(item.to_s)
                pigeon_list[pigeon][stats] << item.to_s
              end
            end
          end
        end
      end
    end
  end
pigeon_list
end
