class CreateUserActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_activities do |t|
      t.string :user_name
      t.string :role
      t.datetime :date
      t.string :description
      t.string :controller
      t.string :action
      t.string :browser
      t.string :ip_address

      t.timestamps
    end
  end
end
