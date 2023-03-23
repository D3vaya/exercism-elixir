defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name) |> String.first()
  end

  def initial(name) do
    letter = first_letter(name) |> String.upcase()
    letter <> "."
  end

  def initials(full_name) do
    [name, last_name] =
      String.split(full_name, " ", [:trim])
      |> Enum.map(fn n -> initial(n) end)

    "#{name} #{last_name}"
  end

  def pair(full_name1, full_name2) do
    a = initials(full_name1)
    b = initials(full_name2)

          """
          ******       ******
        **      **   **      **
      **         ** **         **
     **            *            **
     **                         **
     **     #{a}  +  #{b}     **
      **                       **
        **                   **
          **               **
            **           **
              **       **
                **   **
                  ***
                   *
     """
  end
end
