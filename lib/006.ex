defmodule Euler.P006 do

  def sum_square_diff(max) do
    sum_squares =
      1..max
      |> Enum.reduce(fn(x, sum) -> (x * x) + sum end)
    
    square_sums =
      1..max
      |> Enum.reduce(fn(x, sum) -> x + sum end)
      |> (fn(sum) -> sum * sum end).() 

    square_sums - sum_squares
    end

end
