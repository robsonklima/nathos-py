import pandas as pd
from git_repos_extractor import GitReposExtractor
from git_commits_extractor import GitCommitsExtractor
from db_repo import DbRepo
from db_category import DbCategory
from db_commit import DbCommit


def execute():
    try:
        #Delete All Repos
        DbRepo.delete_all_repos()

        # Get All Categories
        categories = DbCategory.get_all()

        for category in categories:
            repos = GitReposExtractor.extract_all_by_topic(category[2], "")

            for repo in repos['items']:
                DbRepo.insert_repo(repo['name'].replace("'", " "), repo['full_name'],
                                   repo['owner']['login'], repo['stargazers_count'],
                                   repo['language'], repo['description'], category[2])

        # Get All Repos
        repos = DbRepo.get_all_repos()

        for repo in repos:
            commits = GitCommitsExtractor.extract_all_by_owner_repo(repo[4], repo[1], 1, 100)

            for commit in commits:
                DbCommit.insert_commit(commit["commit"]["message"].replace("'", " "),
                                       commit["commit"]["committer"]["email"],
                                       pd.to_datetime(commit["commit"]["committer"]["date"]),
                                       repo[0])
    except Exception as ex:
        print(ex)