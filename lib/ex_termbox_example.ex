defmodule ExTermboxExample do
  @moduledoc """
  Documentation for `ExTermboxExample`.
  """

  @behaviour Ratatouille.App

  import Ratatouille.View

  def init(_context), do: "Hello world!"

  def render(text) do
    view do
      label(content: text)
    end
  end

  def update(model, _msg), do: model

  def main(_) do
    Ratatouille.run(__MODULE__)
  end
end
