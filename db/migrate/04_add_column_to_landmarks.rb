#04_add_column_to_landmarks.rb
class AddColumnToLandmarks < ActiveRecord::Migration
	def change
		add_column :landmarks, :figure_id, :integer
	end
end

