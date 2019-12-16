# Create Bands
puts "Creating bands..."
run_dmc = Band.create(name: "Run-DMC", hometown: "NYC")
bon_jovi = Band.create(name: "Bon Jovi", hometown: "NJ")
guns_n_roses = Band.create(name: "Guns N' Roses", hometown: "Los Angeles")
madonna = Band.create(name: "Madonna", hometown: "Bay City, MI")
david_bowie = Band.create(name: "David Bowie", hometown: "London")
duran_duran = Band.create(name: "Duran Duran", hometown: "Birmingham")
rem = Band.create(name: "R.E.M.", hometown: "Athens, GA")

puts "Creating venues..."
cbgb = Venue.create(title: "CBGB", city: "NYC")
danceteria = Venue.create(title: "Danceteria", city: "NYC")
the_roxy = Venue.create(title: "The Roxy", city: "Los Angeles")
blitz = Venue.create(title: "Blitz", city: "London")

# TODO: create Concert instances so you can test your relationships

puts "Seeding done!"