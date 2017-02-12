class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider,  nill: false
      t.string :uid,       nill: false
      t.string :nickname,  nill: false
      t.string :image_url, nill: false

      t.timestamps
    end

    add_index :users, [:provider, :uid], unique: true
  end
end
