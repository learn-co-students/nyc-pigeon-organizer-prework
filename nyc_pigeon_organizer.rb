require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |cgl, pdata|
 #   binding.pry
    pdata.each do |identifier, name|
      for i in 0...name.length
 #     binding.pry
        if new_hash[name[i]] == nil
          new_hash[name[i]] = [cgl]
        else
          new_hash[name[i]] += [cgl]
        end
      end
    end
  end
  new_hash.each do |name, cgl|
    new_hash[name] = cgl.uniq
    binding.pry
  end
end



{"Theo"=>[:color, :gender, :lives],
 "Peter Jr."=>[:color, :gender, :lives],
 "Lucky"=>[:color, :gender, :lives],
 "Ms. K"=>[:color, :gender, :lives],
 "Queenie"=>[:color, :gender, :lives],
 "Andrew"=>[:color, :gender, :lives],
 "Alex"=>[:color, :gender, :lives]}