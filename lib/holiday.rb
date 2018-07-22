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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  p holiday_hash[:winter].each {|holiday, supplies| supplies << supply}

end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring].each {|holiday, supplies| supplies << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)

  p holiday_hash[:winter].collect {|holiday, supplies| supplies}.join(" ")
  
 

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:" 
     holiday.each do |hol, supplies|
       new = hol.to_s.split("_")
       str =""
       new.each do |word|
          if word == new[-1]
            str += "#{word.capitalize!}: "
          else
            str += "#{word.capitalize!} "
          end
        end
      final = "  #{str}"
      supplies.each do |sup|
        if sup == supplies.last 
          final += "#{sup}"
        else final += "#{sup}, "
        end
      end
      puts final
    end
    
  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supply| 
       supply.each do |sup| 
          if sup == "BBQ"
          final << day
          end
        end
    end
  end
  final
end







