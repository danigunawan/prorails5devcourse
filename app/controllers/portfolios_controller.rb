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
     	format.json { render :show, status: :ok, location: @portfolio_item }
      else
      	format.html { render :new }
      	format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
  end
end

def edit
	@portfolio_item = Portfolio.find(params[:id])	
end

def update
	@portfolio_item = Portfolio.find(params[:id])
	respond_to do |format|
		if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
			format.html { redirect_to portfolios_path, notice: 'Portfolios was successfully updated.' }
			format.json { render :show, status: :ok, location: @portfolio_item }
		else
			format.html { render :edit }
			format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
		end
	end
end

def show
	@portfolio_item = Portfolio.find(params[:id])
end

end
