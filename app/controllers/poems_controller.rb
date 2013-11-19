class PoemsController < ApplicationController
  def new
    @magnets = Magnet.all
  end

  def create
    @poem = Poem.new
    magnets = JSON.parse(poem_params)

    magnets.each do |m|
      @poem.inclusions.build(magnet: Magnet.find(m["id"]),
                             fridge_top: m["top"],
                             fridge_left: m["left"])
    end

    if @poem.save
      redirect_to @poem
    end
  end

  private

  def poem_params
    params.require(:poem)
  end
end
