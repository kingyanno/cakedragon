require 'point'

class Platform2

  StartingPosition = Point.new(200, 380)
  EndingPosition = Point.new(300, 380)

  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/platform.png", true)
    @pos = Point.new(StartingPosition.x, StartingPosition.y)
    @speed = 3
  end

  def update
    if @pos.x > EndingPosition.x
      @speed = -3
    end

    if @pos.x < StartingPosition.x
      @speed = 3
    end

    @pos.x = @pos.x + @speed

  end

  def draw
    @icon.draw(@pos.x, @pos.y, 23)
  end
end