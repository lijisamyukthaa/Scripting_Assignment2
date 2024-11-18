def is_palindrome(x)
  return false if x < 0
  original = x
  reversed = 0

  while x > 0
    reversed = reversed * 10 + x % 10
    x /= 10
  end

  original == reversed
end
