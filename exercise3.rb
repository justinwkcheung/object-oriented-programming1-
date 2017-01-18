class Player

  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end

  def do_battle
    @health_points -= 1
    if @health_points == 0
      @lives -= 1
      @health_points = 10

      if lives == 0
        restart
      end

    end

    "Health: #{health_points}, Lives: #{lives}, Score: #{score}, Coins: #{gold_coins}"
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
    @score -= 10
  end

  def collect_treasure(amount)
    @gold_coins += amount
    if @gold_coins >= 10
      @score += 1
      @gold_coins -= 10
      if score == 10
        level_up
      end
    end

    "Health: #{health_points}, Lives: #{lives}, Score: #{score}, Coins: #{gold_coins}"
  end




end

me = Player.new
50.times { puts me.collect_treasure(1) }
