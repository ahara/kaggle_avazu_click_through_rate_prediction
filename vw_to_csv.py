import math

def zygmoid(x):
    return 1 / (1 + math.exp(-x))

with open("../VW/preds.csv","wb") as outfile:
    outfile.write("id,click\n")
    for line in open("../VW/preds.vw"):
        
        row = line.strip().split(" ")
        try:
            outfile.write("%s,%f\n"%(row[1],zygmoid(float(row[0]))))
        except:
            pass
print 'Finished'
