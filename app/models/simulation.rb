class Simulation < ApplicationRecord
  validates :nome, :nomeEmpresa, :faturamentoMensal, :prazoTitulo, :email, :valorTitulo, :presence => true
  validates :prazoTitulo, :numericality => { :greater_than_or_equal_to => 10 }
  validates :valorTitulo, :numericality => { :greater_than_or_equal_to => 500 }
end
