import csv
import sys

with open('data.csv', 'r') as f:
    reader = csv.reader(f)
    your_list = list(reader)

del your_list[0]
#print (your_list)

def getN(this_list):
	N=0
	for i in range(len(this_list)):
		N+=float(this_list[i][2])
	return N

def getT(col,this_list):
	T=0
	for i in range(len(this_list)):
		T+=float(this_list[i][col])*float(this_list[i][2])
	return T

Case=input("Select what do you want to sort based on:\n1:Overview\n2:Difficulty\n3:WAM\n")

Num=getN(your_list)

if (Case=="1"):
	TotalScore=getT(3,your_list)
	for i in range(len(your_list)):
		ri= (TotalScore+ float(your_list[i][3])*float(your_list[i][2]))/(Num+float(your_list[i][2]))
		ri=round(ri,2)
		your_list[i].append(ri)

	your_list.sort(key=lambda l:l[6],reverse=True)
	print ("sort based on Overview")	
elif (Case=="2"):
	TotalScore=getT(3,your_list)
	for i in range(len(your_list)):
		ri= (TotalScore+ float(your_list[i][2])*float(your_list[i][4]))/(Num+float(your_list[i][2]))
		ri=round(ri,2)
		your_list[i].append(ri)
	your_list.sort(key=lambda l:l[6],reverse=True)
	
	print ("sort based on Difficulty")
elif (Case=="3"):
	#we dont have to do Bayersian ranking on WAM
	#sorted(your_list,key=lambda l:l[0])
	your_list.sort(key=lambda l:l[5],reverse=True)
	print ("sort based on WAM")

#print (your_list)
your_list.insert(0,["COURSECODE","CourseName","NumberOfRater","AverageOverview","AverageDifficulty","AverageWAM"])

with open('result.csv','w') as myfile:
	wr= csv.writer(myfile)
	wr.writerows(your_list) 

