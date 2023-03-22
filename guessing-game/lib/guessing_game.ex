defmodule GuessingGame do
  # def compare(secret_number, guess) when secret_number === guess do
  #   cond do
  #     secret_number === guess ->
  #       "Correct"

  #     secret_number + 1 === guess ->
  #       "So Close"

  #     secret_number < guess ->
  #       "Too high"

  #     secret_number > guess ->
  #       "Too low"
  #   end
  # end

  def compare(secret_number, guess) when secret_number === guess do
    "Correct"
  end

  def compare(secret_number, guess) when secret_number < guess and guess !== :no_guess do
    if secret_number + 1 === guess do
      "So close"
    else
      "Too high"
    end
  end

  def compare(secret_number, guess) when secret_number > guess do
    if secret_number - 1 === guess do
      "So close"
    else
      "Too low"
    end
  end

  def compare(secret_number) do
    "Make a guess"
  end

  def compare(secret_number, guess) when guess === :no_guess do
    "Make a guess"
  end
end
