# frozen_string_literal: true

require './main.rb'

RSpec.describe Emoji do
  describe '#to_s' do
    it { expect(🍆.to_s).to eq('🍆') }
  end

  describe '#inspect' do
    it { expect(🍆.inspect).to eq('🍆') }
  end

  describe '#==' do
    it { expect(🍆 == 🍆).to eq(true) }
  end

  context 'for emoji function with arguments' do
    it { expect(🍆+🍑).to eq(👶) }
    it { expect((🍆+🍑)+(🍆+👌)).to eq(💥) }
  end
end
