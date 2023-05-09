# typed: strict

require_relative "user"

class More
  extend T::Sig

  sig { returns(User) }
  attr_accessor :user

  sig { params(user: User, verify: T::Boolean, scope: T.nilable(String)).void }
  def initialize(user:, verify: false, scope: nil)
    @user = user
    @verify = verify
    @scope = scope
  end

end

m = More.new(user: User.new("foo", "bar"))
m.user = "baz"
