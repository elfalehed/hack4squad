import os, subprocess

print()
url = input("Enter url: ")
print() 
subprocess.call("sudo "+"python3 dirsearch/dirsearch.py"+" -u "+url+" "+"-e --min", shell=True)

