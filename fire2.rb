class Fire2

  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/fire.png", true)
    @x = 225
    @y= 400
  end

  def draw
    @icon.draw(@x, @y, 2)
  end

  def x
    @x
  end

  def y
    @y
  end
end

