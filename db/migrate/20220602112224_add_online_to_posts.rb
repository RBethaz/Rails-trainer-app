class AddOnlineToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :online, :boolean, default: false
  end
end
