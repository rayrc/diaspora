class RemoveEmptyPod < ActiveRecord::Migration[4.2]
  def up
    Pod.delete_all("host IS NULL")

    change_column :pods, :host, :string, null: false
  end

  def down
    change_column :pods, :host, :string, null: true
  end
end
