class CreatePizzaPies < ActiveRecord::Migration
  def change
    create_table :pizza_pies do |t|

      t.timestamps null: false
    end
  end
end
