class PoemsController < ApplicationController
  def new
    @magnets = Magnet.all.each
  end
end
