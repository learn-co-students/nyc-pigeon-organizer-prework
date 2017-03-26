def nyc_pigeon_organizer(data)
  pigeon_stats = {}
  data.each do |info, stats|
    stats.each do |statistic, birds|
      birds.each do |bird|
        if pigeon_stats[bird] == nil
          pigeon_stats[bird] = {}
        end
        if pigeon_stats[bird][info] == nil
          pigeon_stats[bird][info] = []
        end
        pigeon_stats[bird][info] << statistic.to_s
      end
    end
  end
  pigeon_stats
end
