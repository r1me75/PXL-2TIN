import random as rnd

def print_gegenereerde(getallen):
    print("De gegenereerde getallen zijn: ")
    for getal in getallen:
        print(getal, end=" ")
    print()

def print_speciale_afdruk(getallen):
    print("De array in speciale afdruk: ")
    if len(getallen) % 2 == 0: 
        for getal in getallen:
            print(getal, end=" ")
    else:
        for i in range(len(getallen) - 1, -1, -1):
            print(getallen[i], end=" ")

def print_kleiner_dan_gemiddelde(getallen):
    gemiddelde = sum(getallen) / len(getallen)
    print()
    print("De getallen die kleiner zijn dan het gemiddelde:")
    for getal in getallen:
        if getal < gemiddelde:
            print(getal, end=" ")
    print()

def main():
    getallen = []
    aantal = int(input("Geef het aantal getallen dat random zal berekend worden: "))
    while aantal <= 1:
        print("Geef een getal groter dan 1")
        aantal = input("Geef het aantal getallen dat random zal berekend worden: ")

    veelvoud = int(input("Geef het veelvoud op: "))
    while veelvoud >= 10:
        print("Het veelvoud moet kleiner zijn dan 10")
        veelvoud = int(input("Geef het veelvoud op: "))

    for i in range(aantal):
        random_getal = rnd.randint(1, 100)
        while random_getal % veelvoud != 0:
            random_getal = rnd.randint(1, 100)
        getallen.append(random_getal)

    print_gegenereerde(getallen)
    print_speciale_afdruk(getallen)
    print_kleiner_dan_gemiddelde(getallen)


if __name__ == '__main__':
    main()