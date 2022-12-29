class AddAreaIdToConcursos < ActiveRecord::Migration[5.2]
  def change
    add_column :concursos, :area_id, :integer
  end
end
