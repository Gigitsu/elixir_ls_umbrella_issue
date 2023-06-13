defmodule NonPhxAppTest do
  use ExUnit.Case
  doctest NonPhxApp

  test "greets the world" do
    assert NonPhxApp.hello() == :world
  end
end
