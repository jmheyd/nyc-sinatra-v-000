class CreateLandmarks < ActiveRecord::Migration
  #raise "Write CreateLandmarks migration here"
  def change
  	create_table :landmarks do |t|
  		t.string :name
  		t.integer :year_completed
  		#need to add migration for figure_id
  	end
  end
end
