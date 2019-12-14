class PortfoliosController < ApplicationController
  def new
    @portfolio = Portfolio.new
  end
  
  def create
    @portfolio = current_user.portfolios.new(portfolio_params)

    if @portfolio.save
      redirect_to portfolios_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:image, :description)
  end
end
