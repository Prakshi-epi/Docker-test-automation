from collections import Counter
fname = '/12.txt'
fout = '/out.txt'
with open(fname, 'r') as file:
	wordcount = Counter(file.read().split())
with open(fout, 'w') as newfile:
	newfile.write(str(wordcount))
