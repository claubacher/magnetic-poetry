class PoemsController < ApplicationController
  def new
    @poem = Poem.new
    @magnets = Magnet.all
  end

  def create
    @poem = Poem.new

    poem_params.each do |name, magnet|
      m = JSON.parse(magnet)

      @poem.inclusions.build(magnet: Magnet.find(m["id"]),
                             fridge_top: m["top"],
                             fridge_left: m["left"])
    end

    if @poem.save
      redirect_to @poem
    end
  end

  def show
    @poem = Poem.find(params[:id])
    @inclusions = @poem.inclusions
    @magnets = Magnet.all
  end

  private

  def poem_params
    params.require(:poem)
  end
end
