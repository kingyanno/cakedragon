class Player


  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/Untitled.png", true)
    @x = 50
    @y = 340
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

  def speed
    return 3
  end

end

