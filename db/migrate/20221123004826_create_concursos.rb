class CreateConcursos < ActiveRecord::Migration[5.2]
  def change
    create_table :concursos do |t|
      t.string :cargo
      t.integer :vacante
      t.date :finicio
      t.date :ftermino
      t.text :descripcion
      t.string :contrato
      t.string :jornada
      t.text :requisito
      t.integer :eminima
      t.string :estudio
      t.string :dcomputacional

      t.timestamps
    end
  end
end
