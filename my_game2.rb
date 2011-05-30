require 'rubygems'
require 'gosu'
$: << File.dirname( __FILE__)

require 'player2'
require 'fire2'
require 'platform2'
require 'platform3'
require 'background'
require 'sign2'


class MyGame < Gosu::Window
  def initialize
    super(800, 500, false)
    @player2 = Player2.new(self)
    @platform2 = Platform2.new(self)
    @platform3 = Platform3.new(self)
    @fire2 = Fire.new(self)
    @background2 = Background.new(self)
    @sign2 = Sign.new(self)
    @play2 = false

  end

  def update
    if @play02
      if button_down? Gosu::Button::KbLeft
        @player.move_left
      end

      if button_down? Gosu::Button::KbRight
        @player.move_right

      if @hit_by_fire
        if @player.hit_by? @fire
            stop_game!
      end

      @platform2.update
      end

      @platform3.update
      end

      if @sign.hit_by? @player
            next_level!
          end
      end
  end

  def draw
    @play2
      @player2.draw
      @fire2.draw
      @platform2.draw
      @platform3.draw
      @background2.draw
      @sign2.draw
  end

  def stop_game!
    @play02 = false
  end

  def next_level!
    @play2= false
    @play02 = false
    @play3 = true
  end
    end




window = MyGame.new
window.show