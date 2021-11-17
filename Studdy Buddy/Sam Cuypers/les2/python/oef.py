def controleer_code(code):
    # ofwel True ofwel False
    if len(code) == 8:
        if code[0].lower() == "l" or code[0].lower() == "r":
            if code[6:8] == "bo" or code[6:8] == "on":
                print("Juiste productcode")
                return True
            else:
                print("De laatste twee letters zijn geen bo of on")
                return False
        else:
            print("De eerste letter is geen l of r")
            return False

    else:
        print("Uw code moet uit 8 letters bestaan")
        return False


def main():
    code = controleer_code(input("Geef een productcode in: "))
    while code == False:
        code = controleer_code(input("Geef een productcode in: "))
    

if __name__ == "__main__":
    main()