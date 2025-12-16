defmodule LanguageList.MixProject do
  use Mix.Project

  def project do
    [
      app: :language_list,
      version: "3.0.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "language_list",
      source_url: "https://github.com/GunnarPDX/language_list",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
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
      {:ex_doc, "~> 0.34", only: :dev, runtime: false, warn_if_outdated: true}
    ]
  end

  defp description() do
    """
    An elixir implementation of the language list ruby gem.
    This package provides language data in the form of a list, provides filtering capabilities,
    and allows for searching languages by iso code or name
    """
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "language_list",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE* usage-rules.md),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/GunnarPDX/language_list"}
    ]
  end
end
