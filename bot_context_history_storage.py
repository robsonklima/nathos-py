import json
from datetime import datetime
from pymongo import MongoClient
from db_project import DbProject
from db_requirement import DbRequirement
from db_task import DbTask
from db_category import DbCategory
from db_risk import DbRisk


def execute():
    try:
        mongoClient = MongoClient('localhost', 27017)

        projectsDb = DbProject.get_all()
        projects = []

        for i, project in enumerate(projectsDb):
            requirementsDb = DbRequirement.get_by_project_id(project['project_id'])
            requirements = []

            for i, req in enumerate(requirementsDb):
                tasksDb = DbTask.get_by_requirement_id(req['requirement_id'])
                tasks = [];

                for i, task in enumerate(tasksDb):
                    tasks.append({
                        'name': task['name'],
                        'percentageCompleted': task['percentage_completed'],
                        'userModifiedAt': str(task['user_modified_at']) if task['user_modified_at'] != None else None,
                        'created_at': str(task['created_at']) if task['created_at'] != None else None
                    })

                requirements.append({
                    'requirementId': req['requirement_id'],
                    'projectId': req['project_id'],
                    'title': req['title'],
                    'description': req['description'],
                    'type': req['type'],
                    'rat': req['rat'],
                    'translated': req['translated'],
                    'botModifiedAt': str(req['bot_modified_at']) if req['bot_modified_at'] != None else None,
                    'userModifiedAt': str(req['user_modified_at']) if req['user_modified_at'] != None else None,
                    'createdAt': str(req['created_at']) if req['created_at'] != None else None,
                    'tasks': tasks
                })

                tasks = [];

            categoriesDb = DbCategory.get_by_project_id(project['project_id'])
            categories = []

            for i, category in enumerate(categoriesDb):
                categories.append({
                    'title': category['title'],
                    'confidence': category['confidence'],
                    'created_at': str(category['created_at']) if category['created_at'] != None else None
                })

            risksDb = DbRisk.get_by_project_id(project['project_id'])
            risks = []

            for i, risk in enumerate(risksDb):
                risks.append({
                    'description': risk['description'],
                    'created_at': str(risk['created_at']) if risk['created_at'] != None else None
                })

            projects.append({
                'projectId': project['project_id'],
                'name': project['name'],
                'description': project['description'],
                'size': project['size'],
                'methodology': project['methodology'],
                'translated': project['translated'],
                'classified': project['classified'],
                'userModifiedAt': str(project['user_modified_at']) if project['user_modified_at'] != None else None,
                'botModifiedAt': str(project['bot_modified_at']) if project['bot_modified_at'] != None else None,
                'createdAt': str(project['created_at']) if project['created_at'] != None else None,
                'requirements': requirements,
                'categories': categories,
                'risks': risks
            })

            requirements = []
            categories = []
            risks = []

        # mongoClient.nhatos.context_historics.delete_many({})

        result = mongoClient.nhatos.context_historics.insert_many(
            [{"created_at": str(datetime.now().strftime('%Y-%m-%d %H:%M:%S')), "projects": projects}])

        print(result.inserted_ids)
    except Exception as e:
        print(e)