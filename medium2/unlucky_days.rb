# Write a method that returns the number of Friday the 13ths in the year
# given by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar) and that
# it will remain in use for the foreseeable future.

WEEK_INDX = [5, 0, 1, 2, 3, 5, 6,
             0, 1, 3, 4, 5, 6, 1,
             2, 3, 4, 6, 0, 1, 2,
             4, 5, 6, 0, 2, 3, 4].freeze

REG_YR = [13, 44, 72, 103, 133, 164,
          194, 225, 256, 286, 317, 347].freeze

LEAP_YR = [13, 44, 73, 104, 134, 165,
           195, 226, 257, 287, 318, 348].freeze

def friday_13th(year)
  first_day = WEEK_INDX[year % 28].to_i
  days_array = if (year % 4).zero?
                 LEAP_YR.map { |i| i + first_day }
               else
                 REG_YR.map { |i| i + first_day }
               end
  days_array.map { |i| i % 7 }.count(6)
end

p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2
p friday_13th(2024) #== 2
p friday_13th(2005) #== 1
p friday_13th(1992) #== 2
