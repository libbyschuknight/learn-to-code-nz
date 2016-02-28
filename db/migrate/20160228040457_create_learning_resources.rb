class CreateLearningResources < ActiveRecord::Migration
  def change
    create_table :learning_resources do |t|
      t.string :name
      t.text :description
      t.integer :age_category, default: 0
      t.integer :delivery_method, default: 0
      t.integer :location, default: 0
      t.integer :event_category, default: 0
      t.string :cost
      t.string :image_link
      t.string :website_link

      t.timestamps null: false
    end
  end
end
