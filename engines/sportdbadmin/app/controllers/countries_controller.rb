# encoding: utf-8

class CountriesController < ApplicationController

  # GET /countries
  def index
    @countries = Country.all
  end

  # GET /:key  e.g  /at or /us etc.
  def shortcut
    @country = Country.find_by_key!( params[:key] )
    render :show
  end

  # GET /countries/1
  def show
    @country = Country.find( params[:id] )
  end



end # class CountriesController