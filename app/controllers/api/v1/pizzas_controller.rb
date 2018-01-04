class Api::V1::PizzasController < ApplicationController
  before_action :set_pizza, only: [:show,:update,:destroy]

  def index
    pizzas = Pizza.all
    render json: pizzas, include: ["comments.user"], status: 200
  end

  def create

    pizza = Pizza.create(pizza_params)
    render json: pizza, status: 201
  end

  def update
    @pizza.update(pizza_params)
    render json: @pizza, status: 200
  end

  def destroy
    pizzaId = @pizza.id
    @pizza.destroy
    render json: {message:"Zap! Pizza deleted", pizzaId:pizzaId}
  end

  def show
    render json: @pizza, status: 200
  end

  private
  def pizza_params
    params.permit(:pizza_url, :user_id, :restaurant_name, :tally)
  end

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end
end
