# frozen_string_literal: true

require 'nmax/version'

module Nmax
  NUMBER_SIZE_TRESHOLD = 1000

  # Max number finder
  class FindMax
    def self.call(stdin, num)
      raise ArgumentError, 'Argument should be Integer' unless num.match?(/\d/)

      num = num.to_i

      numbers = SortedSet.new
      digit_sequence = String.new(capacity: NUMBER_SIZE_TRESHOLD)

      stdin.each_char do |char|
        if char.match?(/\d/)
          digit_sequence << char
        elsif !digit_sequence.empty?
          numbers << digit_sequence.to_i
          digit_sequence.clear
        end
      end

      numbers << digit_sequence.to_i unless digit_sequence.empty?

      numbers.to_a.last(num)
    end
  end
end
