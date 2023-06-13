defmodule Common.Lib do
  @moduledoc false

  def boo() do
    :ok
  end

  defmacro foo() do
    quote do
      def hello() do
        :world
      end
    end
  end
end
