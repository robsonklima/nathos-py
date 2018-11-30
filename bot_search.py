import pandas as pd
from git_repos_extractor import GitReposExtractor
from git_commits_extractor import GitCommitsExtractor
from db_repo import DbRepo
from db_category import DbCategory
from db_commit import DbCommit


def execute():
    try:
        #Delete All Repos
        DbRepo.delete_all()

        # Get All Categories
        categories = DbCategory.get_all()

        for category in categories:
            repos = GitReposExtractor.extract_all_by_topic(category['title'], "")

            for repo in repos['items']:
                DbRepo.insert(repo['name'].replace("'", " "), repo['full_name'],
                              repo['owner']['login'], repo['stargazers_count'],
                              repo['language'], repo['description'], category[2])

        # Get All Repos
        repos = DbRepo.get_all()

        for repo in repos:
            commits = GitCommitsExtractor.extract_all_by_owner_repo(repo['owner'], repo['name'], 1, 100)

            for commit in commits:
                DbCommit.insert(commit["commit"]["message"].replace("'", " "),
                                       commit["commit"]["committer"]["email"],
                                       pd.to_datetime(commit["commit"]["committer"]["date"]),
                                       repo['repo_id'])
    except Exception as ex:
        print(ex)