Customer.destroy_all
CustomerList.destroy_all
WineClub.destroy_all
WineList.destroy_all
Wine.destroy_all



#customer
danira = Customer.create(name: "Danira", age: 31)
zana = Customer.create(name: "Zana", age: 22, wine_preference: "white")
gabriel = Customer.create(name: "Gabriel", age: 30, wine_preference: "red")
brandon = Customer.create(name: "Brandon", age: 300, wine_preference: "red")
haleigh = Customer.create(name: "Haleigh", age: 24)
daniel = Customer.create(name: "Daniel", age: 29)
emiley = Customer.create(name: "Emiley", age: 28)
soundarya = Customer.create(name: "Soundarya", age: 28)
carly = Customer.create(name: "Carly", age: 25)
candace = Customer.create(name:"Captain Gangsta Candace", age: 24)
ronak = Customer.create(name: "Ronak", age: 25)

#woodinville
delille = WineClub.create(name: "DeLille Cellars", location: "Woodinville")
michelle = WineClub.create(name: "Chateau Ste. Michelle", location: "Woodinville")
aspenwood = WineClub.create(name: "Aspenwood Cellars", location: "Woodinville")
damsel = WineClub.create(name: "Damsel Cellars", location: "Woodinville")
haystack = WineClub.create(name: "Haystack Needle Winery", location: "Woodinville")

#napa
artesa = WineClub.create(name: "Artesa Vineyards", location: "Napa Valley")
monticello = WineClub.create(name: "Monticello Vineyards", location: "Napa Valley")
chimney_rock = WineClub.create(name: "Chimney Rock Winery",location: "Napa Valley")
luna = WineClub.create(name: "Luna Vineyards", location: "Napa Valley")
beringer = WineClub.create(name: "Beringer Vineyards", location: "Napa Valley")

#france
pommard = WineClub.create(name: "Chateau de Pommard", location: "Pommard")
marsannay = WineClub.create(name: "Chateau Marsannay", location: "Marsannay")
cree = WineClub.create(name: "Chateau de la Cree", location: "Santenay")
maison = WineClub.create(name: "Maison Albert Bichot", location: "Beaunne")
domaine = WineClub.create(name: "Domaine Comte Senard", location: "Aloxe-Corton")


#wines from woodinville
delille_red = Wine.create(name: "Red Willow Malbec", vintage: 2017, grape: "red", price: 49, origin: "Yakima Valley")
delille_white = Wine.create(name: "Roussanne", vintage: 2019, grape: "white", price: 35, origin: "Red Mountain")
michelle_red = Wine.create(name: "Cold Creek Cabernet Sauvignon", vintage: 2015, grape: "red", price: 40, origin: "Columbia Valley")
michelle_white = Wine.create(name: "Unoaked Chardonnay", vintage: 2018, grape: "white", price: 24, origin: "Yakima Valley")
aspenwood_red = Wine.create(name: "Red Willow Merlot", vintage: 2017, grape: "red", price: 39, origin: "Yakima Valley")
damsel_red = Wine.create(name: "Damsel Cabernet Sauvignon", vintage: 2015, grape: "red", price: 38, origin: "Columbia Valley")
damsel_white = Wine.create(name: "Damsel Chardonnay", vintage: 2018, grape: "white", price: 18, origin: "Horse Heaven Hills")
haystack_red = Wine.create(name: "Eye of the Needle Cabernet Sauvignon", vintage: 2016, grape: "red", price: 45, origin: "Columbia Valley")
haystack_white = Wine.create(name: "Eye of the Needle Harvest White", vintage: 2019, grape: "white", price: 18, origin: "Columbia Valley")

