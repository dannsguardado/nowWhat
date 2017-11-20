class EventosController < ApplicationController
	def index 

	end

	def show
		@evento = Evento.find(params[:id])
	end

	def new

	end

	def edit
		@evento = Evento.new(evento_params)
		@evento.save
	end

	def create
		#render plain: params[:evento].inspect
		@evento = Evento.new(evento_params)
		@evento.save
		redirect_to @evento
	end

	private def evento_params
		params.require(:evento).permit(:title, :target, :speakrs, :theme, :description)
		
	end
end
