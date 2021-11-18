from operator import indexOf
import random as rnd

def bereken_prijs(wagen):
    prijs = wagen[-1]
    
    if wagen[2] == 3:
        prijs -= 1000
    
    if wagen[3] > 90 and wagen[3] <= 110:
        prijs += 700
    elif wagen[3] <= 140:
        prijs += 950
    else:
        prijs += 1250
    
    if "metallic" in wagen[4]:
        prijs += 900

    return prijs

def genereer_lijst(aantal, autos):
    gekozen_autos = []
    gegenereerde_autos = []

    for i in range(aantal):
        random_index = rnd.randint(0, 13)
        while random_index in gegenereerde_autos:
            random_index = rnd.randint(0, 13)
        
        auto = autos[random_index]

        print(auto)
        kopen = input("Wens je deze wagen te kopen (j/n)? ")
        
        if kopen == 'j':
            gekozen_autos.append(auto)
        gegenereerde_autos.append(random_index)

    return gekozen_autos
    
def main():
    autos = [["Volkswagen", "Passat", 5, 120, "groen", 20970], 
         ["Renault", "Kadjar", 5, 138, "blauw metallic", 17990], 
         ["Peugeot", "208", 5, 82, "grijs metallic", 11990], 
         ["BMW", "I3", 5, 168, "wit", 25990], 
         ["Opel", "Corsa", 5, 74, "grijs", 5250], 
         ["Opel", "Mokka", 5, 114, "zwart", 11950], 
         ["Audi", "A5", 5, 170, "zilver", 40900], 
         ["Ford", "Focus", 5, 123, "wit", 15290], 
         ["Ford", "Fiesta", 5, 80, "blauw", 8500], 
         ["Volkswagen", "Polo", 5, 115, "rood", 16990], 
         ["Volkswagen", "Golf", 3, 110, "zwart", 22490], 
         ["Renault", "Twingo", 3, 74, "zilver metallic", 3850], 
         ["Peugeot", "508", 5, 178, "zilver", 14125], 
         ["BMW", "X1", 5, 138, "wit metallic", 32990]] 
    aantal_wagens = rnd.randint(1, len(autos) / 2)
    print("Aantal wagens: {}".format(str(aantal_wagens)))

    gekochte_autos = genereer_lijst(aantal_wagens, autos)
    print("{:10} {:10} {:<10} {:<4} {:15} {:<10}".format("Merk", "type", "#deuren", "#PK", "Kleur", "Prijs") + "\n" + "\n")

    totaal = 0
      
    for auto in gekochte_autos: 
        
        if ((gekochte_autos.index(auto) + 1) % 3 == 0):
            auto[5] = auto[5] * 0.70
            auto[0] = auto[0][::-1]

        print("{:10} {:10} {:<10} {:<4} {:15} {:<10}".format(auto[0], auto[1], auto[2], auto[3], auto[4], auto[5]))
        totaal += bereken_prijs(auto)

    print()
    print("Deze wagens kosten in totaal {} euro".format(round(totaal,0)))
    print("De gemiddelde prijs van de aangekochte wagens in {:.2f} euro".format((totaal / len(gekochte_autos))))


if __name__ == '__main__':
    main()