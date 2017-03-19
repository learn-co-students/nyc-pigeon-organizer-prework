def nyc_pigeon_organizer(data)
  list = {}
  data.each do |subject, type|
    type.each do |t,a|
      a.each do |x|
        list[x] = {color: [], gender: [], lives: [] }
      end
    end
  end
  data.each do |subject, type|
    type.each do |t,a|
      a.each do |x|
        list[x][:color] << t.to_s if subject == :color
        list[x][:gender] << t.to_s if subject == :gender
        list[x][:lives] << t if subject == :lives
      end
    end
  end
  list
end
