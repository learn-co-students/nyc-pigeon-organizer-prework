def nyc_pigeon_organizer(data)
  pigeon_names = []
  pigeon_list = {"" => { :a => []}}
    # "Theo" => {},
    # "Peter Jr." => {},
    # "Lucky" => {},
    # "Ms. K" => {},
    # "Queenie" => {},
    # "Andrew" => {},
    # "Alex" => {},
  # }
  data.each do |category, subcategory|
    if category == :gender
      subcategory.each do |x, y|
        y.each do |z|
          pigeon_list[z] = z
          # binding.pry
        end
      end
    end
  end
  data.each do |category, subcategory|
    subcategory.each do |a, b|
        pigeon_list.each do |lcat, lsub|
          # binding.pry
          pigeon_list[lcat] = category
          b.each do |c|
            if c == lcat
              # pigeon_list[lcat] << c
              # binding.pry
            end
          end
          # binding.pry
        end
    end
  end
  binding.pry
  pigeon_list
end
end