# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

levels = (1..10).map { |n| Level.create! number: n }
levels.each_cons(2) do |level, next_level|
  level.update! next_level: next_level
end
