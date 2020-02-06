defmodule BadWordsTest do
  use ExUnit.Case
  doctest BadWords

  test "bad_word?/1 returns true" do
    assert BadWords.bad_word?("anus")
  end

  test "bad_word?/1 returns false" do
    assert BadWords.bad_word?("Snoopy") == false
  end

  test"phrase_contains_bad_word?/1 returns true" do
    assert BadWords.phrase_contains_bad_word?("anus")
  end

  test"phrase_contains_bad_word?/1 returns false" do
    assert BadWords.phrase_contains_bad_word?("Mr. Rogers") == false
  end
end
