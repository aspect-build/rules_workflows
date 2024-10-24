"""Mirror of release info"""

# Versions should be in descending order so ROSETTA_VERSIONS.keys()[0] is always the latest version.
ROSETTA_VERSIONS = {
    "5.11.11": {
        "darwin_aarch64": "sha256-/GJKW2nEbSqzWq7EktsrEYfVh7pcEOcjXc/FO3gLq/s=",
        "darwin_x86_64": "sha256-M8Spn2pofidhSF+A3Sgfo4GHzT2IbNMtyrhsH/sa9mc=",
        "linux_aarch64": "sha256-/JgiYSzxlgn3rKX1TCPzbC0kqt2IhPy5vtRSqtaIBVk=",
        "linux_x86_64": "sha256-NQYXx6sjjS1w6s931Qby9OzgG42MPSTFtjh5s8560To=",
    },
    "5.11.0": {
        "darwin_aarch64": "sha256-zmWdxspunpc9Sz5iZOow0FotE66EGe6WFeHk5+vwMJ8=",
        "darwin_x86_64": "sha256-5V6SxvL3QYWbBE/GuwP1ReJwpe0zkznb+j8n4V36O+E=",
        "linux_aarch64": "sha256-qwscEgk9kdMnNZ9df+Cw8aPo1ZokIHViS6+6nCSsfSU=",
        "linux_x86_64": "sha256-WgDaxOssma7zDHGh+iZ4p3MyBvIBk6m138ZWzR44g2Q=",
    },
    "5.10.13": {
        "darwin_aarch64": "sha256-TkFUVQ6CsDlTbz219DfWHr7DcY+ZkIS0CRWBWykCfOU=",
        "darwin_x86_64": "sha256-mRHbTUfeKNIeWa0byk6KfnQvDHJnF2TotdzY6Ca5r8k=",
        "linux_aarch64": "sha256-Hfozo/oyragk03w9AZxOrlPwpybgXKJGGm894L4OjNw=",
        "linux_x86_64": "sha256-qoEV0Ooj2LaIzRe55Ge+Y+VyXluDpTcN/gqPCdS3/10=",
    },
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
