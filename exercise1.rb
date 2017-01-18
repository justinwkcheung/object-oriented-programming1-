class BankAccount

  attr_accessor :balance

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
    "Your balance is now $#{ @balance }"
  end

  def withdraw(amount)
    @balance -= amount
    "Your balance is now $#{ @balance }"
  end

  def gain_interest
    @balance = @balance * @interest_rate + @balance
    "Your balance is now $#{ @balance }"
  end

end
