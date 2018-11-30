

from db_category import DbCategory

categories = DbCategory.get_by_project_id(1)

for category in categories:
    print(category['title'])

