class CompaniesController < ApplicationController

  # TODO:
  # def index
  def index
  @companies = Company.all
  end

  # end

  def show
    @company = Company.find_by({ "id" => params["id"] })
  end

end
