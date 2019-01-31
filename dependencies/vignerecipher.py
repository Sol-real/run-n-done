#!/usr/bin/python

Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Alphabet = Alphabet.lower()
key = str(raw_input("Enter the key that is used: "))
cipher = str(raw_input("Enter the Decodable part: "))
key = key.lower()
cipher = cipher.lower()

answer = ""
newalpha = ""
if (len(cipher)>len(key)):
	for i in range (0,(len(cipher)-len(key))):
		key += key[i]
elif (len(cipher)<len(key)):
	key = key[:(len(key)-len(cipher))]
c = 0
for i in range (0,len(key)):
        	
	for j in range (0,len(Alphabet)):
			#print "Testing: " + Alphabet[j] + " with " + key[i]
		if (key[i]==Alphabet[j]):
				
				
			newalpha = Alphabet[j:] + Alphabet[:j]
	#print newalpha
	for n in range (0,len(newalpha)):
		if(newalpha[n]==cipher[c]):
			answer = answer + Alphabet[n]


	c = c + 1	
print answer
