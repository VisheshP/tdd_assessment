module ApplicationHelper
    def string_calculator(input)
        return 0 if input.blank?

        negative_num = []
        delimiter = ','

        delimiter = input[2] if input.starts_with?('//')

        input = input[5..] if !delimiter.include?(',')
        input = input.gsub('\n', ',').split(delimiter)

        input = input.map(&:to_i)
        negative_num = input.select { |n| n < 0 }

        raise "negative number not allowed #{negative_num}" if negative_num.any?
        
        return input.sum
    end
end
