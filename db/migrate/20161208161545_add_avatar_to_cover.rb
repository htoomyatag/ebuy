class AddAvatarToCover < ActiveRecord::Migration
 def up
  
    add_attachment :cover_images, :cover_photo

  end

  def down

    remove_attachment :cover_images, :cover_photo
 

  end
end
