require "test_helper"

class MagnusPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_not_palindrome
    assert !12345.palindrome?
  end

  def test_integer_palindrome
    assert 12345654321.palindrome?
  end

  def test_empty_not_palindrome
    refute " ".palindrome?
  end
end
