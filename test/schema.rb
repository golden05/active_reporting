ActiveRecord::Schema.define do
  self.verbose = false

  create_table :users, force: true do |t|
    t.string :username
    t.integer :group_id
    t.timestamps null: false
  end

  create_table :profiles, force: true do |t|
    t.integer :user_id
    t.string :favorite_pokemon, null: false
    t.string :favorite_color, null: false
    t.timestamps null: false
  end

  create_table :groups, force: true do |t|
    t.string :name
    t.timestamps null: false
  end

  create_table :posts, force: true do |t|
    t.string :title
    t.text :body
    t.string :state
    t.integer :creator_id
    t.timestamps null: false
  end

  create_table :comments, force: true do |t|
    t.integer :post_id
    t.integer :user_id
    t.text :body
    t.timestamps null: false
  end
end