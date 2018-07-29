
[1mFrom:[0m /home/mcelis13/apples-and-holidays-dumbo-web-080618/lib/holiday.rb @ line 81 Object#all_supplies_in_holidays:

    [1;34m62[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
    [1;34m63[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
    [1;34m64[0m:   [1;34m# Winter:[0m
    [1;34m65[0m:   [1;34m#   Christmas: Lights, Wreath[0m
    [1;34m66[0m:   [1;34m#   New Years: Party Hats[0m
    [1;34m67[0m:   [1;34m# Summer:[0m
    [1;34m68[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
    [1;34m69[0m:   [1;34m# etc.[0m
    [1;34m70[0m: supplies = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m71[0m: 
    [1;34m72[0m:   holiday_hash.each [32mdo[0m |season, holidayInfoHash|
    [1;34m73[0m:       supplies += [31m[1;31m"[0m[31m#{season.capitalize}[0m[31m: [1;35m\n[0m[31m[1;31m"[0m[31m[0m
    [1;34m74[0m:       holidayInfoHash.each [32mdo[0m |holidayName, supplyArray|
    [1;34m75[0m:         supplies += [31m[1;31m"[0m[31m  #{holidayName.capitalize}[0m[31m: [1;31m"[0m[31m[0m
    [1;34m76[0m:         supplyArray.each [32mdo[0m |supply|
    [1;34m77[0m:           supplies += [31m[1;31m"[0m[31m#{supply}[0m[31m, [1;31m"[0m[31m[0m
    [1;34m78[0m:         [32mend[0m[1;34m# supplyArray[0m
    [1;34m79[0m:         supplies.slice([1;34m-2[0m)
    [1;34m80[0m:         supplies
 => [1;34m81[0m:         binding.pry
    [1;34m82[0m:       [32mend[0m[1;34m#end of holidayInfoHash[0m
    [1;34m83[0m:   [32mend[0m[1;34m#end of holiday_hash[0m
    [1;34m84[0m:   supplies
    [1;34m85[0m: [32mend[0m[1;34m#end of function[0m

