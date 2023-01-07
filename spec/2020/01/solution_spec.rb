# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Year2020::Day01 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), '../../../challenges/2020/01/input.txt')) }
  let(:example_input) do
    <<~EXAMPLE_INPUT
    1721
    979
    366
    299
    675
    1456
    EXAMPLE_INPUT
  end

  describe 'part 1' do
    it 'returns 514579 for the example input' do
      expect(described_class.part_1(example_input)).to eq(514579)
    end

    it 'returns 960075 for my input' do
      expect(described_class.part_1(input)).to eq(960075)
    end
  end

  describe 'part 2' do
    it 'returns 241861950 for the example input' do
      expect(described_class.part_2(example_input)).to eq(241861950)
    end

    it 'returns 212900130 for my input' do
      expect(described_class.part_2(input)).to eq(212900130)
    end
  end
end
