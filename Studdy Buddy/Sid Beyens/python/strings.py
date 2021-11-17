import random

# def genereer_teskt(getal):
#     tekst = ""
#     for i in range(getal):
#         letter = random.randrange(ord("A"),ord("Z") + 1)
#         tekst += chr(letter)
#     return tekst

# ik ben emir en ik ben 19 jaar oud
def vervangs_klinkers(zin, teken):
    klinkers = ["a", "e", "i", "o", "u"]
    
    for letter in zin.lower():
        if letter in klinkers:
            zin = zin.replace(letter, teken)
    return zin

# def main():
#     # print(genereer_teskt(7))
#     print(vervangs_klinkers("Ik ben emir en ik ben 19 jaar oud", "*"))

# if __name__ == "__main__":
#     main()



    


# klassieke for loop

# for {naam} in range(start, einde (exclusief), stap)

# tekst = "hello world"

# for i in range(0, 10 + 1, 2):
#     print(i)

# for letter in tekst:
#     print(letter)

# for i in range(len(tekst)):
#     "hello world" = ["h", "e", "l"]
#     tekst[i - 1] = ""

