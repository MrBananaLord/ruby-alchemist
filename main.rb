# frozen_string_literal: true

rules = {
  '🍆' => {
    ['👌'] => '💦',
    ['🔪', '🧂'] => ['💩', '👋']
  },
  '👌' => {},
  '💦' => {},
  '🔪' => {},
  '🧂' => {},
  '💩' => {},
  '👋' => {}
}.freeze

rules.keys.each do |emoji|
  define_method emoji do |*args|
    result = rules[emoji].find { |e, _v| e.sort == [args].flatten.sort }&.last

    return result || emoji
  end
end
