class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @noticia = Noticia.order("fecha DESC").limit(1)
  end
end
