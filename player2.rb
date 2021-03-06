class Player2


  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/Untitled.png", true)
    @x = 50
    @y = 340
  end
  def x
    @x
  end

  def y
    @y
  end

  def draw
    @icon.draw(@x, @y, 4)
  end

  def move_right
    if @x > (@game_window.width - 50)
      @x = @game_window.width - 50
    else
      @x = @x + speed
    end
  end

  def move_left
    if @x < 0
      @x = 0
    else
      @x = @x - speed
    end
  end

  def hit_by? (fire2)
    Gosu::distance(@x, @y, fire.x, fire.y) < 50
  end

  def speed
    return 5
  end
end


