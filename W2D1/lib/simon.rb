class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length, @game_over, @seq = 1, false, []
  end

  def play
    until @game_over
      take_turn
      system('clear')
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sentence

    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    puts "Repeat the sequence by entering the first letter of each color on a new line."
    @seq.each do |color|
      user_color = gets.chomp
      if color[0] != user_color
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "You remembered all the colors correctly!"
  end

  def game_over_message
    puts "You failed to follow the pattern.."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


if $PROGRAM_NAME == __FILE__
  s = Simon.new
  s.play
end
