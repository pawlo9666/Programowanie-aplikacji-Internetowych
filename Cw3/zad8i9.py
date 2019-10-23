from Cw3.file_manager import *
plik = FileManager('123.txt')
text = plik.read_file()
plik.update_file('Dodaję coś do pliku :D')
print(text)
print(test)