class AddUserToNeonSigns < ActiveRecord::Migration[7.2]
  def change
    add_reference :neon_signs, :user, null: false, foreign_key: true
  end
end
