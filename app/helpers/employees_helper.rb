module EmployeesHelper
  def find_factor(age)
    factors = []
    (1..age/2).each do|number|
      if age % number == 0
        factors.push(number)
      end
    end
    return factors
  end

  def is_prime(age)
    (2..age/2).each do |number|
      if age % number == 0
        return "Not Prime"
      end
    end
    return "Prime"
  end
end
