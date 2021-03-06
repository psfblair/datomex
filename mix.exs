defmodule Datomex.Mixfile do
  use Mix.Project

  def project do
    [app: :datomex,
     version: "0.0.5",
     elixir: "~> 1.0",
     deps: deps,
     package: [
       contributors: ["Eric West"],
       licenses: ["MIT"],
       links: %{github: "https://github.com/edubkendo/datomex",
                docs: "http://hexdocs.pm/datomex"}
       ],
     description: """
       Low level Elixir driver for the Datomic Database.
       """]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
        {:erldn, "~> 1.0.2"},
        {:httpoison, "~> 0.5"},
        {:poison, "~> 1.2"},
        {:ex_doc, "~> 0.6.1"}
    ]
  end
end
