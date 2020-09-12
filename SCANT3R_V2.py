import sys, subprocess 
import os 

link = input("Your Target:$ ") 
print()
print("[#] In case of Errors & Bugs. Contact the Author") 

subprocess.call("echo"+link+" | python3 scant3r/scant3r.py", shell=True)
