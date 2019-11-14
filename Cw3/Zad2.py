def slownik(data_text):

    slownik = {}
    slownik = dict([("długość" , len(data_text)) , ("lista znakow" , list(data_text)) , ("duze litery",data_text.upper()),("małe litery" , data_text.lower()) ])

    return slownik

slowniczek = slownik("piesek")

print(slowniczek.values())


