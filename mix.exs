defmodule Spirit.Mixfile do
  use Mix.Project

  def project do
    [
      app: :spirit,
      version: "0.0.1",
      elixir: "~> 1.2.0",
      description: "Elixir microframework for web development.",
      deps: deps,
      package: package
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:cowboy, :plug]]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.1.0"},
      {:poison, "~> 2.0"}
    ]
  end

  defp package do
    [
      contributors: ["Emiliano Mancuso"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/emancu/spirit"},
      files: ~w(mix.exs README.md lib test)
    ]
  end
end
