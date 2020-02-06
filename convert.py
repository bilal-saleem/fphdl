import os
import subprocess
import glob

files = glob.glob('*.html')

print(files)


for file_name in files:
    new_name = file_name.split('.')[0]
    os.system('pandoc %s -t gfm -o %s.md' % (file_name, new_name))
