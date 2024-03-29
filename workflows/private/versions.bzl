"""Mirror of release info"""

# Versions should be in descending order so ROSETTA_VERSIONS.keys()[0] is always the latest version.
ROSETTA_VERSIONS = {
    "5.9.5": {
        "darwin_aarch64": "sha256-sqPA8Cqm5NYwVs/CkLu6tFAVKQLPioMzNPSz6xzAVzY=",
        "darwin_x86_64": "sha256-thY508zukq/tUOHAk4KFq8l8YB2hbg3o9mxeeysCNBI=",
        "linux_aarch64": "sha256-NwTll9weAH8oZHVfjhZVgFrZaM6kTmIRG7TLo9nWBzg=",
        "linux_x86_64": "sha256-q1pS+Eh0TeNHYWAb3szuLulUt/p4agWnAAjtBo4P+WY=",
    },
}

# Versions should be in descending order so CIRCLECI_CONFIG_MERGE_VERSIONS.keys()[0] is always the latest version.
# https://github.com/suzuki-shunsuke/circleci-config-merge/releases
# https://dev.to/suzukishunsuke/splitting-circleci-config-yml-10gk
CIRCLECI_CONFIG_MERGE_VERSIONS = {
    "1.1.6": {
        "darwin_aarch64": "sha256-7cQeLrSVRZR+mQu/njn+x//EIb2bhTV2+J8fafRHpr4=",
        "darwin_x86_64": "sha256-vHKDSdDaYK58MaudJ9yOPRKh+OT/LiTQV/9E07RL8qA=",
        "linux_aarch64": "sha256-MaXVQmRK9q9LgsfM5ZzxCIIT8rUcOBbzJ8aVDgK6zWs=",
        "linux_x86_64": "sha256-3eYJn7dShZD1oiS3cgXfqXwdDzclf/N97A2nh7ZfW+w=",
        "windows_aarch64": "sha256-8piGwuZQJ+/j/GSMrLmt87L8lmXoZzcnG9DXinVLRhw=",
        "windows_x86_64": "sha256-FOK9j8/XLcXJkKUadroNA+l/jTMB7W8AF5YbJbdc25k=",
    },
}
