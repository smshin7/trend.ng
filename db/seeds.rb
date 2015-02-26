# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create(
[ 
  { name: "United States", woeid: "23424977"},
  { name: "Los Angeles", woeid: "2442047"},
  { name: "San Francisco", woeid: "2487956"},
  { name: "New York City", woeid: "2459115"},
  { name: "Chicago", woeid: "2379574"},
  { name: "Boston", woeid: "2367105"},
  { name: "Seattle", woeid: "2490383"},
  { name: "Dallas", woeid: "2388929"},
  { name: "Miami", woeid: "2450022"},
  { name: "Washington D.C.", woeid: "2450022"},
  { name: "Detroit", woeid: "2391585"},
  { name: "Atlanta", woeid: "2391585"},
  { name: "Phoenix", woeid: "2471390"},
  { name: "Houston", woeid: "2424766"},
  { name: "Philadelphia", woeid: "2471217"},
  { name: "San Diego", woeid: "2487889"},
  { name: "Memphis", woeid: "2449323"},
  { name: "Las Vegas", woeid: "2436704"},
  { name: "San Jose", woeid: "2488042"},
  { name: "Portland", woeid: "2475687"},
  { name: "Indianapolis", woeid: "2427032"}
]
)
