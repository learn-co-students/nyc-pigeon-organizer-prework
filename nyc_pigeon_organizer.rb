def nyc_pigeon_organizer(pigeon_data)
  data = pigeon_data
  pigeon_org = {}
  data.each { |category, identifier|
    data[category].each { |id, name_array|
      data[category][id].each { |name|
        pigeon_org[name] = {}
      }
    }
  }
  pigeon_org.each { |pigeon, attributes|
    data.each { |category, identifier|
      data[category].each { |id, name_array|
        data[category][id].each { |name|
          if name == pigeon
            pigeon_org[pigeon][category] = []
          end
        }
      }
    }
  }
  pigeon_org.each { |pigeon, attributes|
    data.each { |category, identifier|
      data[category].each { |id, name_array|
        if name_array.include?(pigeon)
          pigeon_org[pigeon][category] << id.to_s
        end
      }
    }
  }
  pigeon_org
end