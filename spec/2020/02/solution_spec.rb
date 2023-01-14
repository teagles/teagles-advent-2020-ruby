# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Year2020::Day02 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), '../../../challenges/2020/02/input.txt')) }
  let(:example_input) do
    <<~EXAMPLE_INPUT
      1-3 a: abcde
      1-3 b: cdefg
      2-9 c: ccccccccc
    EXAMPLE_INPUT
  end

  describe 'part 1' do
    it 'returns 2 for the example input' do
      expect(described_class.part_1(example_input)).to eq(2)
    end

    it 'returns 655 for my input' do
      expect(described_class.part_1(input)).to eq(655)
    end
  end

  describe 'part 2' do
    it 'returns 1 for the example input' do
      expect(described_class.part_2(example_input)).to eq(1)
    end

    it 'returns 673 for my input' do
      expect(described_class.part_2(input)).to eq(673)
    end
  end
end
