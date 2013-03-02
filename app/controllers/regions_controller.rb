# encoding: utf-8

class RegionsController < ApplicationController

  # GET /countries
  def index
    ## todo: only get countries w/ regions
    @countries = Country.all
  end


end # class RegionsController