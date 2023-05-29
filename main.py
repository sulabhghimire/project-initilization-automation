import sys
import os
from github import Github

path = '/home/sulabhghimire'

def create():
    if str(sys.argv[1]) == 'flutter':
        newpath = path + '/FlutterApps'
        if not os.path.exists(newpath):
            os.makedirs(newpath)
        newpath =  newpath + '/'
        return newpath


if __name__ == "__main__":
    path = create()
    print(path)
    sys.exit(path)