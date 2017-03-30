def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |k1, v1|
    v1.each do |k2, v2|
      v2.each do |names|
        if !new_hash[names]
          new_hash[names] = {k1 => [k2.to_s]}
        elsif !new_hash[names][k1]
          new_hash[names][k1] = [k2.to_s]
        else
          new_hash[names][k1] << k2.to_s
        end
      end
    end
  end

  new_hash
end
