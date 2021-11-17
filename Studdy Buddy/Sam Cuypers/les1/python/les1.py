def print_name(naam):
    print("your name is: " + naam)


def print_random_text():
    print("Hello this is a random text")
    print("Now the function print_name will be called")
    print_name("Emir")


def main():
    print_random_text()

if __name__ == '__main__':
    main()