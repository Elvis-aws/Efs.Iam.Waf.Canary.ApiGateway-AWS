
# Run application
    # virtualenv env
    # source env/bin/activate
    # pip3 install -r requirements.txt
    # pip3 freeze > requirements.txt
# On local env
    # set db = dynamo_context.create_dynamo_local_context()
    # export FLASK_APP=src/app.py
    # export FLASK_ENV=development
    # flask run

# EB CLI
    Remove .elasticbeanstalk folder to reset eb init
    Commands
    eb abort
    eb appversion
    eb clone
    eb codesource
    eb config
    eb console
    eb create
    eb deploy
    eb events
    eb health
    eb init
    eb labs
    eb list
    eb local
    eb logs
    eb open
    eb platform
    eb printenv
    eb restore
    eb scale
    eb setenv
    eb ssh
    eb status
    eb swap
    eb tags
    eb terminate
    eb upgrade
    eb use