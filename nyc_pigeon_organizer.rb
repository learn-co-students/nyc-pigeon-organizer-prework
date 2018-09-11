require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |attribute, detail_hash| # |:color, {:purple=>["Theo", "Peter Jr.", "Lucky"],...}|
    detail_hash.each do |attr_detail, name_array| # |:purple, ["Theo", "Peter Jr.", "Lucky"]
      name_array.each do |name| # |"Theo"|
          pigeon_list[name] ||= {} # create a new key-value pair
          pigeon_list[name][attribute] ||= [] # create a new key-value pair
          pigeon_list[name][attribute] << attr_detail.to_s # pushes the attr_details as a string value
      end
    end
  end
  pigeon_list
end
