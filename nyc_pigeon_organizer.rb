require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}

  data.each do |key_one, val_one|
    val_one.each do |key_two, val_two|
      val_two.each do |el|
        # new_data[el] = {key_one=>[key_two.to_s]}
        if !(new_data.has_key?(el))
          new_data[el] = {key_one=>[key_two.to_s]}
          # binding.pry
        else
          if !(new_data[el].has_key?(key_one))
            new_data[el][key_one] = [key_two.to_s]
            # binding.pry
          else
            new_data[el][key_one] << key_two.to_s
            # binding.pry
          end
        end
      end
    end
  end
  new_data
end
