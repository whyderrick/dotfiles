function migrate
  rails db:migrate && rails db:rollback && rails db:migrate
end
