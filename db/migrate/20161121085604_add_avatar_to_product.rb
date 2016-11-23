class AddAvatarToProduct < ActiveRecord::Migration
 def up
  
    add_attachment :products, :avatar1
    add_attachment :products, :avatar2
    add_attachment :products, :avatar3
    add_attachment :products, :avatar4
    add_attachment :products, :avatar5


    add_attachment :products, :other_avatar1
    add_attachment :products, :other_avatar2
    add_attachment :products, :other_avatar3
    add_attachment :products, :other_avatar4
    add_attachment :products, :other_avatar5
  end

  def down

    remove_attachment :products, :avatar1
    remove_attachment :products, :avatar2
    remove_attachment :products, :avatar3
    remove_attachment :products, :avatar4
    remove_attachment :products, :avatar5


    remove_attachment :products, :other_avatar1
    remove_attachment :products, :other_avatar2
    remove_attachment :products, :other_avatar3
    remove_attachment :products, :other_avatar4
    remove_attachment :products, :other_avatar5

  end
end
