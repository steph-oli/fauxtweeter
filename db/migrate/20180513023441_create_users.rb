class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :profile_pic
      t.integer :follower_id
      t.binary :profile_pic

      t.timestamps
    end
  end
end
