'''8.Swórz nowy moduł w projekcie o nazwie file_manager. Stwórz klasę FileManager
z parametrem w konstruktorze file_name. Klasa będzie zawierać dwie metody:
read_file oraz update_file. Funkcja update_file powinna zawierac parametr text_data,
 które w efekcie ma być dopisane na końcu pliku. Funkcja read_file powinna zwrócić
zawartość pliku.
9.Zaimportuj klasę FileManager w innym pliku, a następnie zademonstruj działanie klasy.'''


class FileManager():
    def __init__(self, file_name):
        self.file_name=file_name

    def read_file(self):
            file = open(self.file_name)
            text = file.read()
            file.close()
            return text

    def update_file(self, text_data):
        open(self.file_name, 'a').write('\n' + text_data)
