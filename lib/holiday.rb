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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_item = []
  holiday_hash.each do|season,data|
    if season == :winter
      data.each do |holiday,item|
        holiday_item.push(item)
      end
    end
  end
  holiday_item.join(",")
  

end

def all_supplies_in_holidays(holiday_hash)
  holiday_item = ""
  holiday_hash.each do|season,data|
      data.each do |holiday,item|
       newitem = item.join(",")
       holiday_item += "#{season.capitalize}:\n#{holiday.capitalize}: #{newitem}\n"
    end
  end
  holiday_item

end

def all_holidays_with_bbq(holiday_hash)
  holiday_bbq=[]
  holiday_hash.each do |seasons,data|
    data.each do |holiday,value|
      if value.include?("BBQ")
        holiday_bbq << holiday
      end
    end
  end
  holiday_bbq
end







