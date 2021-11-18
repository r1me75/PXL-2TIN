def main():
    output = ""
    
    tekst = ["nul", 'een', "twee", "drie", "vier", "vijf", "zes", "zeven", "acht", "negen"]
    getal = int(input("Geef een geheel getal in: "))

    for cijfer in str(getal):
        # 0 -> tekst[0] -> nul
        output += tekst[int(cijfer)] + " " # "1" -> cast to int -> 1
    
    print(output)

if __name__ == "__main__":
    main()
