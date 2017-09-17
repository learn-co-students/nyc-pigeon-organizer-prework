require 'pry'
def nyc_pigeon_organizer(data)
  result = {}
  data.each do |main_attr, hsh|
    hsh.each do |sub_attr, ary|
      ary.each do |name|
        result[name] ||= {}
        result[name][main_attr] ||= []
        result[name][main_attr] << sub_attr.to_s
      end
    end
  end
  result
end
