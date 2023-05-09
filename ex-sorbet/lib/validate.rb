# typed: strict

require_relative "user"

class Validate
  class << self
    extend T::Sig

    sig { void }
    def check!
      User.new(1, 2.0)
    end
  end
end
