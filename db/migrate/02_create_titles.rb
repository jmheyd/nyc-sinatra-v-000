#02_create_titles.rb
class CreateTitles < ActiveRecord::Migration
  def change
  	create_table :titles do |t|
  		t.string :name
  	end
  end
end
