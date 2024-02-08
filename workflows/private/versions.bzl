"""Mirror of release info"""

# Versions should be in descending order so ROSETTA_VERSIONS.keys()[0] is always the latest version.
ROSETTA_VERSIONS = {
    "5.9.4": {
        "darwin_aarch64": "sha256-JOUgcmXjol1OH1+Amop3Vui7mCn/Inxj8ZNMfe138bo=",
        "darwin_x86_64": "sha256-LNjmAlAs705oPF8ZVNzTM2Oiyk4KnEvIdtymLgyjCsE=",
        "linux_aarch64": "sha256-rN19MEFcyYgd9QD1/UzsxIOz/MK+vXrRQNgOlCSs9iQ=",
        "linux_x86_64": "sha256-DWzwS/XTVxixIxFPQRcXvuKzOrsaP7nyW0ti7uweuYY=",
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
