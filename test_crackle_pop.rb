require 'minitest/autorun'
require './crackle_pop'

class CracklePopTest < Minitest::Test
  attr_reader :subject

  def setup
    @subject = CracklePop.new
  end

  def test_run_returns_crackle
    divisible_by_three = 6
    assert_output("Crackle\n") { subject.run([divisible_by_three]) }
  end

  def test_run_returns_pop
    divisible_by_five = 200
    assert_output("Pop\n") { subject.run([divisible_by_five])} 
  end

  def test_run_returns_crackle_pop
    divisible_by_three_and_five = 30
    assert_output("CracklePop\n1\n") { subject.run([divisible_by_three_and_five, 1]) }
  end

  def test_run_returns_numbers
    assert_output("1\n23\n31\n") { subject.run([1, 23, 31]) }
  end
end