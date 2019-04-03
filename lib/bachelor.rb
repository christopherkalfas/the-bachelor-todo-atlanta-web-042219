#require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |constestant|
    constestant.each do |key, value|
      if value == "Winner"
        return constestant["name"].split.first
      end 
    end 
  end 
end 


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |constestant|
      constestant.each do |attibute, personal_info|
        if personal_info == occupation
          return constestant["name"]
        end 
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  number_of_contestants_from_hometown = 0
  data.each do |season, contestants|
    contestants.each do |constestant|
      constestant.each do |attibute, personal_info|
        if personal_info == hometown 
          number_of_contestants_from_hometown += 1 
        end 
      end 
    end 
  end 
   number_of_contestants_from_hometown
end 

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |constestant|
      constestant.each do |attibute, personal_info|
        if personal_info == hometown
          return constestant["occupation"]
        end 
      end 
    end 
  end 
end 

def get_average_age_for_season(data, season)
  average_age = []
  data.each do |seasons, contestants|
    if seasons == season 
      contestants.each do |constestant|
        constestant.each do |attibute, personal_info|
          average_age << constestant["age"].to_i
          average_age = [average_age].average 
        end 
      end 
    end 
  end 
  average_age
end 
          
        



















































# def get_first_name_of_season_winner(data, season)
#   data[season].each do |constant|
#     constant.each do |key, value| 
#       if value == "Winner"
#         full_name = constant["name"]
#         return full_name.split(' ').first 
#       end
#     end
#   end 
# end

# def get_contestant_name(data, occupation)
#   data.each do |season, array|
#     array.each do |people|
#       people.each do |k,v|
#         if v == occupation
#           return people["name"]
#         end
#       end
#     end
#   end
#   get_contestant_name(data, occupation)
# end

# def count_contestants_by_hometown(data, hometown)
#   counter = 0 
#     data.each do |season, contestant|
#       contestant.each do |info|
#         info.each do |key, value|
#           if value == hometown
#             counter += 1 
#           end 
#         end
#       end
#     end
# counter
# end

# def get_occupation(data, hometown)
#   data.each do |season, contestant|
#     contestant.each do |info|
#       info.each do |key, value|
#         if value == hometown
#           return info["occupation"]
#         end 
#       end
#     end
#   end 
# end

# def get_average_age_for_season(data, season)
#   age = 0 
#   count = 0 
#   data[season].each do |contestant|
#     contestant.each do |attibute, string|
#       if attibute == "age"
#         count += 1 
#         age += string.to_f
#       end
#     end
#   end
#   average_age = (age / count).round 
# return average_age
# end 
