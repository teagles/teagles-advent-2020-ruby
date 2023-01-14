# frozen_string_literal: true

require 'pry-byebug'

module Year2020
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      data.to_set.each do |first|
        second = 2020 - first
        return first * second if data.include?(second)
      end
    end

    def part_2
      data.combination(3).find { |trio| trio.reduce(:+) == 2020 }.reduce(:*)
    end

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      line.to_i
    end

    # Processes the dataset as a whole
    def process_dataset(set)
      set
    end
  end
end
