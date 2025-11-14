class CracklePop
  def run(range)
    range.each do |number|
      puts crackle_pop_or_else(number)
    end
  end

  private

  def crackle_pop_or_else(number)
    crackle = "Crackle" if divisible_by?(number, 3)
    pop = "Pop" if divisible_by?(number, 5)
    crackle_pop = [crackle, pop].compact.join

    return crackle_pop if crackle || pop
    number
  end

  def divisible_by?(dividend, divisor)
    dividend % divisor == 0
  end
end

CracklePop.new.run((1..100))