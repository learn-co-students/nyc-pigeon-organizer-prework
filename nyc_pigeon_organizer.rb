require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = Hash.new 
  data.each do |attribute, value|
  	value.each do |attr, val|
	  val.each do |v|
  	    pigeons[v] = {
  	    color: [],
  	    gender: [],
  	    lives: []
	    } 
	  end
  	end 
  end 
  
  pigeons.each do |name, stats| 
  	stats.each do |stat, values|
	  data.each do |attribute, value|
	    value.each do |attr, val| 
	      if val.include?(name) && !stats[attribute].include?(attr.to_s)
	      	stats[attribute] << attr.to_s
	      end
	    end 
	  end 
	end 
  end

end