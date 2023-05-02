DATABASE_PASSWORD = ''
HCAPTCHA_SITE_KEY = ''
HCAPTCHA_SECRET_KEY = ''

try:
	from dev_settings import *
except ImportError:
	pass