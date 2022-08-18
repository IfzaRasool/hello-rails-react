class Api::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order(Arel.sql('RANDOM()')).first.message
    render json: {
      message: @greeting
    }
  end
end
