# write your code here!pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    :female => ["Queenie", "Ms. K"]
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
require "pry"

def nyc_pigeon_organizer(data)
  a={}
  data.each do |asl,statlist|
    statlist.each do |stat,namelist|
      namelist.each do |name|
      a[name]={}
    end
  end
end
#binding.pry
data.each do |asl,statlist|
  statlist.each do |stat,namelist|
    namelist.each do |name|
    a[name][asl]=[]
    end
  end
end

data.each do |asl,statlist|
  statlist.each do |stat,namelist|
    namelist.each do |name|
    a[name][asl] << stat.to_s
  end
end
end


puts a
  return a
end
