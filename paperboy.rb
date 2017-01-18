class Paperboy

  attr_accessor :name, :experience, :houses_delivered, :quota, :earned
  attr_reader :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    if experience > 0
      @quota = 50 + @experience / 2
    else
      @quota = 50
    end
    puts "quota is #{@quota}"
  end

  def deliver(start_address, end_address)
    @houses_delivered = end_address - start_address
    quota
    if @houses_delivered > @quota
      @earned = @quota * 0.25 + (@houses_delivered - @quota) * 0.50
    elsif @houses_delivered == @quota
      @earned = @quota * 0.25
    else
      @earned = -2.00
    end
    @experience += @houses_delivered
    @earnings += @earned
    "Money earned was #{@earned} and now delivered #{@experience} papers"
  end

  def report
    "I'm #{@name}, I've delivered #{experience} papers and I've earned $#{earnings} so far!"
  end

end

papier = Paperboy.new("papier", 100, 20)
puts papier.deliver(50, 60)
puts papier.report
