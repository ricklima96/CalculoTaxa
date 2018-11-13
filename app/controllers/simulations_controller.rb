class SimulationsController < ApplicationController
  before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  def index
    @simulation = Simulation.new
  end

  def show

  end

  def edit
  end

  def success
    @simulation = Simulation.find(params[:id])
    @simulation.valorTaxa = (@simulation.prazoTitulo / 10).round * 1.65
    @simulation.valorReceber = (@simulation.valorTitulo - (@simulation.valorTitulo * (@simulation.valorTaxa/100)))

    #ToDo: Implementação de rotina para varia a taxa, eg. acima de 100k/mês é 1.5% e abaixo de 50k/mês é 1.8%);
  end

  def update
  end

  def create
    @simulation = Simulation.new(simulation_params)

    if @simulation.save
        redirect_to success_path(@simulation.id)
      else
      render "index"
    end
  end


  def simulation_params
    params.require(:simulation).permit(:nome, :email, :nomeEmpresa, :faturamentoMensal, :valorTitulo, :prazoTitulo, :valorTaxa, :valorReceber)
  end
end
