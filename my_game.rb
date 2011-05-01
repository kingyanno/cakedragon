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
  end

  def update
    if button_down? Gosu::Button::KbLeft
      @player.move_left
    end

    if button_down? Gosu::Button::KbRight
      @player.move_right
    end

    @platform.update
  end

  def draw
    @player.draw
    @fire.draw
    @platform.draw
    @background.draw
  end
end

window = MyGame.new
window.show
