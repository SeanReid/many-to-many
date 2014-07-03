CityState.destroy_all
City.destroy_all
State.destroy_all

vegas = City.create name: "Las Vegas"
dallas = City.create name: "Dallas"
atlanta = City.create name: "Atlanta"
arlington = City.create name: "Arlington"
richmond = City.create name: "Richmond"
newark = City.create name: "Newark"

nm = State.create name: "New Mexico"
nv = State.create name: "Nevada"
ga = State.create name: "Georgia"
tx = State.create name: "Texas"
mi = State.create name: "Michigan"
va = State.create name: "Virginia"
nj = State.create name: "New Jersey"
ca = State.create name: "California"
de = State.create name: "Delaware"
ny = State.create name: "New York"

vegas.share(nm)
vegas.share(nv)
dallas.share(ga)
dallas.share(tx)
atlanta.share(ga)
atlanta.share(tx)
atlanta.share(mi)
arlington.share(tx)
arlington.share(va)
richmond.share(va)
richmond.share(ca)
newark.share(nj)
newark.share(ca)
newark.share(de)
