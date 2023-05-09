require_relative "user"

class Validate
  class << self
    def check!
      User.new(1, 2.0)
    end
  end
end
