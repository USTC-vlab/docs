import json
import os
import re
import requests


def get_issues():
    repo = "USTC-vlab/notifications"
    url = f"https://api.github.com/repos/{repo}/issues?state=all"
    r = requests.get(url)
    r.raise_for_status()
    return r.json()


def print_issue(f, issue, header="!!! abstract"):
    print(f'{header} "{issue["title"]}"\n', file=f)
    s = issue["body"].replace("\r", "")
    s = re.sub(r"\[(\d+)\]", r"[{}-\1]".format(issue["number"]), s)
    s = re.sub("^", "    ", s, flags=re.MULTILINE)
    print(s, end="\n\n", file=f)


def generate_md(f, data):
    print("# 通知公告\n", file=f)

    i_open = [i for i in data if i["state"] == "open"]
    i_closed = [i for i in data if i["state"] == "closed"]

    if i_open:
        # no header required
        for issue in i_open:
            print_issue(f, issue)

    if i_closed:
        print("## 历史公告 {#previous}\n", file=f)
        for issue in i_closed:
            print_issue(f, issue, "??? success")

def main():
    data = get_issues()
    data.sort(key=lambda i: -i["number"])

    with open("docs/announcements.md", "w") as f:
        generate_md(f, data)


if __name__ == "__main__":
    main()
