class FactsController < ApplicationController
	def index
	  	@fact = Fact.order("RANDOM()")
  	end

  	def create
  		@fact = Fact.create(fact_params)
  	if @fact.invalid?
    	flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  	end
  		redirect_to root_path
  	end

	private

  	def fact_params
    	params.require(:fact).permit(:question, :answer)
  	end
end
