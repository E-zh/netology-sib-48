import os

dirs = os.listdir()
filesCount = 0

for i in dirs:
    if os.path.isfile(i):
        print(i)
        filesCount += 1

print("Total: " + str(filesCount))
