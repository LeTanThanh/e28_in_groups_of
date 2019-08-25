20.times do
  Task.create name: FFaker::Lorem.word, description: FFaker::Lorem.sentence
end
