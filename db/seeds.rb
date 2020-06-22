Customer.destroy_all
CustomerList.destroy_all
WineClub.destroy_all
WineList.destroy_all
Wine.destroy_all



#customer
danira = Customer.create(name: "Danira", age: 31, wine_preference: "Red")
zana = Customer.create(name: "Zana", age: 22, wine_preference: "White")
gabriel = Customer.create(name: "Gabriel", age: 30, wine_preference: "Red")
brandon = Customer.create(name: "Brandon", age: 31, wine_preference: "Red")
haleigh = Customer.create(name: "Haleigh", age: 24)
daniel = Customer.create(name: "Daniel", age: 29)
emiley = Customer.create(name: "Emiley", age: 28)
soundarya = Customer.create(name: "Soundarya", age: 28)
carly = Customer.create(name: "Carly", age: 25)
candace = Customer.create(name:"Candace", age: 24)
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

#cust.list 
cust1 = CustomerList.create(customer_id: danira.id, wine_club_id: artesa.id)
cust2 = CustomerList.create(customer_id: danira.id, wine_club_id: damsel.id)
cust3 = CustomerList.create(customer_id: zana.id, wine_club_id: chimney_rock.id)
cust4 = CustomerList.create(customer_id: zana.id, wine_club_id: marsannay.id)
cust5 = CustomerList.create(customer_id: zana.id, wine_club_id: haystack.id)
cust6 = CustomerList.create(customer_id: gabriel.id, wine_club_id: michelle.id)
cust7 = CustomerList.create(customer_id: gabriel.id, wine_club_id: cree.id)
cust8 = CustomerList.create(customer_id: gabriel.id, wine_club_id: aspenwood.id)
cust9 = CustomerList.create(customer_id: brandon.id, wine_club_id: delille.id)
cust10 = CustomerList.create(customer_id: haleigh.id, wine_club_id: damsel.id)
cust11 = CustomerList.create(customer_id: haleigh.id, wine_club_id: luna.id)
cust12 = CustomerList.create(customer_id: haleigh.id, wine_club_id: domaine.id)
cust13 = CustomerList.create(customer_id: daniel.id, wine_club_id: chimney_rock.id)
cust14 = CustomerList.create(customer_id: daniel.id, wine_club_id: pommard.id)
cust15 = CustomerList.create(customer_id: daniel.id, wine_club_id: beringer.id)
cust16 = CustomerList.create(customer_id: daniel.id, wine_club_id: maison.id)
cust17 = CustomerList.create(customer_id: emiley.id, wine_club_id: michelle.id)
cust18 = CustomerList.create(customer_id: emiley.id, wine_club_id: monticello.id)
cust19 = CustomerList.create(customer_id: soundarya.id, wine_club_id: artesa.id)
cust20 = CustomerList.create(customer_id: soundarya.id, wine_club_id: monticello.id)
cust21 = CustomerList.create(customer_id: soundarya.id, wine_club_id: cree.id)
cust22 = CustomerList.create(customer_id: carly.id, wine_club_id: luna.id)
cust23 = CustomerList.create(customer_id: carly.id, wine_club_id: haystack.id)
cust24 = CustomerList.create(customer_id: candace.id, wine_club_id: artesa.id)
cust25 = CustomerList.create(customer_id: candace.id, wine_club_id: delille.id)
cust26 = CustomerList.create(customer_id: candace.id, wine_club_id: michelle.id)
cust27 = CustomerList.create(customer_id: candace.id, wine_club_id: beringer.id)
cust28 = CustomerList.create(customer_id: candace.id, wine_club_id: pommard.id)
cust29 = CustomerList.create(customer_id: candace.id, wine_club_id: domaine.id)
cust30 = CustomerList.create(customer_id: candace.id, wine_club_id: maison.id)
cust31 = CustomerList.create(customer_id: ronak.id, wine_club_id: cree.id)
cust32 = CustomerList.create(customer_id: ronak.id, wine_club_id: aspenwood.id)

#wines from woodinville
delille_red = Wine.create(name: "Red Willow Malbec", vintage: 2017, grape: "Red", price: 49, origin: "Yakima Valley")
delille_white = Wine.create(name: "Roussanne", vintage: 2019, grape: "White", price: 35, origin: "Red Mountain")
michelle_red = Wine.create(name: "Cold Creek Cabernet Sauvignon", vintage: 2015, grape: "Red", price: 40, origin: "Columbia Valley")
michelle_white = Wine.create(name: "Unoaked Chardonnay", vintage: 2018, grape: "White", price: 24, origin: "Yakima Valley")
aspenwood_red = Wine.create(name: "Red Willow Merlot", vintage: 2017, grape: "Red", price: 39, origin: "Yakima Valley")
damsel_red = Wine.create(name: "Damsel Cabernet Sauvignon", vintage: 2015, grape: "Red", price: 38, origin: "Columbia Valley")
damsel_white = Wine.create(name: "Damsel Chardonnay", vintage: 2018, grape: "White", price: 18, origin: "Horse Heaven Hills")
haystack_red = Wine.create(name: "Eye of the Needle Cabernet Sauvignon", vintage: 2016, grape: "Red", price: 45, origin: "Columbia Valley")
haystack_white = Wine.create(name: "Eye of the Needle Harvest White", vintage: 2019, grape: "White", price: 18, origin: "Columbia Valley")

