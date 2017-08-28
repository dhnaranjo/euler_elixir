# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

defmodule Euler.P005 do

  def smallest_multiple(max_divisor), do: smallest_multiple(max_divisor, max_divisor, 1)
  def smallest_multiple(_, 1, number), do: number
  def smallest_multiple(max_divisor, divisor, number) do
    case rem(number, divisor) do
      0 -> smallest_multiple(max_divisor, divisor - 1, number)
      _ -> smallest_multiple(max_divisor, max_divisor, number + 1)
    end
  end

end
