from course import course
from user import user
from uwswSystem import uwswSystem
#import csv

def bootstrap_system():

	system = uwswSystem()
	system.add_user(user("1111111", "passDean"))
	'''
	with open('user.csv') as csv_file:
		reader = csv.reader(csv_file)
		next(reader, None)  # Skip the header
		# Unpack the row directly in for loop
		for difficulty, review, grade, course_id in reader:
			system.add_course(Course(difficulty, review, grade, course_id))
	'''
	system.add_course(course("2", "blah", "80", "COMP1511"));
	return system