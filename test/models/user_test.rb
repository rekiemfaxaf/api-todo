require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test " should not save empty value" do
    usuario = User.new
    assert_not usuario.save
  end

  test " should save user" do
    usuario = User.new
    usuario.name = "felipe"
    usuario.email = "pipe.faxaf@gmail.com"
    assert usuario.save
  end

  test " should not save duplicate emails" do
    usuario = User.new
    usuario.name = "felipe"
    usuario.email = "pipe.faxaf@gmail.com"
    usuario.save
    usuario2 = User.new
    usuario2.name = "felipe2"
    usuario2.email = "pipe.faxaf@gmail.com"
    assert_not usuario2.save
  end

end
