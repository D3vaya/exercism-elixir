defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(minutes) do
    40 - minutes
  end

  def preparation_time_in_minutes(glasses) do
    2 * glasses
  end

  def total_time_in_minutes(glasses, minutes) do
    2 * glasses + minutes
  end

  def alarm do
    "Ding!"
  end

  # Please define the 'alarm/0' function
end
