class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
      t.string :nome
      t.string :email
      t.string :nomeEmpresa
      t.decimal :faturamentoMensal
      t.decimal :valorTitulo
      t.decimal :prazoTitulo
      t.decimal :valorTaxa
      t.decimal :valorReceber

      t.timestamps
    end
  end
end
