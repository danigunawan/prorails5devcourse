class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
	layout "portfolio"
	def index
		@portfolio_items = Portfolio.all
		# @portfolio_items = Portfolio.where(subtitle: 'Ruby On Rails')
		# @portfolio_items = Portfolio.angular # dari method self.angular dari model portfolio.rb
		# @portfolio_items = Portfolio.ruby_on_rails_portfolio_items # dari scope dari model portfolio.rb
	end

	def angular
		@angular_portfolio_items = Portfolio.angular # dari method self.angular di model portfolio.rb 
	end

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def create
	@portfolio_item = Portfolio.new(portfolio_params)  #pakai params.require(:portfolio).permit(:title, :subtitle, :body) supaya aman 
	
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
	#3.times { @portfolio_item.technologies.build }	# jika ingin setiap kali sudah insert nambah terus 3 input (OPTIONAL)
end

def update
	respond_to do |format|
		# if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
		if @portfolio_item.update(portfolio_params)
			format.html { redirect_to portfolios_path, notice: 'Portfolios was successfully updated.' }
			format.json { render :show, status: :ok, location: @portfolio_item }
		else
			format.html { render :edit }
			format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
		end
	end
end

def show
	#binding.pry
end

def destroy
	# perform the lookup

	# destroy/delete  the record
	@portfolio_item.destroy

	#redirect
	respond_to do |format|
		format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
	end
end

private

def portfolio_params
	params.require(:portfolio).permit(:title, 
									  :subtitle, 
									  :body, 
									  technologies_attributes: [:name]
									  )
end

def set_portfolio_item
	@portfolio_item = Portfolio.find(params[:id])
end

end
