require 'test_helper'

class ToDoTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end
  test " should not save empty value" do
    todo = ToDo.new
    assert_not todo.save
  end
  test " should not save todo with invalid state" do
    todo = ToDo.new
    todo.title = "Titulo"
    todo.description = "Descripción"
    todo.state = 3
    todo.user_id = @user.id
    assert_not todo.save
  end
  test " should  save todo " do
    todo = ToDo.new
    todo.title = "Titulo"
    todo.description = "Descripción"
    todo.state = 0
    todo.user_id = @user.id
    assert todo.save
  end

end
