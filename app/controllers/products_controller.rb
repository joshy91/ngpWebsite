class ProductsController < ApplicationController
  def redirect(url, text)
  	redirect_to url, notice: text
  end
  def index
  	@products = Product.all
  	@search = params["search"]
    if @search.present?
      @part_number = @search["part_number"]
      @products = Product.where(part_number: @part_number)
  	end
  end
  def import
  	if params[:file]
  		Product.import(params[:file])
  		redirect(root_url, "Activity Data imported!")	
  	else
  		redirect(root_url, "Please upload a CSV file")
  	end
  end
end
