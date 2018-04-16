def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}

  data.each do |attribute, attribute_hash|
    attribute_hash.each do |key, array|
      array.each do |names|
        hash[names] ||= {}
        hash[names][attribute] ||= []
        hash[names][attribute] << key.to_s
      end
    end
  end
  hash
end
