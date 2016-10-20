class CreateRealtimes < ActiveRecord::Migration
  def change
    create_table :realtimes do |t|

      t.timestamps null: false
    end
  end
end
