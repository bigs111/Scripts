from pywebcopy import save_webpage
url = 'https://www.google.com/'
folder = '/Users/jackp/OneDrive/Desktop'
kwargs = {'bypass_robots': True, 'project_name': 'sample_webpage'}
save_webpage(url, folder, **kwargs)
print("webpage saved in the location:",folder)