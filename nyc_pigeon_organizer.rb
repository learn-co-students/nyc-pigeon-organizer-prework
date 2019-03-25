require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |detail_key, detail_hash|
    detail_hash.each do |attribute_detail, name|
      name.each do |name_from_ary|
        if (new_hash[name_from_ary] == nil)
          new_hash[name_from_ary] = {}
        end
        if (new_hash[name_from_ary][detail_key] == nil)
          new_hash[name_from_ary][detail_key] = [attribute_detail.to_s]
        else
          new_hash[name_from_ary][detail_key] = new_hash[name_from_ary][detail_key].push(attribute_detail.to_s)
        end
      end
    end
  end  
  return new_hash
end