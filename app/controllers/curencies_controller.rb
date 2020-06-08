class CurenciesController < ApplicationController

  def index
  end

  def search
    @curencies = Curency.where('LOWER(name) LIKE ?', "%#{ params[:keysearch].downcase }%")
    render json: { curencies: @curencies }
  end
  
  #Takes in the curency id and the amount owned
  #Return final calculation
  def calculate
    amount = params[:amount]
    render json: {
      curency: curency,
      current_price: curency.current_price,
      amount: amount,
      value: curency.calculate_value(amount)
    }
  end

  private

  def curency
    @curency ||= Curency.find(params[:id])
  end
  
end