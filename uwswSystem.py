from user import user
from course import course 
from errors import MakeCourseError, LoginError

class uwswSystem(object):
    def __init__(self):
        self.__courses = [] # list of all courses
        self.__users = [] # list of all system users

    def add_course(self,course):
        self.__courses.append(course)

    def get_course_by_id(self, course_id):
        for i in self.__courses:
            if i.get_id() == course_id:
                return i
        return null # no course found for that id

    def check_course_addable(self, course_id):
        for i in self.__courses:
            if i.get_id() == course_id:
                return False
        return True
    
    def get_courses(self):
        return self.__courses

    def delete_course(self, course):
        self.__courses.remove(course)

    def add_user(self, user):
        self.__users.append(user)

    def del_user(self, user):
        self.__users.remove(user)
        
    def get_users(self):
        return self.__users
        
    def get_user_by_id(self, user_id):
        for i in self.__users:
            if i.get_id() == user.id:
                return i
        return None
        
    # checks if course id already exists in system
    # returns True if it does, otherwise False
    def check_course_id(self, course_id):
        for i in self.__courses:
            if i.get_id() == course_id:
                return True
        return False

    def make_new_course(self, difficulty, review, grade, course_id):
        errors = MakeCourseError({})
        errsFound = errors.check_make_course_error(difficulty, review, grade, course_id)
        print(errsFound)
        if errsFound != {}:
            raise MakeCourseError(errors)
        else:
            if(self.check_course_addable(course_id)):
                newC = course(difficulty, review, grade, course_id)
                self.add_course(newC)
                return newC

    def validate_login(self, zid, password):
        errors = LoginError({})
        errsFound = errors.check_login_error(zid, password)
        if errsFound != {}:
            raise LoginError(errors)
        else:
            for c in self.__users:
                if c.get_id() == zid and c.validate_password(password):
                    return c
            return None