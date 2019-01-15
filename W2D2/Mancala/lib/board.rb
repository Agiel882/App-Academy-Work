class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14)
  end

  def place_stones
    cups.each_index do |i|
      cups[i] = [:stone, :stone, :stone, :stone] unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    if start_pos > 15 || start_pos < 0 || start_pos == 6 || start_pos == 13
      raise("invalid starting cup")
    elsif cups[start_pos].empty?
      raise("Starting cup is empty!")
      retry
    end
  end

  def make_move(start_pos, current_player_name)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
