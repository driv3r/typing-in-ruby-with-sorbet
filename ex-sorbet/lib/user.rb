# typed: strict

class User
  extend T::Sig

  sig { returns(String) }
  attr_reader :login

  sig { returns(String) }
  attr_reader :password

  sig { params(login: String, password: String).void }
  def initialize(login, password)
    @login = login
    @password = password
  end
end
