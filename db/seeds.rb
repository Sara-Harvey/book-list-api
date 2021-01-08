# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

read = Category.create(name: "read")
listen = Category.create(name: "listen")

first_story = Story.create(name: "Dry January is Shocked by Your Naïveté", author: "Ann Cinzar", description: "A funny take on good intentions", link: "https://www.mcsweeneys.net/articles/dry-january-is-shocked-by-your-naivete", category_id: read.id)
second_story = Story.create(name: "Self-Care Tips for Toddlers", author: "Shannon J. Curtain", description: "What doesn't kill kids lets them grow a little older", link: "https://www.mcsweeneys.net/articles/self-care-tips-for-toddlers", category_id: read.id)
third_story = Story.create(name: "Things I Didn't Have on My 2020 Bingo Card Bingo", author: "Kimberly Harrington", description: "2020 surprises", link: "https://www.mcsweeneys.net/articles/things-i-didnt-have-on-my-2020-bingo-card-bingo", category_id: read.id)
fourth_story = Story.create(name: "Mr. Tough Guy", author: "CJ Hunt", description: "CJ Hunt tests his bravery during an apartment confrontation.", link: "https://themoth.org/stories/mr-tough-guy", category_id: listen.id)
fifth_story = Story.create(name: "The Bad Joke", author: "Adriane McGillis", description: "Adrianne McGillis’ father's favorite joke lands him in the hospital.", link: "https://themoth.org/stories/the-bad-joke", category_id: listen.id)
sixth_story = Story.create(name: "The Nerve", author: "Andrew Orvedahl", description: "A comic gets his big break.", link: "https://themoth.org/stories/the-nerve", category_id: listen.id) 