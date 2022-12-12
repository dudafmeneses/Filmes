class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.date :ano
      t.text :descricao

      t.timestamps
    end
  end
end
