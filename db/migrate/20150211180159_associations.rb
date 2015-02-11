class Associations < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.belongs_to :user
    end

    change_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :post
    end
  end
end
