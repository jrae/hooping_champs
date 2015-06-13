class AddScaleToProject < ActiveRecord::Migration
  def change
    add_column :projects, :scale, :integer
    add_column :projects, :search_tags, :string, array: true, default: '{}'
  end
end
