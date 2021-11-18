def main():
    temperaturen = []
    neerslagen = []
    teller = 1
    
    while teller <= 7:
        regen = input("Geef regen in\n")
        if regen == "overvloed":
            teller = 8
        else:
            temperatuur = int(input("Geef temperatuur in\n"))
            temperaturen.append(temperatuur)
            neerslagen.append(regen)
            teller += 1
        
    gemiddelde = sum(temperaturen) / len(temperaturen)
    laagste_temp = min(temperaturen)
    
    print("{:>5} {:>15} {:>10}".format("dag", "temperatuur", "neerslag"))
    for i in range(len(temperaturen)):
        print("{:>5} {:>15} {:>10}".format(i + 1, temperaturen[i], neerslagen[i]))

    if laagste_temp >= 15 and laagste_temp > gemiddelde * 0.2 and not "veel" in neerslagen:
        print("We gaan op daguitstap")
    else:
        print("We blijven thuis")

if __name__ == '__main__':
    main()