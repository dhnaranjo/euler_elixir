defmodule Euler.P010 do

  def sum_primes_under(number) do
    Euler.Math.primes
    |> Enum.take_while(& &1 <= number)
    |> Enum.reduce(& &1 + &2)
  end

end
