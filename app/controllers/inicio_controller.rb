class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @noticia = Noticia.order("fecha DESC").limit(1)
    @eventos = Evento.order("fecha DESC").limit(3)
    @socios1 = Socio.order("created_at ASC").limit(12)
    @socios2 = Socio.order("created_at DESC").limit(12)
  end
end
