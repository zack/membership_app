for i in 0...5 # seed 5 pillars
  Pillar.seed do |p|
    p.name = Faker::Commerce.department(1)
  end
end
