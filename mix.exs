defmodule BadWords.MixProject do
  use Mix.Project

  def project do
    [
      app: :bad_words,
      version: "0.1.0",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/cgorshing/bad_words"
    ]
  end

  defp description() do
    "A highly consumable list of bad (profanity) english words, forked/copied from https://github.com/MauriceButler/badwords."
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/cgorshing/bad_words"},
      maintainers: ["Chad Gorshing"]
    ]
  end

  def application do
    [
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.15", only: :dev}
    ]
  end
end
