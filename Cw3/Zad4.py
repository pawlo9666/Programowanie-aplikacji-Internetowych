def przelicznik(celcjusz , temperature_type):

    if temperature_type == 'f' :
        celcjusz = (celcjusz *1.8) + 32

    elif temperature_type == 'r' :
        celcjusz = (celcjusz * 1.8) + 491.67

    elif temperature_type == 'k' :
        celcjusz = celcjusz + 273.15

    else:
        print("bledny typ temperatury")

    return celcjusz

print(przelicznik(30 , 'r'))