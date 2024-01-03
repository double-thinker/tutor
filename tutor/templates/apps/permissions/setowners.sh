#! /bin/sh
setowner $OPENEDX_USER_ID /mounts/lms /mounts/cms /mounts/openedx
{% if RUN_ELASTICSEARCH %}setowner {{ OPENEDX_USER_ID }} /mounts/elasticsearch{% endif %}
{% if RUN_MONGODB %}setowner {{ OPENEDX_USER_ID }} /mounts/mongodb{% endif %}
{% if RUN_MYSQL %}setowner {{ OPENEDX_USER_ID }} /mounts/mysql{% endif %}
{% if RUN_REDIS %}setowner {{ OPENEDX_USER_ID }} /mounts/redis{% endif %}

{{ patch("local-docker-compose-permissions-command") }}
