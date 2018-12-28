class Api::V1::CategoriesController < ApplicationController

    def index
      @categories = Category.all
      render json: @categories
    end

    def show
      @category = Category.find_by id: (params[:id])
      if @category
        render json: @category
      else
        render json: {error: 'Category not found.'}, status: 404
      end
    end

end
