module ApplicationHelper
    def string_calculator(input)
        return 0 if input.blank?

        if input.include?('//')
            delimiter = input[2] 
        else
            delimiter = ','
        end

        input = input[5..] if !delimiter.include?(',')

        input = input.gsub('\n', ',').split(delimiter)

        sum = 0
        negative_num = []
        input.each do |num|
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
