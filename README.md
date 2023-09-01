# Deploy config for Redmine with Ansible

### Hexlet tests and linter status:
[![Actions Status](https://github.com/irenechigrinova/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/irenechigrinova/devops-for-programmers-project-76/actions)

### Requirements
- ansible >= 2.15

### Before start
- edit environment variables in vault by running ```make edit-vault```

### Deploy
- run ```make setup-servers``` - will install all neccessary packages on your ubuntu servers
- run ```make deploy-app``` - will deploy Redmine app on your servers with Datadog monitoring enabled