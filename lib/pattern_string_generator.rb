require 'pattern_string_generator/version'
require 'pattern_randomizer'

module PatternStringGenerator
  module InstanceMethods
    def as_pattern
      PatternRandomizer.new(self)
    end
  end
end

String.send :include, PatternStringGenerator::InstanceMethods
