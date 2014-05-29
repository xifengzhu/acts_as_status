require File.expand_path('../../lib/acts_as_status', __FILE__)

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: "acts_as_status_test"

ActiveRecord::Migration.create_table :model_demo_sqlites do |t|
  t.string :status  
end unless ActiveRecord::Migration.table_exists?(:model_demo_sqlites)


class ModelDemoSqlite < ActiveRecord::Base
  extend ActsAsStatus

  acts_as_status :status, [:failer, :warning, :success]
end