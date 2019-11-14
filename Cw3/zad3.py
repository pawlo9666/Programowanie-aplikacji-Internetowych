'''Stwórz funkcję, która przyjmie jako parametry text oraz letter,
a następnie zwróci wynik usunięcia wszytkich wystąpień wartości w letter
 z tekstu text.'''


def delfun(text, letter):
    for j in letter:
        text = text.replace(j, '')
    return text


text = 'abcabcdef'
letter = 'abc'

print(delfun(text, letter))
