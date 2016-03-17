class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.timestamp :start_time, null:false
    	t.timestamp :end_time
    end
  end
end
