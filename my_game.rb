require 'rubygems'
require 'gosu'
$: << File.dirname( __FILE__)

require 'player'
require 'fire'
require 'platform'
require 'background'
require 'sign'
require 'my_game2'


class MyGame < Gosu::Window
  def initialize
    super(800, 500, false)
    @player = Player.new(self)
    @platform = Platform.new(self)
    @fire = Fire.new(self)
    @background = Background.new(self)
    @sign = Sign.new(self)
    @play = true

  end

  def update
    if @play
      if button_down? Gosu::Button::KbLeft
        @player.move_left
      end

      if button_down? Gosu::Button::KbRight
        @player.move_right

      if @hit_by_fire
        if @player.hit_by? @fire
            stop_game!
      end

      @platform.update
          end

      if @sign.hit_by? @player
            next_level!
          end
      end
  end

  def draw
    if @play
      @player.draw
      @fire.draw
      @platform.draw
      @background.draw
      @sign.draw
    end
  end

  def stop_game!
    @play = false
  end

  def next_level!
    @play = false
    @play2 = true
  end
  end
end




window = MyGame.new
window.show
