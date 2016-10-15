namespace :dev do
    
    desc "Clear tmp, database and re-run all migrations and db:seed"
    
    task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate"]
    task :rebuild => [ "dev:build", "db:seed" ]

end
