defmodule ExTermboxExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_termbox_example,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ratatouille, "0.5.1"},
      {:ex_termbox, ">= 0.0.0", git: "https://github.com/qhwa/ex_termbox.git", override: true}
    ]
  end

  defp escript do
    [main_module: ExTermboxExample]
  end
end
