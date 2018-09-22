class MakeCourseError(Exception):

	def __init__(self, errors, msg=None):
		if msg is None:
			msg = "Creating a new event error occurs with fields: %s"%(', '.join(errors.keys()))
		super().__init__(msg)
		self.errors = errors

	def check_make_course_error(self, difficulty, review, grade, course_id):
		errors = {}
		if difficulty == '':
			errors['difficulty'] = "Specify a valid difficulty!"
		if review == '':
			errors['review'] = "Specify a valid review!"
		if grade == '':
			errors['grade'] = "Specify a valid grade!"
		if course_id == '':
			errors['course_id'] = "Specify a valid course id!"
		if 'difficulty' not in errors:
			if not difficulty.isdigit(): # if difficulty is not a number
				errors['not_num'] = "Difficulty must be an integer!"
			if int(difficulty) > 5 or int(difficulty) < 0:
				errors['invalide_difficulty'] = "Difficulty must be between 0 and 5 inclusive!"
		if 'grade' not in errors:
			if not grade.isdigit():
 				errors['not_num'] = "Grade must be an integer!"
			if int(grade) > 100 or int(grade) < 0:
				errors['invalide_grade'] = "Grade must be between 0 and 100 inclusive!"
		return errors

class LoginError(Exception):

	def __init__(self, errors, msg=None):
		if msg is None:
			msg = "Login error occurs with fields: %s"%(', '.join(errors.keys()))
		super().__init__(msg)
		self.errors = errors

	def check_login_error(self, zid, password):
		errors = {}
		if zid == '':
			errors['zid'] = "Specify a valid zid"
		if not zid.isdigit():
			errors['zid_not_num'] = "ZID must be an integer!"
		if password == '':
			errors['password'] = "Specify a valid password"
		return errors