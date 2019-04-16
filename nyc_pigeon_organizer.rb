  require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |keys, colors|
    colors.each do |color, names|
      names.each do |name|
        if new_hash[name] ||= {}
          new_hash[name][keys] ||= []
          new_hash[name][keys].push(color.to_s)
          #binding.pry
        end
      end
    end
  end
  new_hash
end
