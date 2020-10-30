defmodule GoogleAds.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_ads,
      version: "0.2.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:protobuf, "~> 0.7.1"},
      {:google_protos, "~> 0.1"},
      {:cowboy,
       git: "https://github.com/elixir-grpc/cowboy.git", tag: "grpc-2.6.3", override: true},
      {:cowlib,
       git: "https://github.com/elixir-grpc/cowlib.git", tag: "grpc-2.7.3", override: true},
      {:grpc, github: "VeryBigThings/grpc"}

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
