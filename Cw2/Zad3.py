import os
from datetime import datetime

#1. Align/Padding
print('{:>70}'.format('<- odsunięty o 70 od lewej krawędzi, wyrównanie do prawej'))
print('{:70}'.format('-> odsunięty o 70 od prawej krawędzi, wyrównanie do lewej'))
print('{:_<70}'.format('"_" zamiast spacji do konca akapitu'))
print('{:^70}'.format('Center!'))

#2. Coś
ja = {'first': 'Damian', 'last': 'Szefler'}
print('{name[first]} {name[last]}'.format(name=ja))

#3. Data

print('{:%Y-%m-%d %H:%M}'.format(datetime(2019, 10, 10, 10, 53)))