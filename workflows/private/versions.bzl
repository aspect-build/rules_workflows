"""Mirror of release info"""

# Versions should be in descending order so ROSETTA_VERSIONS.keys()[0] is always the latest version.
ROSETTA_VERSIONS = {
    "5.9.2": {
        "darwin_aarch64": "sha256-DT/DyJuykKDmgZ/hHqC1JF+iYnkK6PjCwi4cXH7JD4g=",
        "darwin_x86_64": "sha256-j3LPtSVc56uBC3ZTTMtnECZmOTMlbz4MeGPu6mbTpEo=",
        "linux_aarch64": "sha256-tlJF0qgR5RQ/9Q4F9O9y2K4nRLJg3V2D25xXxRJzAAY=",
        "linux_x86_64": "sha256-RAQfYXWhisbdW2D5WzjirYmWjc0+Rpjqg2vtMKQy6rc=",
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
