def nyc_pigeon_organizer(data)
  # write your code here!
  organizedData = Hash.new
  data.each do |attributeType, attributeValues |
    attributeValues.each do |attributeValue, birdNames|
      birdNames.each do |bird|
        organizedData[bird] = {} unless organizedData[bird]
        organizedData[bird][attributeType] = [] unless organizedData[bird][attributeType]
        organizedData[bird][attributeType].push(attributeValue.to_s)
      end
    end
  end
  return organizedData
end
