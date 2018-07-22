require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |event, value|
        value << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.collect do |season_v, holiday_arr|
    if season == season_v
      holiday_arr.merge!("#{holiday_name}": supply_array)
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  answer = []
  holiday_hash[:winter].each do |holiday, supply|
    for i in 0..supply.length-1
      answer << supply[i]
    end
  end
  answer

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_arr|
    puts "#{season.capitalize}:"
    holiday_arr.each do |holiday, item|
      
      temp_string_arr = "#{holiday}".split("_")
      temp_string = ""
      
      for x in 0..temp_string_arr.length-1
        temp_string += temp_string_arr[x].capitalize
        if x != temp_string_arr.length-1
          temp_string += " "
        end
      end
      
      holiday_string = "  #{temp_string}: "
      for i in 0..item.length-1
        holiday_string += "#{item[i]}"
        if i != item.length-1
          holiday_string += ", "
        end
      end
      puts holiday_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer = []
  holiday_hash.each do |season, holiday_hash|
    holiday_hash.each do |holiday, item|
      for i in 0..item.length-1
        if item[i] == "BBQ"
          answer << holiday
        end
      end
    end
  end
  answer
end

#secert de-bugging technique: binding.pry






