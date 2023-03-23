defmodule KitchenCalculator do
  def get_volume({cup, number} = volume_pair) do
    number
  end

  def to_milliliter({:cup, number} = volume_pair) do
    {:milliliter, 240.0 * number}
  end

  def to_milliliter({:milliliter, number} = volume_pair) do
    {:milliliter, 1.0 * number}
  end

  def to_milliliter({:fluid_ounce, number} = volume_pair) do
    {:milliliter, 30.0 * number}
  end

  def to_milliliter({:teaspoon, number} = volume_pair) do
    {:milliliter, 5.0 * number}
  end

  def to_milliliter({:tablespoon, number} = volume_pair) do
    {:milliliter, 15.0 * number}
  end

  # mL	1
  # US cup 240
  # US fluid ounce	30
  # US teaspoon	5
  # US tablespoon	15
  def from_milliliter({_milliliter, amount} = volumen_pair, :cup),
    do: {:cup, amount / 240}

  def from_milliliter({_milliliter, amount} = volumen_pair, :fluid_ounce),
    do: {:fluid_ounce, amount / 30}

  def from_milliliter({_milliliter, amount} = volumen_pair, :teaspoon),
    do: {:teaspoon, amount / 5}

  def from_milliliter({_milliliter, amount} = volumen_pair, :tablespoon),
    do: {:tablespoon, amount / 15}

  def from_milliliter({_milliliter, amount} = volumen_pair, :milliliter),
    do: {:milliliter, amount / 1}

  def convert({:teaspoon, amount} = volume_pair, :tablespoon) do
    {:tablespoon, amount * 5 / 15}
  end

  def convert({:cup, amount} = volume_pair, :fluid_ounce) do
    {:fluid_ounce, amount * 240 / 30}
  end

  def convert({:fluid_ounce, amount} = volume_pair, :teaspoon) do
    {:teaspoon, amount * 30 / 5}
  end

  def convert({:tablespoon, amount} = volume_pair, :cup) do
    {:cup, amount * 15 / 240}
  end
end
