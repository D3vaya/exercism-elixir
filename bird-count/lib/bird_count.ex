defmodule BirdCount do
  def today(list) do
    if Enum.empty?(list) do
      nil
    end

    List.first(list)
  end

  def increment_day_count(list) do
    if Enum.empty?(list) do
      [1]
    else
      list |> List.update_at(0, &(&1 + 1))
    end
  end

  def has_day_without_birds?(list) do
    Enum.member?(list, 0)
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) do
    if Enum.empty?(list) do
      0
    else
      Enum.filter(list, fn n -> n > 4 end) |> Enum.count()
    end
  end
end
