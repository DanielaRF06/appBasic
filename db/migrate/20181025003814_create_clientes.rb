class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :rfc
      t.string :nom_cliente

      t.timestamps
    end
  end
end
