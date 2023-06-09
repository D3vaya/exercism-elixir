defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [head | tail] = list
    tail
  end

  def first(list) do
    [head | tail] = list
    head
  end

  def count(list) do
    Enum.count(list)
  end

  def functional_list?(list) do
    Enum.member?(list, "Elixir")
  end
end
