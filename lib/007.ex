defmodule Euler.P007 do

  # def find_nth_prime(target), do: find_nth_prime(target, 1, 1)
  # def find_nth_prime(target, curr_pos, curr_val) do

  def prime?(num) when num == 1 or num == 2, do: true
  def prime?(num), do: prime?(num, 2, :math.sqrt(num))
  def prime?(num, 2, max_test) do
    case rem(num, 2) do
      0 -> false
      _ -> prime?(num, 3, max_test)
    end
  end
  def prime?(num, test, max_test) when test <= max_test do
    case rem(num, test) do
      0 -> false
      _ -> prime?(num, test + 2, max_test)
    end
  end
  def prime?(_, _, _), do: true

  def primes do
    Stream.iterate(2, & &1 + 1)
    |> Stream.filter(& prime? &1)
  end

  def n_primes(number), do: primes() |> Enum.take(number)

  def nth_prime(number), do: n_primes(number) |> Enum.take(-1)

end

