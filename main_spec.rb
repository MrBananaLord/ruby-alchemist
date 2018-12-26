# frozen_string_literal: true

require './main.rb'

RSpec.describe 'Main features' do
  context 'for emoji function without arguments' do
    it { expect(🍆).to eq('🍆') }
    it { expect([🍆, 💦]).to eq(['🍆', '💦']) }
  end

  context 'for emoji function with arguments' do
    it { expect(🍆(👌)).to eq('💦') }
    it { expect(🍆(🔪, 🧂)).to eq(['💩', '👋']) }
  end
end