#wines from napa
artesa_red = Wine.create(name: "Artesa Merlot", vintage: 2016, grape: "Red", price: 80, origin: "Napa Valley")
artesa_white = Wine.create(name: "Artesa Albariño", vintage: 2019, grape: "White", price: 32, origin: "Carneros")
monticello_red = Wine.create(name: "Monticello Pinot Noir", vintage: 2016, grape: "Red", price: 48, origin: "Napa Valley")
monticello_white = Wine.create(name: "Monticello Chardonnay", vintage: 2016, grape: "White", price: 40, origin: "Napa Valley")
chimney_rock_red = Wine.create(name: "Chimney Rock Cabernet Sauvignon", vintage: 2015, grape: "Red", price: 110, origin: "Napa Valley")
chimney_rock_white = Wine.create(name: "Chimney Rock  Elevage Blanc", vintage: 2016, grape: "White", price: 50, origin: "Napa Valley")
luna_red = Wine.create(name: "Luna Merlot Reserve", vintage: 2016, grape: "Red", price: 48, origin: "Napa Valley")
luna_white = Wine.create(name: "Luna Sauvignon Blanc", vintage: 2019, grape: "White", price: 35, origin: "Napa Valley")
beringer_red = Wine.create(name: "Beringer", vintage: 2012, grape: "Red", price: 190, origin: "Napa Valley")
beringer_white = Wine.create(name: "Beringer Chardonnay", vintage: 2018, grape: "White", price: 48, origin: "Napa Valley")

#wines from france
domaine_red = Wine.create(name: "Auguste Pinot Noir", vintage: 2017, grape: "Red", price: 95, origin: "Aloxe-Corton")
domaine_white = Wine.create(name: "Corton Grand Cru White Chardonnay", vintage: 2012, grape: "White", price: 105, origin: "Aloxe-Corton")
maison_red = Wine.create(name: "Beaune Champimonts Pinot Noir", vintage: 2006, grape: "Red", price: 45, origin: "Beaunne")
maison_white = Wine.create(name: "Beaune Clos Des Mouches Chardonnay", vintage: 2012, grape: "White", price: 85, origin: "Beaunne")
cree_red = Wine.create(name: "Pommard Pinot Noir", vintage: 2016, grape: "Red", price: 73, origin: "Santenay")
cree_white = Wine.create(name: "Meursault Chardonnay", vintage: 2014, grape: "White", price: 89, origin: "Santenay")
marsannay_red = Wine.create(name: "Marsannay Le Boivin Pinot Noir", vintage: 2002, grape: "Red", price: 28, origin: "Marsannay")
marsannay_white = Wine.create(name: "Marsannay Blanc Chardonnay", vintage: 2015, grape: "White", price: 30, origin: "Marsannay")
pommard_red = Wine.create(name: "Chambolle-Musigny Pinot Noir", vintage: 2017, grape: "Red", price: 73, origin: "Pommard")
pommard_white = Wine.create(name: "Bourgogne Chardonnay", vintage: 2018, grape: "White", price: 27, origin: "Pommard")

#generic wines
generic_chianti = Wine.create(name:"Bolla Chianti", vintage: 2019, grape: "Red", price: 9, origin: "Tuscany")
generic_malbec = Wine.create(name:"Alamos Malbec Mendoza", vintage: 2016, grape: "Red", price: 16, origin: "Mendoza")
generic_semillion = Wine.create(name:"L'Ecole 41 Semillion", vintage: 2017, grape: "White", price: 15, origin: "Columbia Valley")
generic_moscato = Wine.create(name: "Moscato D'asti Tresecoli", vintage: 2017, grape: "White", price: 15, origin: "Piemonte")
generic_gabbiano = Wine.create(name: "Gabbiano Cavaliere D'oro Chianti", vintage: 2019, grape: "Red", price: 8, origin: "Tuscany")
generic_riesling = Wine.create(name: "Relax Riesling", vintage: 2019, grape: "White", price: 13, origin: "Germany")
generic_merlot = Wine.create(name: "Radius Merlot", vintage: 2019, grape: "Red", price: 12, origin: "Washington")
generic_cabernet = Wine.create(name: "Eccentric Cabernet Sauvignon", vintage: 2018, grape: "Red", price: 10, origin: "Mendoza")
generic_noir = Wine.create(name: "Samuel Robert Windery Pinot Noir", vintage: 2019, grape: "Red", price: 16, origin: "Willamette Valley")
generic_bordeaux = Wine.create(name: "Chateau Bois Redon Bordeaux Superieur", vintage: 2019, grape: "Red", price: 13, origin: "Bordeaux")

