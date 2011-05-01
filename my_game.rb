require 'rubygems'
require 'Gosu'
require 'player'
require 'fire'
require 'platform'
require 'background'


class MyGame < Gosu::Window
  def initialize
    super(800, 500, false)
    @player = Player.new(self)
    @platform = Platform.new(self)
    @fire = Fire.new(self)
    @background = Background.new(self)
    @play = true
  end

  def update
    if @play
      if button_down? Gosu::Button::KbLeft
        @player.move_left
      end

      if button_down? Gosu::Button::KbRight
        @player.move_right

      if @player.hit_by? @fire
            stop_game!
          end
      end

      @platform.update
          end
end

  def draw
    @player.draw
    @fire.draw
    @platform.draw
    @background.draw
  end

  def stop_game!
    @play = false
  end
end

window = MyGame.new
window.show
