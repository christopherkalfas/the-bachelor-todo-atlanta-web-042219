require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    contestant.each do |k, v|
      if v == "Winner"
        return contestant["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_k_n_v|
    contestants_k_n_v.each do |contestant|
      contestant.each do |contestant_k, contestant_v|
        if contestant_v == occupation
          return contestant["name"]
        end
      end
    end
  end

  #return women with that occupation
end




# Build a method, count_contestants_by_hometown,
#that takes in two arguments––the data hash and a string of a hometown.
# This method should return a counter of the number of contestants who are from that hometown.

def count_contestants_by_hometown(data, howntown)
  hometown_counter = 0
  data.each do |season, contestants_k_n_v|
    contestants_k_n_v.each do |contestant|
      contestant.each do |contestant_k, contestant_v|
        if contestant_v == howntown
          hometown_counter += 1
        end
      end
    end
  end
  return hometown_counter
end

#Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown.
# It returns the occupation of the first contestant who hails from that hometown.

def get_occupation(data, howntown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |contestant_k, contestant_v|
        if contestant_v == howntown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number_of_contest_in_season = 0
  sum_years = 0
  avg_years = 0
  data[season].each do |contestant|
    contestant.each do |contestant_k, contestant_v|
      if contestant_k == "age"
        sum_years = sum_years + contestant_v.to_f
        number_of_contest_in_season += 1
      end
    end
  end
  avg_years = (sum_years/ number_of_contest_in_season).round 
  return avg_years
end























































# def get_first_name_of_season_winner(data, season)
#   data[season].each do |constestant|
#     constestant.each do |key, value|
#       if value == "Winner"
#         return constestant["name"].split.first
#       end
#     end
#   end
# end
#
#
# def get_contestant_name(data, occupation)
#   data.each do |season, contestants|
#     contestants.each do |constestant|
#       constestant.each do |attibute, personal_info|
#         if personal_info == occupation
#           return constestant["name"]
#         end
#       end
#     end
#   end
# end
#
# def count_contestants_by_hometown(data, hometown)
#   number_of_contestants_from_hometown = 0
#   data.each do |season, contestants|
#     contestants.each do |constestant|
#       constestant.each do |attibute, personal_info|
#         if personal_info == hometown
#           number_of_contestants_from_hometown += 1
#         end
#       end
#     end
#   end
#    number_of_contestants_from_hometown
# end
#
# def get_occupation(data, hometown)
#   data.each do |season, contestants|
#     contestants.each do |constestant|
#       constestant.each do |attibute, personal_info|
#         if personal_info == hometown
#           return constestant["occupation"]
#         end
#       end
#     end
#   end
# end
#
# def get_average_age_for_season(data, season)
#   age = 0
#   count = 0
#   data[season].each do  |contestants|
#     contestants.each do |attibute, personal_info|
#       if attibute == "age"
#         age += personal_info.to_f
#         count +=1
#       end
#     end
#   end
#   average_age = (age/ count).round
#   average_age
# end
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#


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
