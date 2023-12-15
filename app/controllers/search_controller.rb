class SearchController < ApplicationController
  def index
    @facade = SearchFacade.new(params[:affiliation])
  end
end

