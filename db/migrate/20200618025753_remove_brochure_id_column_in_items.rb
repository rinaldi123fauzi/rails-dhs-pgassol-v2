class RemoveBrochureIdColumnInItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :brochure_id, :integer
  end
end