#wine list  WineList.create(wine_club_id: , wine_id: )
#woodinville
l_delille_r = WineList.create(wine_club_id: delille.id, wine_id: delille_red.id)
l_delille_w = WineList.create(wine_club_id: delille.id, wine_id: delille_white.id)
l_delille_g = WineList.create(wine_club_id: delille.id, wine_id: generic_chianti.id)
l_michelle_r = WineList.create(wine_club_id: michelle.id, wine_id: michelle_red.id)
l_michelle_w = WineList.create(wine_club_id: michelle.id, wine_id: michelle_white.id)
l_michelle_g = WineList.create(wine_club_id: michelle.id, wine_id: generic_malbec.id)
l_aspenwood_r = WineList.create(wine_club_id: aspenwood.id, wine_id: aspenwood_red.id)
l_aspenwood_g = WineList.create(wine_club_id: aspenwood.id, wine_id: generic_semillion.id)
l_damsel_r = WineList.create(wine_club_id: damsel.id, wine_id: damsel_red.id)
l_damsel_w = WineList.create(wine_club_id: damsel.id, wine_id: damsel_white.id)
l_damsel_g = WineList.create(wine_club_id: damsel.id, wine_id: generic_moscato.id)
l_haystack_r = WineList.create(wine_club_id: haystack.id, wine_id: haystack_red.id)
l_haystack_w = WineList.create(wine_club_id: haystack.id, wine_id: haystack_white.id)
l_haystack_g = WineList.create(wine_club_id: haystack.id, wine_id: generic_gabbiano.id)

#napa
l_artesa_r = WineList.create(wine_club_id: artesa.id, wine_id: artesa_red.id)
l_artesa_w = WineList.create(wine_club_id: artesa.id, wine_id: artesa_white.id)
l_artesa_g = WineList.create(wine_club_id: artesa.id, wine_id: generic_riesling.id)
l_monticello_r = WineList.create(wine_club_id: monticello.id, wine_id: monticello_red.id)
l_monticello_w = WineList.create(wine_club_id: monticello.id, wine_id: monticello_white.id)
l_monticello_g = WineList.create(wine_club_id: monticello.id, wine_id: generic_merlot.id)
l_chimney_rock_r = WineList.create(wine_club_id: chimney_rock.id, wine_id: chimney_rock_red.id)
l_chimney_rock_w = WineList.create(wine_club_id: chimney_rock.id, wine_id: chimney_rock_white.id)
l_chimney_rock_g = WineList.create(wine_club_id: chimney_rock.id, wine_id: generic_cabernet.id)
l_luna_r = WineList.create(wine_club_id: luna.id, wine_id: luna_red.id)
l_luna_w = WineList.create(wine_club_id: luna.id, wine_id: luna_white.id)
l_luna_g = WineList.create(wine_club_id: luna.id, wine_id: generic_noir.id)
l_beringer_r = WineList.create(wine_club_id: beringer.id, wine_id: beringer_red.id)
l_beringer_w = WineList.create(wine_club_id: beringer.id, wine_id: beringer_white.id)
l_beringer_g = WineList.create(wine_club_id: beringer.id, wine_id: generic_bordeaux.id)

#france
l_pommard_r = WineList.create(wine_club_id: pommard.id, wine_id: pommard_red.id)
l_pommard_w = WineList.create(wine_club_id: pommard.id, wine_id: pommard_white.id)
l_marsannay_r = WineList.create(wine_club_id: marsannay.id, wine_id: marsannay_red.id)
l_marsannay_w = WineList.create(wine_club_id: marsannay.id, wine_id: marsannay_white.id)
l_cree_r = WineList.create(wine_club_id: cree.id, wine_id: cree_red.id)
l_cree_w = WineList.create(wine_club_id: cree.id, wine_id: cree_white.id)
l_maison_r = WineList.create(wine_club_id: maison.id, wine_id: maison_red.id)
l_maison_w = WineList.create(wine_club_id: maison.id, wine_id: maison_white.id)
l_domaine_r = WineList.create(wine_club_id: domaine.id, wine_id: domaine_red.id)
l_domaine_w = WineList.create(wine_club_id: domaine.id, wine_id: domaine_white.id)

#favorites
fav1 = Favorite.create(customer_id: zana.id, wine_id: artesa_white.id)
fav2 = Favorite.create(customer_id: danira.id, wine_id: domaine_red.id)
fav3 = Favorite.create(customer_id: danira.id, wine_id: luna_red.id)