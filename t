
[1mFrom:[0m /home/christphrd/nyc-pigeon-organizer-prework/nyc_pigeon_organizer.rb @ line 19 Object#nyc_pigeon_organizer:

     [1;34m3[0m: [32mdef[0m [1;34mnyc_pigeon_organizer[0m(data) [1;34m#data = attributes as symbols => spec attr (symb or string) => array of pigeon names with spec[0m
     [1;34m4[0m:   pigeon_list = {} [1;34m#end_result_hash = names as strings => attributes as symbols => array of attr strings for the individual pigeons[0m
     [1;34m5[0m:   pigeon_names = [] [1;34m#my keys for the end_result_hash[0m
     [1;34m6[0m:   data.each [32mdo[0m |attribute,attr_data|
     [1;34m7[0m:     attr_data.each [32mdo[0m |spec,pigeon_array|
     [1;34m8[0m:       pigeon_array.each [32mdo[0m |name| [1;34m#having each item available from the data/original hash[0m
     [1;34m9[0m:         pigeon_names += pigeon_array [1;34m#creating an array of pigeon names to have keys for the end result hash[0m
    [1;34m10[0m:         pigeon_names.uniq.each [32mdo[0m |pigeon_name| [1;34m#remove duplicates from the array and having each element available for end result[0m
    [1;34m11[0m:           [32mif[0m pigeon_list[pigeon_name] == [1;36mnil[0m
    [1;34m12[0m:             pigeon_list[pigeon_name] = {}
    [1;34m13[0m:           [32mend[0m [1;34m#create a hash for each pigeon for {attribute:array}[0m
    [1;34m14[0m:           pigeon_list[pigeon_name].merge!({attribute=>[]}) [1;34m#add pigeon names into the end result + attribute[0m
    [1;34m15[0m:         [32mend[0m
    [1;34m16[0m:       [32mend[0m
    [1;34m17[0m:     [32mend[0m
    [1;34m18[0m:   [32mend[0m
 => [1;34m19[0m:   binding.pry
    [1;34m20[0m:   pigeon_list
    [1;34m21[0m: [32mend[0m

