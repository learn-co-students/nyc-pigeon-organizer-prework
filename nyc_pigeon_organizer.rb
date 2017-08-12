
def getColor(data,name)
  result = []
  data.each do |tree, hash1|
    hash1.each do |catagory,array|
      if tree == :color
        array.each do |bird|
          if bird == name
            result.push(catagory.to_s)
          end
        end
      end
    end
  end
  return result
end

def getGender(data,name)
  result = []
  data.each do |tree, hash1|
    hash1.each do |catagory,array|
      if tree == :gender
        array.each do |bird|
          if bird == name
            result.push(catagory.to_s)
          end
        end
      end
    end
  end
  return result
end

def getLives(data,name)
  result = []
  data.each do |tree, hash1|
    hash1.each do |catagory,array|
      if tree == :lives
        array.each do |bird|
          if bird == name
            result.push(catagory.to_s)
          end
        end
      end
    end
  end
  return result
end

def nyc_pigeon_organizer(data)
  newHash = {}
  data.each do |tree,hash1|
    hash1.each do |catagory, array|
      array.each do |name|
        if newHash[name] == nil
          newHash[name] =
          {
            color: getColor(data,name),
            gender: getGender(data,name),
            lives: getLives(data,name)
          }
        end
      end
    end
  end
  return newHash
end
