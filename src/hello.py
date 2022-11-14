#citation https://stackoverflow.com/questions/125703/how-to-modify-a-text-file
import sys
import fileinput

print("Hello world")
str = "[5,6,1,8,3,7]" # user input

# replace all occurrences of 'PLACEDHOLER'
for i, line in enumerate(fileinput.input('sum.pl', inplace=1)):
    sys.stdout.write(line.replace('PLACEHOLDER1', str))  # replace 'sit' and write
