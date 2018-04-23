def nyc_pigeon_organizer(data)
  result = {}

  data.each do |trait_type, traits|
    traits.each do |trait, names|
      names.each do |name|
        if result.has_key?(name)
          if result[name].has_key?(trait_type)
            result[name][trait_type] << trait.to_s
          else
            result[name][trait_type] = [trait.to_s]
          end
        else
          result[name] = {trait_type => [trait.to_s]}
        end
      end
    end
  end
  result
end
