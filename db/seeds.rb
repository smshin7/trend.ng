# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(
[ 
  { name: "Los Angeles", woeid: "2442047", image: "http://i.imgur.com/76awobz.jpg" },
  { name: "San Francisco", woeid: "2487956", image: "http://i.imgur.com/wSKIHJH.jpg" },
  { name: "New York City", woeid: "2459115", image: "http://i.imgur.com/2Tp2PkS.jpg" },
  { name: "Chicago", woeid: "2379574", image: "http://i.imgur.com/Xjzb8SC.jpg" },
  { name: "Boston", woeid: "2367105", image: "http://i.imgur.com/7yYEuUF.jpg" },
  { name: "Seattle", woeid: "2490383", image: "http://i.imgur.com/bBKGJdm.jpg" },
  { name: "Dallas", woeid: "2388929", image: "http://i.imgur.com/yrTCquv.jpg" },
  { name: "Miami", woeid: "2450022", image: "http://i.imgur.com/3J2S3Vt.jpg" },
  { name: "Washington D.C.", woeid: "2450022", image: "http://i.imgur.com/WTNEAs3.jpg" },
  { name: "Detroit", woeid: "2391585", image: "http://i.imgur.com/lz5RoIr.jpg" },
  { name: "Atlanta", woeid: "2357024", image: "http://i.imgur.com/M9tHxuM.jpg" },
  { name: "Phoenix", woeid: "2471390", image: "http://i.imgur.com/WZTwoO1.jpg" },
  { name: "Houston", woeid: "2424766", image: "http://i.imgur.com/bgNFRdS.jpg" },
  { name: "Philadelphia", woeid: "2471217", image: "http://i.imgur.com/nUCsBLf.jpg" },
  { name: "San Diego", woeid: "2487889", image: "http://i.imgur.com/IuQidoE.jpg" },
  { name: "Memphis", woeid: "2449323", image: "http://i.imgur.com/zHeE2BO.jpg" },
  { name: "Las Vegas", woeid: "2436704", image: "http://i.imgur.com/7SMPiAs.jpg" },
  { name: "Portland", woeid: "2475687", image: "http://i.imgur.com/fN26fVY.jpg" },
  { name: "Indianapolis", woeid: "2427032", image: "http://i.imgur.com/yy1Oej7.jpg" },
  { name: "St. Louis", woeid: "2486982", image: "http://i.imgur.com/kOKb4tl.jpg" },
  { name: "Cleveland", woeid: "2381475", image: "http://i.imgur.com/TO9rXs9.jpg" }
]
)
