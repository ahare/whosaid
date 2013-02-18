class PhrasesController < ApplicationController

  def index
    @autocomplete_items = Speaker.all
  end
end
