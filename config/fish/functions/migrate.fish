function migrate
  rails db:migrate && rails db:rollback && rails db:migrate && rails db:test:prepare
end
