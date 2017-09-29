class CreateBrandsStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands_stores) do |b|
      b.column(:brand_id, :integer)
      b.column(:store_id, :integer)

      b.timestamps()
    end
  end
end
