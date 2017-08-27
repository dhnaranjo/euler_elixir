defmodule Euler.P003 do

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

  def factor(num), do: factor(num, 2)
  def factor(num, 2) do
    case rem(num, 2) do
      0 -> { 2, div(num, 2) }
      _ -> factor(num, 3)
    end
  end
  def factor(num, test) do
    case rem( num, test) do
      0 -> { test, div(num, test) }
      _ -> factor(num, test + 2)
    end
  end

  def prime_factors(num), do: prime_factors(num, [])
  def prime_factors(num, list) do
    { prime, remain } = factor(num)
    case remain do
      1 -> list ++ [prime]
      _ -> prime_factors(remain, list ++ [prime])
    end
  end

  def solve(num) do
    prime_factors(num)
  end

  def print, do: solve(600851475143)

end

