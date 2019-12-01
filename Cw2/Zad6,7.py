lista = [1 ,2 ,3 ,4 ,5 ,6, 7, 8 ,9, 10]
lista2 = lista[5::1]
lista = lista[:5:1]
print(lista)
print(lista2)

lista.insert(0,0)
lista.extend(lista2)
print(lista)