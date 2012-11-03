# encoding: utf-8

class CountriesController < ApplicationController

  # GET /countries
  def index
    @countries = Country.all
  end

  # GET /countries/1
  def show
    @country = Country.find( params[:id] )
  end
  
end # class CountriesController