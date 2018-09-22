from datetime import datetime,timedelta

class course(object):
    def __init__(self, difficulty, review, grade, course_id):
        self.__id = course_id
        self.__difficulty = difficulty
        self.__review = [] # list of all reviews for a course
        self.__grade = grade

    def set_id(self, name):
        self.__id = id

    def get_id(self):
        return self.__id

    def get_difficulty(self):
        return self.__difficulty

    def set_difficulty(self, difficulty):
        self.__difficulty = difficulty 

    def del_difficulty(self, difficulty):
        # delete your difficulty for a course
        self.__difficulty.remove(difficulty)

    def get_review(self):
        return self.__review

    def set_review(self, review):
        self.__review.append(review)

    def del_review(self, review):
        # delete your posted review for a course
        self.__review.remove(review)

    def get_av_grade(self):
        return self.__grade

    def set_av_grade(self, grade):
        self.__grade = grade;

    def del_av_grade(self, grade):
        # delete your posted grade for a course
        self.__grade.remove(grade)
        
    def __str__(self):
        return "Course: {} \n Difficulty: {} \n Review: {} \n Grade: {} \n".format(self.__id,self.__difficulty,self.__review,self.__grade)