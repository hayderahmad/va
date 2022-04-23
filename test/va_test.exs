defmodule VaTest do
  use ExUnit.Case
  doctest Va

  test "greets the world" do
    assert Va.hello() == :world
  end
end
