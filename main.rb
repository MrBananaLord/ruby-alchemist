# frozen_string_literal: true

EMOJIS = %w[🍆 👌 💦 🍑 💥 👶].freeze
RULES = {
  %w[🍆 👌].sort => '💦',
  %w[🍆 🍑].sort => '👶',
  %w[👶 💦].sort => '💥',
}.freeze

class Emoji
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  def inspect
    name
  end

  def +(other)
    raise 'Emoji required' unless other.is_a?(self.class)

    result = RULES[[name, other.name].sort]

    return Emoji.new(result) if result
  end
end

EMOJIS.each do |emoji|
  define_method emoji do
    return Emoji.new(emoji)
  end
end
