
[1mFrom:[0m /home/ramosianc-87324/code/labs/nyc-pigeon-organizer-prework/nyc_pigeon_organizer.rb @ line 26 Object#nyc_pigeon_organizer:

     [1;34m3[0m: [32mdef[0m [1;34mnyc_pigeon_organizer[0m(data)
     [1;34m4[0m:   [1;34m# write your code here![0m
     [1;34m5[0m:   list = {}
     [1;34m6[0m:   names = []
     [1;34m7[0m:   data.each [32mdo[0m |key, value|
     [1;34m8[0m:     value.each [32mdo[0m |k, v|
     [1;34m9[0m:       v.each [32mdo[0m |name|
    [1;34m10[0m:         names << name
    [1;34m11[0m:       [32mend[0m
    [1;34m12[0m:     [32mend[0m
    [1;34m13[0m:   [32mend[0m
    [1;34m14[0m:   names = names.uniq
    [1;34m15[0m:   names.each [32mdo[0m |name|
    [1;34m16[0m:     list[name] = {[35mcolor[0m: [], [35mgender[0m: [], [35mlives[0m: []}
    [1;34m17[0m:     data.each [32mdo[0m |key, value|
    [1;34m18[0m:       value.each [32mdo[0m |k, v|
    [1;34m19[0m:         [32mif[0m v.include?(name)
    [1;34m20[0m:           list[name][key] << k.to_s
    [1;34m21[0m:         [32mend[0m
    [1;34m22[0m:       [32mend[0m
    [1;34m23[0m:     [32mend[0m
    [1;34m24[0m:   [32mend[0m
    [1;34m25[0m:   list
 => [1;34m26[0m:   binding.pry
    [1;34m27[0m: [32mend[0m

