# House.destroy_all
# Sorting.destroy_all
# Student.destroy_all



#customer
danira = Customer.create("Danira", 31, "red")
zana = Customer.create("Zana", 22, "white")
gabriel = Customer.create("Gabriel", 30, "red")
brandon = Customer.create("Brandon", 300, "red")
haleigh = Customer.create("Haleigh", 24)
daniel = Customer.create("Daniel", 29)
emiley = Customer.create("Emiley", 28)
soundarya = Customer.create("Soundarya", 28)
carly = Customer.create("Carly", 25)
candace = Customer.create("Captain Gangsta Candace", 24)
ronak = Customer.create("Ronak", 25)

#woodinville
delille = WineClub.create("DeLille Cellars", "Woodinville")
michelle = WineClub.create("Chateau Ste. Michelle", "Woodinville")
aspenwood = WineClub.create("Aspenwood Cellars", "Woodinville")
damsel = WineClub.create("Damsel Cellars", "Woodinville")
haystack = WineClub.create("Haystack Needle Winery", "Woodinville")

#napa
artesa = WineClub.create("Artesa Vineyards", "Napa Valley")
monticello = WineClub.create("Monticello Vineyards","Napa Valley")
chimney_rock = WineClub.create("Chimney Rock Winery","Napa Valley")
luna = WineClub.create("Luna Vineyards","Napa Valley")
beringer = WineClub.create("Beringer Vineyards","Napa Valley")

#france
pommard = WineClub.create("Chateau de Pommard","Pommard")
marsannay = WineClub.create("Chateau Marsannay","Marsannay")
cree = WineClub.create("Chateau de la Cree","Santenay")
maison = WineClub.create("Maison Albert Bichot","Beaunne")
domaine = WineClub.create("Domaine Comte Senard","Aloxe-Corton")


#wines from woodinville
delille_red = Wine.create("Red Willow Malbec", 2017, "red", 49, "Yakima Valley")
delille_white = Wine.create("Roussanne", 2019, "white", 35, "Red Mountain")
michelle_red = Wine.create("Cold Creek Cabernet Sauvignon", 2015, "red", 40, "Columbia Valley")
michelle_white = Wine.create("Unoaked Chardonnay", 2018, "white", 24, "Yakima Valley")
aspenwood_red = Wine.create("Red Willow Merlot", 2017, "red", 39, "Yakima Valley")
damsel_red = Wine.create("Damsel Cabernet Sauvignon", 2015, "red", 38, "Columbia Valley")
damsel_white = Wine.create("Damsel Chardonnay", 2018, "white", 18, "Horse Heaven Hills")
haystack_red = Wine.create("Eye of the Needle Cabernet Sauvignon", 2016, "red", 45, "Columbia Valley")
haystack_white = Wine.create("Eye of the Needle Harvest White", 2019, "white", 18, "Columbia Valley")

#wines from napa
artesa_red = Wine.create("Artesa Merlot", 2016,"red", 80, "Napa Valley")
artesa_white = Wine.create("Artesa Albariño", 2019,"white", 32, "Carneros")
monticello_red = Wine.create("Monticello Pinot Noir", 2016, "red", 48, "Napa Valley")
monticello_white = Wine.create("Monticello Chardonnay", 2016, "white", 40, "Napa Valley")
chimney_rock_red = Wine.create("Chimney Rock Cabernet Sauvignon", 2015, "red", 110, "Napa Valley")
chimney_rock_white = Wine.create("Chimney Rock  Elevage Blanc", 2016, "white", 50, "Napa Valley")
luna_red = Wine.create("Luna Merlot Reserve", 2016, "red", 48, "Napa Valley")
luna_white = Wine.create("Luna Sauvignon Blanc", 2019, "white", 35, "Napa Valley")
beringer_red = Wine.create("Beringer", 2012, "red", 190, "Napa Valley")
beringer_white = Wine.create("Beringer Chardonnay", 2018, "white", 48, "Napa Valley")

#wines from france
domaine_red = Wine.create("Auguste Pinot Noir", 2017, "red", 95, "Aloxe-Corton")
domaine_white = Wine.create("Corton Grand Cru White Chardonnay", 2012, "white", 105, "Aloxe-Corton")
maison_red = Wine.create("Beaune Champimonts Pinot Noir", 2006, "red", 45, "Beaunne")
maison_white = Wine.create("Beaune Clos Des Mouches Chardonnay", 2012, "white", 85, "Beaunne")
cree_red = Wine.create("Pommard Pinot Noir", 2016, "red", 73, "Santenay")
cree_white = Wine.create("Meursault Chardonnay", 2014, "white", 89, "Santenay")
marsannay_red = Wine.create("Marsannay Le Boivin Pinot Noir", 2002, "red", 28, "Marsannay")
marsannay_white = Wine.create("Marsannay Blanc Chardonnay", 2015, "white", 30, "Marsannay")
pommard_red = Wine.create("Chambolle-Musigny Pinot Noir", 2017, "red", 73, "Pommard")
pommard_white = Wine.create("Bourgogne Chardonnay", 2018, "white", 27, "Pommard")

#generic wines
generic_chianti = Wine.create("Bolla Chianti", 2019, "red", 9, "Tuscany")
generic_malbec = Wine.create("Alamos Malbec Mendoza", 2016, "red", 16, "Mendoza")
generic_semillion = Wine.create("L'Ecole 41 Semillion", 2017, "white", 15, "Columbia Valley")
generic_moscato = Wine.create("Moscato D'asti Tresecoli", 2017, "white", 15, "Piemonte")
generic_gabbiano = Wine.create("Gabbiano Cavaliere D'oro Chianti", 2019, "red", 8, "Tuscany")
generic_riesling = Wine.create("Relax Riesling", 2019, "white", 13, "Germany")
generic_merlot = Wine.create("Radius Merlot", 2019, "red", 12, "Washington")
generic_cabernet = Wine.create("Eccentric Cabernet Sauvignon", 2018, "red", 10, "Mendoza")
generic_noir = Wine.create("Samuel Robert Windery Pinot Noir", 2019, "red", 16, "Willamette Valley")
generic_bordeaux = Wine.create("Chateau Bois Redon Bordeaux Superieur", 2019, "red", 13, "Bordeaux")
