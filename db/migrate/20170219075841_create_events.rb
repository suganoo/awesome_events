class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer  :owner_id
      t.string   :name,       nill: false
      t.string   :place,      nill: false
      t.string   :name,       nill: false
      t.datetime :start_time, nill: false
      t.datetime :end_time,   nill: false
      t.text     :content,    nill: false

      t.timestamps
    end

    add_index :events, :owner_id
  end
end
