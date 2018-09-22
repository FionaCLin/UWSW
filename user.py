from flask_login import UserMixin
from course import course

class user(UserMixin, object):
    __id = -1
    
    def __init__(self, zid, password):
        self.__id = self._generate_id()
        self.__zid = zid
        self.__password = password
        
    """Required by Flask-login"""
    def get_id(self):
        return str(self.__id)

    def _generate_id(self):
        user.__id += 1
        return user.__id

    @property
    def is_authenticated(self):
        return True

    @property
    def is_active(self):
        return True

    @property
    def is_anonymous(self):
        return False

    def set_password(self, password):
        self.__password = password
 
    def get_password(self):
        return self.__password

    def validate_password(self, password):
        return self.__password == password

    def set_zid(self, zid):
        self.__zid = zid
 
    def get_zid(self):
        return self.__zid
        
    def __str__(self):
        return "ZID: {} \nPassword: {} \n Role: {}\n".format(self.__zid, self.__password, self.__role)