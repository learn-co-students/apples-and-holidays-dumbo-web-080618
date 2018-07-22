
[1mFrom:[0m /home/chanfe/apples-and-holidays-dumbo-web-080618/lib/holiday.rb @ line 75 Object#all_supplies_in_holidays:

    [1;34m67[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
    [1;34m68[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
    [1;34m69[0m:   [1;34m# Winter:[0m
    [1;34m70[0m:   [1;34m#   Christmas: Lights, Wreath[0m
    [1;34m71[0m:   [1;34m#   New Years: Party Hats[0m
    [1;34m72[0m:   [1;34m# Summer:[0m
    [1;34m73[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
    [1;34m74[0m:   [1;34m# etc.[0m
 => [1;34m75[0m:   binding.pry
    [1;34m76[0m:   holiday_hash.each [32mdo[0m |season, holiday_arr|
    [1;34m77[0m:     puts [31m[1;31m"[0m[31m#{season.capitalize}[0m[31m:[1;31m"[0m[31m[0m
    [1;34m78[0m:     holiday_arr.each [32mdo[0m |holiday, item|
    [1;34m79[0m:       temp_string = [31m[1;31m"[0m[31m#{holiday}[0m[31m[1;31m"[0m[31m[0m.split([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m).join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m80[0m:       holiday_string = [31m[1;31m"[0m[31m  #{temp_string.capitalize}[0m[31m: [1;31m"[0m[31m[0m
    [1;34m81[0m:       [1;34m#for i in 0..item.length-1[0m
    [1;34m82[0m:       [1;34m#  holiday_string += "#{item[i]}"[0m
    [1;34m83[0m:       [1;34m#  if i != item.length-1[0m
    [1;34m84[0m:       [1;34m#    holiday_string += ", "[0m
    [1;34m85[0m:       [1;34m#  end[0m
    [1;34m86[0m:       [1;34m#end[0m
    [1;34m87[0m:       [1;34m#puts holiday_string[0m
    [1;34m88[0m:     [32mend[0m
    [1;34m89[0m:   [32mend[0m
    [1;34m90[0m: [32mend[0m

