"""Views, one for each Insta485 page."""
from outandequal.views.index import show_index
from outandequal.views.map.map import show_map
from outandequal.views.accounts.login import show_login
from outandequal.views.accounts.signup import show_create
from outandequal.views.search import show_search
from outandequal.views.accounts.logout import user_logout
from outandequal.views.feed import show_feed