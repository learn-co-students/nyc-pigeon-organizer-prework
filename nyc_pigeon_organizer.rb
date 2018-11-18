require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  
#first section creates hash with keys of birds names
  data.each do |cgl, pdata|
#   binding.pry
    pdata.each do |identifier, name|
      for i in 0...name.length
#     binding.pry
        new_hash[name[i]] = {}
#        binding.pry
      end
    end
  end
#  binding.pry

# new_hash = {
# "Theo"=>{},
# "Peter Jr."=>{},
# "Lucky"=>{},
# "Ms. K"=>{},
# "Queenie"=>{},
# "Andrew"=>{},
# "Alex"=>{}
# }

#second piece enumerates over data and puts in new name hash
  data.each do |cgl, pdata|
    new_hash.keys.each do |names|
#      binding.pry
      new_hash[names][cgl] = []
      pdata.each do |identifier, name|
#        binding.pry
        for i in 0...name.length
          if name[i] == names
            new_hash[names][cgl].push(identifier.to_s)
          end
        end
      end
    end
  end
  new_hash
end