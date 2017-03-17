require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  new_list = {}
  color_list = [:purple,:grey,:white,:brown]
  data.each do |k|
    k.each do |ke,va|
      if ke.class == Hash
        ke.each do |key,val|
          val.each do |pigeon|
            if new_list.keys.include?(pigeon)
              if color_list.include?(key)
                  new_list[pigeon][:color] << key.to_s
              end
            else
              new_list[pigeon] = {:color => [key.to_s], :gender => [], :lives => []}
              data[:gender].each do |g, gv|
                if gv.include?(pigeon)
                  new_list[pigeon][:gender] << g.to_s
                end
              end
              data[:lives].each do |l, lv|
                if lv.include?(pigeon)
                  new_list[pigeon][:lives] << l
                end
              end
            end
          end
        end
      end
    end
  end
  new_list
end

def test

end
