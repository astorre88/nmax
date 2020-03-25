# frozen_string_literal: true

require 'nmax/version'

module Nmax
  # Max number finder
  class FindMax
    def self.call(numbers_list, num)
      numbers_list.sort { |a, b| b <=> a }[0..num - 1]
    end
  end
end
