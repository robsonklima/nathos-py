

from db_commit import DbCommit

#DbCommit.insert("message", "aut", "2018-10-10", 8216)

commits = DbCommit.get_by_repo_id(8216)

for commit in commits:
    print(commit['commit_id'])