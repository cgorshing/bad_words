# BadWords

All credit goes to [Maurice Butler](https://github.com/MauriceButler), this project is copied from his work at https://github.com/MauriceButler/badwords

A highly consumable list of bad (profanity) English words based on the nice short and simple list found in Google's "what do you love" project made accessible by [Jamie Wilkinson](https://gist.github.com/jamiew) [here](https://gist.github.com/jamiew/1112488)

This data has been exposed as
- an array
- functions

depending on what is required for your purposes.


## Installation

[Available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bad_words` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bad_words, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/bad_words](https://hexdocs.pm/bad_words).


## Usage

``` elixir
true = BadWords.bad_word?("a55")

false = BadWords.phrase_contains_bad_word?("Mr. Rogers")
```

#### Note

"Bad words" implementations are frequently prone to the [Scunthorpe problem](https://en.wikipedia.org/wiki/Scunthorpe_problem)

These kind of lists can be used for flagging things, but being used as a basis for outright blocking can cause issues.