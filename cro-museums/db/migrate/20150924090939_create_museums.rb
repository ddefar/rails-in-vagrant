class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :about
      t.string :access
      t.string :additional
      t.string :audio
      t.decimal :avg_rating
      t.string :cafe
      t.string :city
      t.string :comment
      t.string :event
      t.boolean :favourite
      t.string :guide
      t.string :hours
      t.decimal :latitude
      t.decimal :longitude
      t.string :mail
      t.string :name
      t.string :no
      t.string :post
      t.string :price
      t.string :server_id
      t.string :shop
      t.string :street
      t.string :tel
      t.string :timestmp
      t.string :web

      t.timestamps null: false
    end
  end
end
