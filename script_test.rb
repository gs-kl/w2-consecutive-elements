require 'minitest/autorun'
require_relative 'script'

class SchedulestuffTest < MiniTest::Unit::TestCase
  def test_compliant
    assert_equal true, Schedulestuff.evaluatecompliance(["archery", "archery", "swimming", "swimming", "archery", "archery", "crafts"])
  end

  def test_noncompliant
    assert_equal false, Schedulestuff.evaluatecompliance(["archery", "swimming", "swimming", "swimming", "crafts", "archery", "archery", "crafts"])
  end
end
