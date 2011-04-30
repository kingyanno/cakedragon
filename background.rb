class Background

  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/sky.png", true)
    @x = 0
    @y = 0
  end

  def draw
    @icon.draw(@x, @y, 1)
  end
end