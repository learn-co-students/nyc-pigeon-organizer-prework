def nyc_pigeon_organizer(data)
  organized = {}

  data.each { |attribs, hashes|
    hashes.each { |characteristic, names|
      names.each { |name|
        organized[name] = organized[name] ? organized[name] : {}
        organized[name][attribs] = organized[name][attribs] ? organized[name][attribs] : []
        organized[name][attribs] << characteristic.to_s
      }
    }
  }
  organized
end