def nyc_pigeon_organizer(data)
  # write your code here!
  names = data[:gender][:male] + data[:gender][:female]
  puts names
  new_pigeons = {}
  names.each { |name|
    new_pigeons[name] = {
      color: data[:color].collect{|k,v| k.to_s if v.include?(name)}.compact,
      gender: data[:gender].collect{|k,v| k.to_s if v.include?(name)}.compact,
      lives: data[:lives].collect{|k,v| k.to_s if v.include?(name)}.compact,
    }
  }
  new_pigeons
end
