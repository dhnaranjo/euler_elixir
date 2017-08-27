# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
#
defmodule Euler.P004 do

  def is_palindrome?(num) do
    numlist = num |> Integer.digits
    numlist |> Enum.reverse == numlist
  end

  def largest_palindrome(max), do: largest_palindrome(max, max, max, [])
  def largest_palindrome(0, _, _, palindromes), do: Enum.max palindromes
  def largest_palindrome(a, b, max, palindromes) do
    product = a * b
    if is_palindrome? product do
      palindromes = palindromes ++ [product]
    end
      cond do
        a == b -> largest_palindrome(a - 1, max, max, palindromes)
        b > a -> largest_palindrome(a, b - 1, max, palindromes)
    end
  end

end
