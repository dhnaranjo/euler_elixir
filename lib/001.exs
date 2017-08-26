defmodule Euler.P001 do

  def solve(limit) do
    1..limit-1
    |> Enum.filter(&( rem(&1, 3) == 0 || rem(&1, 5) == 0 ))
    |> Enum.reduce(&(&1 + &2))
  end

  def print do
    solve(1000)
  end

end
