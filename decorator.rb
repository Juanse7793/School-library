require './nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name?
    @nameable.correct_name?
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name?
    @nameable.correct_name? && @nameable.name.capitalize == @nameable.name
  end
end

class TrimmerDecorator < BaseDecorator
    def correct_name?
        @nameable.correct_name? && @nameable.name.slice(0, 9) == @nameable.name
    end
end