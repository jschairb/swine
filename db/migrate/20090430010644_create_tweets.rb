class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string  :text
      t.string  :from_user
      t.integer :from_user_id
      t.integer :to_user_id
      t.string  :to_user
      t.integer :status_id
      t.string  :source
      t.string  :iso_language_code
      t.string  :status_created_at
      t.string  :profile_image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
