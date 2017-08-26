defmodule EulerElixirTest do
  use ExUnit.Case
  doctest EulerElixir

  test "greets the world" do
    assert EulerElixir.hello() == :world
  end
end
