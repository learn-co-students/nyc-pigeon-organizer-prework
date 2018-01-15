def nyc_pigeon_organizer(data)
  list = {}

  data.each do |category, trait|
    trait.each do |trait, names|
      names.each do |name|

        if list[name].nil?
          list[name] = {}
        end
        if list[name][category].nil?
          list[name][category] = []
        end
        if list[name][category].is_a? Array
          list[name][category] << trait.to_s
        end
      end
    end
  end
  list
end
