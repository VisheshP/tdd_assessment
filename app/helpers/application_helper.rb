module ApplicationHelper
    def string_calculator(input)
        return 0 if input.blank?


        str_arr = input.gsub('\n','').split(',')
        sum = 0
        negative_num = []
        str_arr.each do |num|
            int_num = num.to_i
            if int_num != 0
                negative_num << int_num if int_num < 0
                sum += int_num 
            end
        end

        raise "negative number not allowed #{negative_num}" if !negative_num.blank?
        
        return sum
    end
end
