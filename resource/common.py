from selenium import webdriver
from robot.libraries.BuiltIn import BuiltIn
from sys import platform as _platform
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from datetime import datetime, timedelta



def get_selenium2library_version():

    return BuiltIn().get_library_instance('Selenium2Library').__version__
    
def get_os_name():

    if _platform == "linux" or _platform == "linux2":
       return 'linux'
       # linux
    elif _platform == "darwin":
       return 'macosx'
       # MAC OS X
    elif _platform == "win32":
       return 'windows'
       # Windows
    elif _platform == "win64":
        return 'windows'
        # Windows 64-bit
    else:
        return 'Unknown OS'

def get_selenium_webdriver_version():

    return webdriver.__version__

def get_current_browser():

    return BuiltIn().get_library_instance('Selenium2Library')._current_browser()

def find_confirm_security_exception_button(self,button_text):

    driver = get_current_browser()
    elem = driver.find_element_by_xpath("//*[text()='" + button_text + "']")
    elem.send_keys(Keys.TAB+Keys.TAB+Keys.TAB+Keys.RETURN)

def policy_date_in_future():
    date_tomorrow = datetime.now() + timedelta(days=1)
    FUTUREDATE = date_tomorrow.strftime('%d.%m.%Y')

    