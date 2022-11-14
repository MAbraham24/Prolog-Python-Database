# citation https://stackoverflow.com/questions/125703/how-to-modify-a-text-file
import sys
import fileinput

print("Welcome!")
herovillain = input("Do you want to search for a hero or villain?\n")# user input
role = input("Which role do you want? Ex. healer, dealer or tanker?\n")

# replace all occurrences of 'PLACEDHOLER'
for i, line in enumerate(fileinput.input('overwatch.pl', inplace=1)):
    sys.stdout.write(line.replace('PLACEHOLDER1', herovillain))
      # replace 'sit' and write
for i, line in enumerate(fileinput.input('overwatch.pl', inplace=1)):
    sys.stdout.write(line.replace('PLACEHOLDER2', role))
      # replace 'sit' and write