#wines from napa
artesa_red = Wine.create(name: "Artesa Merlot", vintage: 2016, grape: "red", price: 80, origin: "Napa Valley")
artesa_white = Wine.create(name: "Artesa Albariño", vintage: 2019, grape: "white", price: 32, origin: "Carneros")
monticello_red = Wine.create(name: "Monticello Pinot Noir", vintage: 2016, grape: "red", price: 48, origin: "Napa Valley")
monticello_white = Wine.create(name: "Monticello Chardonnay", vintage: 2016, grape: "white", price: 40, origin: "Napa Valley")
chimney_rock_red = Wine.create(name: "Chimney Rock Cabernet Sauvignon", vintage: 2015, grape: "red", price: 110, origin: "Napa Valley")
chimney_rock_white = Wine.create(name: "Chimney Rock  Elevage Blanc", vintage: 2016, grape: "white", price: 50, origin: "Napa Valley")
luna_red = Wine.create(name: "Luna Merlot Reserve", vintage: 2016, grape: "red", price: 48, origin: "Napa Valley")
luna_white = Wine.create(name: "Luna Sauvignon Blanc", vintage: 2019, grape: "white", price: 35, origin: "Napa Valley")
beringer_red = Wine.create(name: "Beringer", vintage: 2012, grape: "red", price: 190, origin: "Napa Valley")
beringer_white = Wine.create(name: "Beringer Chardonnay", vintage: 2018, grape: "white", price: 48, origin: "Napa Valley")

#wines from france
domaine_red = Wine.create(name: "Auguste Pinot Noir", vintage: 2017, grape: "red", price: 95, origin: "Aloxe-Corton")
domaine_white = Wine.create(name: "Corton Grand Cru White Chardonnay", vintage: 2012, grape: "white", price: 105, origin: "Aloxe-Corton")
maison_red = Wine.create(name: "Beaune Champimonts Pinot Noir", vintage: 2006, grape: "red", price: 45, origin: "Beaunne")
maison_white = Wine.create(name: "Beaune Clos Des Mouches Chardonnay", vintage: 2012, grape: "white", price: 85, origin: "Beaunne")
cree_red = Wine.create(name: "Pommard Pinot Noir", vintage: 2016, grape: "red", price: 73, origin: "Santenay")
cree_white = Wine.create(name: "Meursault Chardonnay", vintage: 2014, grape: "white", price: 89, origin: "Santenay")
marsannay_red = Wine.create(name: "Marsannay Le Boivin Pinot Noir", vintage: 2002, grape: "red", price: 28, origin: "Marsannay")
marsannay_white = Wine.create(name: "Marsannay Blanc Chardonnay", vintage: 2015, grape: "white", price: 30, origin: "Marsannay")
pommard_red = Wine.create(name: "Chambolle-Musigny Pinot Noir", vintage: 2017, grape: "red", price: 73, origin: "Pommard")
pommard_white = Wine.create(name: "Bourgogne Chardonnay", vintage: 2018, grape: "white", price: 27, origin: "Pommard")

#generic wines
generic_chianti = Wine.create(name:"Bolla Chianti", vintage: 2019, grape: "red", price: 9, origin: "Tuscany")
generic_malbec = Wine.create(name:"Alamos Malbec Mendoza", vintage: 2016, grape: "red", price: 16, origin: "Mendoza")
generic_semillion = Wine.create(name:"L'Ecole 41 Semillion", vintage: 2017, grape: "white", price: 15, origin: "Columbia Valley")
generic_moscato = Wine.create(name: "Moscato D'asti Tresecoli", vintage: 2017, grape: "white", price: 15, origin: "Piemonte")
generic_gabbiano = Wine.create(name: "Gabbiano Cavaliere D'oro Chianti", vintage: 2019, grape: "red", price: 8, origin: "Tuscany")
generic_riesling = Wine.create(name: "Relax Riesling", vintage: 2019, grape: "white", price: 13, origin: "Germany")
generic_merlot = Wine.create(name: "Radius Merlot", vintage: 2019, grape: "red", price: 12, origin: "Washington")
generic_cabernet = Wine.create(name: "Eccentric Cabernet Sauvignon", vintage: 2018, grape: "red", price: 10, origin: "Mendoza")
generic_noir = Wine.create(name: "Samuel Robert Windery Pinot Noir", vintage: 2019, grape: "red", price: 16, origin: "Willamette Valley")
generic_bordeaux = Wine.create(name: "Chateau Bois Redon Bordeaux Superieur", vintage: 2019, grape: "red", price: 13, origin: "Bordeaux")


# name vintage grape price origin