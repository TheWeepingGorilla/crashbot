class CreateTables < ActiveRecord::Migration
  def change
    create_table   :comments do |t|
      t.string     :comment
      t.references :commentable, polymorphic: true
      t.datetime   :date
    end
    create_table :links do |t|
      t.string   :link
      t.integer  :vote
      t.integer  :rating
      t.datetime :date
    end
  end
end
