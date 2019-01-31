#!/usr/bin/python
#Defining all varibles that are needed and editing them so they can be used properly.
#Also getting the user input of key and ciphered text
Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Alphabet = Alphabet.lower()
key = str(raw_input("Enter the key that is used: "))
cipher = str(raw_input("Enter the ciphered text: "))
key = key.lower()
cipher = cipher.lower()
c = 0
answer = ""
newalpha = ""
#----------------------------------
#Adjusting key to ciphered text: 
if (len(cipher)>len(key)):
	for i in range (0,(len(cipher)-len(key))):
		key += key[i]
elif (len(cipher)<len(key)):
	key = key[:(len(key)-len(cipher))]
#---------------------------------------
#Iterating over the key
for i in range (0,len(key)):
        	
	for j in range (0,len(Alphabet)):
			#print "Testing: " + Alphabet[j] + " with " + key[i]
		if (key[i]==Alphabet[j]):
				
			#Shifting alphabet so that the letter of the key is always the first letter of the new alphabet
			#so creating n*(length of key) alphabets
			newalpha = Alphabet[j:] + Alphabet[:j]
	#print newalpha
	#using the alphabets to iterate over the ciphered text and finding matches to extract the right letter from the alphabet
	for n in range (0,len(newalpha)):
		if(newalpha[n]==cipher[c]):
			answer = answer + Alphabet[n]


	c = c + 1	
#Printing the answer / decoded text
print answer
