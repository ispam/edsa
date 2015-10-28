class CategoriesController < ApplicationController

	before_filter :set_search, only: [:index]
	def set_search
	  @q = Category.search(params[:q])
	  @categories = @q.result(distinct: true).page params[:page]
	end

	def index
		
	end

	private

	def category_params
	  params.require(:category).permit(:name)
	end
end
