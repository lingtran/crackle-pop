class CracklePop
  def run(range)
    range.each do |number|
      puts crackle_pop_or_else(number)
    end
  end

  private

  def crackle_pop_or_else(number)
    crackle_pop = checks(number)
    return crackle_pop unless crackle_pop.empty?
    number
  end

  def checks(number)
    crackle = "Crackle" if divisible_by?(number, 3)
    pop = "Pop" if divisible_by?(number, 5)
    [crackle, pop].compact.join
  end

  def divisible_by?(dividend, divisor)
    dividend % divisor == 0
  end
end