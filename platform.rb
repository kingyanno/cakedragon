class Platform

  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/platform.png", true)
    @x = 150
    @y = 380
  end

  def update
    if @x > 400
      @x = 150
    else
      @x = @x + 2
      end
  end

  def draw
    @icon.draw(@x, @y, 23)
  end
end