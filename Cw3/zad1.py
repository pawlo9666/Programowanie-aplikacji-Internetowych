'''Stwórz funkcję, która jako parametry przyjmuje dwie listy a_list oraz b_list.
Następnie zwróć listę, która będzie posiadać parzyste indeksy z listy a_list oraz
nieparzyste z b_list.'''


def listfun (listaA, listaB):
    templist=[]
    for i in range(1, len(listaA), 2):
        templist.append(listaA[i])

    for i in range(0, len(listaB), 2):
        templist.append(listaB[i])
    return templist
listaA = [2, 3, 5 ,6]
listaB = [3, 6, 1, 7, 2]


lista=listfun(listaA, listaB)
print(lista)