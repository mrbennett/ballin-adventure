from gmusicapi import Mobileclient
import getpass

def print_ids(lists):
	
	
def use_api(client):
	my_playlists = client.get_all_playlists()
	print_ids(my_playlists)

client = Mobileclient()
if client.login(raw_input('Username: '), getpass.getpass()):
	use_api(client)
else:
	print 'couldn\'t login yo'