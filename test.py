import pytest
from uwswSystem import uwswSystem
from course import course
from server import system

#run pytest using: python3 -m pytest tests.py (doesn't show test names in terminal)
#run using: python3 -m pytest tests.py -s (includes print statements in terminal)

# test cases for adding a course
class TestAddCourse(object):
	
	# difficulty, review, grade, course_id
	def test_all_valid_input(self):
		print('test add a new course to system with all valid input')
		newC = system.make_new_course("3", "blah", "80", "COMP2521")
		assert len(system.get_courses()) == 2 # system has 1 course already
		
	def test_add_repeated_course(self):
		print('test add a course that already exists to system with all valid input')
		existingC = system.make_new_course("3", "blah", "80", "COMP2511")
		assert len(system.get_courses()) == 3 # system has 2 course already
		newC = system.make_new_course("3", "blah", "50", "COMP2521")
		assert len(system.get_courses()) == 3 # system has 2 course already
		
	# test empty difficulty
	def test_empty_difficulty(self):
		print('test make course with empty difficulty')
		with pytest.raises(Exception) as error:
			newCourse = system.make_new_course("", "blah", "50", "COMP2521")
			assert "Specify a valid difficulty!"
			assert len(system.get_courses()) == 1 # system already has 1 course	

	# test invalid difficulty
	def test_invalid_difficulty(self):
		print('test invalid difficulty')
		with pytest.raises(Exception) as error:
			c1 = system.make_new_course("agsdkgue91028", "blah", "50", "COMP2521")
			assert "Difficulty must be an integer!"
			assert len(system.get_open_sems()) == 1 # system already has 1 course	
			c2 = system.make_new_course("jhkwblah", "blah", "50", "COMP2521")
			assert "Difficulty must be an integer!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			c3 = system.make_new_course("-1", "blah", "50", "COMP2521")
			assert "Difficulty must be an integer!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			c4 = system.make_new_course("6", "blah", "50", "COMP2521")
			assert "Difficulty must be an integer!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			
	# test empty review
	def test_empty_review(self):
		print('test make course with empty review')
		with pytest.raises(Exception) as error:
			newCourse = system.make_new_course("1", "", "50", "COMP2521")
			assert "Specify a valid review!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
	
	# test empty grade
	def test_empty_grade(self):
		print('test make course with empty grade')
		with pytest.raises(Exception) as error:
			newCourse = system.make_new_course("1", "blah", "", "COMP2521")
			assert "Specify a valid grade!"
			assert len(system.get_courses()) == 1 # system already has 1 course
			
	# test invalid grade
	def test_invalid_grade(self):
		print('test invalid grade')
		with pytest.raises(Exception) as error:
			c1 = system.make_new_course("2", "blah", "agrkeh2014423", "COMP2521")
			assert "Grade must be an integer!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			c2 = system.make_new_course("3", "blah", "auhgfd", "COMP2521")
			assert "Grade must be an integer!"
			assert len(system.get_courses()) == 1 # system already has 1 course
			c3 = system.make_new_course("3", "blah", "-1", "COMP2521")
			assert "Grade must be between 0 and 5 inclusive!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			c4 = system.make_new_course("3", "blah", "6", "COMP2521")
			assert "Grade must be between 0 and 5 inclusive!"
			assert len(system.get_courses()) == 1 # system already has 1 course	
			
	# test empty course_id
	def test_empty_course_id(self):
		print('test make course with empty course id')
		with pytest.raises(Exception) as error:
			newCourse = system.make_new_course("1", "blah", "50", "")
			assert "Specify a valid course id!"
			assert len(system.get_courses()) == 1 # system already has 1 course
			
# test cases for signing up to system 
class TestRegisterUser(object):

	def test_all_valid_input(self):
		print('test user signup with all valid input')
		user = system.validate_login("1111111", "passDean")
		assert len(system.get_users()) == 1
		
	# test empty zid
	def test_empty_zid(self):
		print('test user signup with empty zid')
		with pytest.raises(Exception) as error:
			user = system.validate_login('', "passDean")
			assert "Specify a valid zid"
			assert len(system.get_users()) == 1 # system already has a user
		
	# test invalid zid
	def test_invalid_zid(self):
		print('test user signup with invalid zid')
		with pytest.raises(Exception) as error:
			user = system.validate_login("12gar3", "passDean")
			assert "Specify a valid zid"
			assert len(system.get_users()) == 1 # system already has a user
		
	# test empty password
	def test_empty_pwd(self):
		print('test user signup with empty password')
		with pytest.raises(Exception) as error:
			user = system.validate_login("1111111", '')
			assert "Specify a valid password"
			assert len(system.get_users()) == 1 # system already has a user
		