

from db_project import DbProject

projects = DbProject.get_all()

for project in projects:
    print(project[1])