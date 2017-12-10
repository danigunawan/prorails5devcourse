class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def show
	end

	def new
	@portfolio_item = Portfolio.new
	end

	def create
	@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))  #pakai params.require(:portfolio).permit(:title, :subtitle, :body) supaya aman 
	
	respond_to do |format|
      if @portfolio_item.save 
      	format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' } #portolios_path dari routes prefix
      else
      	format.html { render :new }
      end
  end
end

end
