defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    dis = before_discount * discount / 100.0
    before_discount - dis
  end

  def monthly_rate(hourly_rate, discount) do
    m = daily_rate(hourly_rate) * 22.0
    m |> apply_discount(discount) |> ceil()
  end

  defp daily_discounted_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate
    |> apply_discount(discount)
  end

  # def days_in_budget(budget, hourly_rate, discount) do
  #   r =
  #     daily_rate(hourly_rate)
  #     |> apply_discount(discount)

  #   Integer.floor_div(budget, r) |> ceil()
  # end
  def days_in_budget(budget, hourly_rate, discount) do
    (budget / daily_discounted_rate(hourly_rate, discount))
    |> Float.floor(1)
  end
end

# div(480, 384.0)
# div(4410, 440.0)
# div(520, 520.0)
# div(1600, 400.0)
