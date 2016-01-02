$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'repo_xp/active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/test.sqlite3')
ActiveRecord::Migrator.migrate('db/migrate', nil)
