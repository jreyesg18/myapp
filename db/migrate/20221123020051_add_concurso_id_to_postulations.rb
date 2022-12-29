class AddConcursoIdToPostulations < ActiveRecord::Migration[5.2]
  def change
    add_column :postulations, :concurso_id, :integer
  end
end
