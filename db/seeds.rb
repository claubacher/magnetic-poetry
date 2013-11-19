# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# word list from: http://artworkkansascity.files.wordpress.com/2009/02/2010-artwork-magnetic-poetry-words-list.pdf
# TODO customize list(s)

words = %w[& dark ing a day ing a delightful is about desire is above did it after do keep all dream laugh almost e
  learn always eat leave am ed let an er light an es like and est like and evening live animal every long apple fall
  look are favorite love as feel ly as float magic ask flower make at for man bad from me room warm s was s watch s
  we say weather season were see when she which shine whisper simple who sky why snow will so winter some with song
  woman spring word summer work sun world sweet would take y talk year than you that you the your be full memory
  beauty fun month believe garden more the beneath get morning their between ghost must then bird good my there
  birthday grass never they blend green night this blue grow no though bring happy of through but has of time but
  have off to butterfly he on to by here only together calendar here or too can him out touch celebrate his out trick
  change hot paint truth cloud house people up cold how perfect us come I play use comfort I proof vacation could if
  r walk d in rain want]

words.sort.each do |w|
  Magnet.create(content: w)
end
