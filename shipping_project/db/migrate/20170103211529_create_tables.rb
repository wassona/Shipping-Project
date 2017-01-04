class CreateTables < ActiveRecord::Migration[5.0]
  def change

    create_table :boats do |t|
    	t.string :name
    	t.integer :containers
    end

    create_table :jobs do |t|
    	t.string :description
    	t.decimal :cost
    	t.integer :containers_needed
    	t.references :origin
    	t.references :destination
    end

    create_table :locations do |t|
    	t.string :name
    end

    create_table :boats_jobs do |t|
    	t.references :boat
    	t.references :job
    end

  end
end
