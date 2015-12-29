defmodule Spanner.Mixfile do
  use Mix.Project

  def project do
    [app: :spanner,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:piper, git: "git@github.com:operable/piper", ref: "01a5ff07e9d24b712c5fa71736940ac9b69d1ef8"},
     {:carrier, git: "git@github.com:operable/carrier", ref: "577ffe0871d1bdd32017d0083d7c3c72f516d4fd"}]
  end
end
