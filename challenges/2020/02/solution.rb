# frozen_string_literal: true

module Year2020
  class Day02 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file
    class PasswordNRule
      INPUT_PATTERN = /(?<lower>\d+)-(?<upper>\d+) (?<char>\w): (?<password>\w+)/

      def initialize(input_line)
        parsed = INPUT_PATTERN.match(input_line)
        @lower = parsed[:lower].to_i
        @upper = parsed[:upper].to_i
        @char = parsed[:char]
        @password = parsed[:password]
      end

      def valid?
        (@lower..@upper).include?(@password.count(@char))
      end

      def valid_2?
        (@password[@lower - 1] == @char) ^ (@password[@upper - 1] == @char)
      end
    end

    def part_1
      data.count(&:valid?)
    end

    def part_2
      data.count(&:valid_2?)
    end

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      PasswordNRule.new line
    end

    # Processes the dataset as a whole
    # def process_dataset(set)

    # end
  end
end
