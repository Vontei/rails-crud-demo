class CreateProductComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :product
      t.string :comment
    end
  end
end
