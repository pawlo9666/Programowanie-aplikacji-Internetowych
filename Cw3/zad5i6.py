'''Stwórz klasę Calculator, która będzie posiadać funkcje add, difference,
 multiply, divide.'''

class Calculator:
    def __init__(sefl):
        pass

    def add(a, b):
        return a + b

    def difference(a, b):
        return a - b

    def multiply(a, b):
        return a * b

    def devide(a, b):
        return a / b


class ScienceCalc(Calculator):
    def pow(a, b):
        temp = a
        for i in range(b-1):
            temp *= a
        return temp

    def sqrt(a,b):
        return a **(1/b)

print(ScienceCalc.sqrt(9,2))
