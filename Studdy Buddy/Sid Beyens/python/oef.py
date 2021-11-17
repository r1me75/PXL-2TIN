def get_number_of_participants(lijst):
    return len(lijst[0])

def get_number_of_tests(lijst):
    return len(lijst)

def highest_heart_rate(lijst):
    highest = 0
    for test in lijst:
        for hartslag in test:
            if hartslag > highest:
                highest = hartslag
    return highest

def lowest_heart_rate(lijst):
    lowest = 1000
    for test in lijst:
        for hartslag in test:
            if hartslag < lowest:
                lowest = hartslag
    return lowest


def average_heart_rate(lijst):
    gemiddeldes = []
    
    for test in lijst:
        som = 0
        for hartslag in test:
            som += hartslag
        gemiddeldes.append(som / get_number_of_participants(lijst))
    return gemiddeldes

def heart_rate_difference(lijst):
    hoogste_hartslagen = []
    laagste_harstlagen = []
    verschillen = []

    for i in range(get_number_of_tests(lijst)):
        for j in range(get_number_of_participants(lijst)):
            if i > 0:
                if lijst[i][j] > hoogste_hartslagen[j]:
                    hoogste_hartslagen[j] = lijst[i][j]
                elif lijst[i][j] < laagste_harstlagen[j]:
                    laagste_harstlagen[j] = lijst[i][j]

            hoogste_hartslagen.append(lijst[i][j])
            laagste_harstlagen.append(lijst[i][j])

    for j in range(get_number_of_participants(lijst)):
        verschillen.append(hoogste_hartslagen[j] - laagste_harstlagen[j])
    
    return verschillen

def main():
    heart_rate = [
        [72, 75, 71, 73, 72, 76],
        [91, 90, 94, 93, 88, 91],
        [130, 135, 139, 142, 129, 138],
        [120, 118, 110, 105, 121, 119]
                  ]
    
    print(get_number_of_participants(heart_rate))
    print(get_number_of_tests(heart_rate))
    print(highest_heart_rate(heart_rate))
    print(lowest_heart_rate(heart_rate))
    print(average_heart_rate(heart_rate))
    print(heart_rate_difference(heart_rate))

if __name__ == "__main__":
    main()