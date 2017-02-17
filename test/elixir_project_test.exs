defmodule ElixirProjectTest do
  use ExUnit.Case
  doctest ElixirProject

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Test the new module function" do
    assert ElixirProject.mod_func(3,4) == 13
  end

end
