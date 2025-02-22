PY?=python3
PELICAN?=pelican
PELICANOPTS=
PIPENV_RUN="pipenv" "run"

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py
SASS_INPUT=$(BASEDIR)/theme/swanlotus/static/sass/swanlotus.sass
CSS_OUTPUT=$(BASEDIR)/theme/swanlotus/static/css/swanlotus.css
PULL_PUSH_SCRIPT=git-pull-push.sh

FTP_HOST=localhost
FTP_USER=anonymous
FTP_TARGET_DIR=/

SSH_HOST=localhost
SSH_PORT=22
SSH_USER=root
SSH_TARGET_DIR=/var/www

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += --relative-urls
endif

SERVER ?= "0.0.0.0"

PORT ?= 0
ifneq ($(PORT), 0)
	PELICANOPTS += -p $(PORT)
endif

help:
	@echo 'Makefile for the SwanLotus Web site                                          '
	@echo '                                                                             '
	@echo 'Usage:                                                                       '
	@echo '   make html                           (re)generate the web site             '
	@echo '   make clean                          remove the generated files            '
	@echo '   make regenerate                     regenerate files upon modification    '
	@echo '   make publish                        generate using production settings    '
	@echo '   make serve [PORT=8000]              serve site at http://localhost:8000   '
	@echo '   make serve-global [SERVER=0.0.0.0]  serve (as root) to $(SERVER):80       '
	@echo '   make devserver [PORT=8000]          serve and regenerate together         '
	@echo '   make ssh_upload                     upload the web site via SSH           '
	@echo '   make rsync_upload                   upload the web site via rsync+ssh     '
	@echo '   make ftp_upload                     upload the web site via FTP           '
	@echo '   make css                            compile sass to css                   '
	@echo '   make pullSL                         pull in changes from remote repository'
	@echo '   make pushSL [COMMIT_MSG="message"]  push changes to remote repository     '
	@echo '                                                                             '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html      '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                       '
	@echo '                                                                             '

html:
	$(PIPENV_RUN) "$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

clean:
	[ ! -d "$(OUTPUTDIR)" ] || rm -rf "$(OUTPUTDIR)"

regenerate:
	${PIPENV_RUN} "$(PELICAN)" -r "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

serve:
	${PIPENV_RUN} "$(PELICAN)" -l "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

serve-global:
	${PIPENV_RUN} "$(PELICAN)" -l "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS) -b $(SERVER)

devserver:
	${PIPENV_RUN} "$(PELICAN)" -lr "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

devserver-global:
	${PIPENV_RUN} "$(PELICAN)" -lr "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS) -b 0.0.0.0

publish:
	${PIPENV_RUN} "$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(PUBLISHCONF)" $(PELICANOPTS)

ssh_upload: publish
	scp -P $(SSH_PORT) -r "$(OUTPUTDIR)"/* "$(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)"

rsync_upload: publish
	rsync -e "ssh -p $(SSH_PORT)" -P -rvzc --include tags --cvs-exclude --delete "$(OUTPUTDIR)"/ "$(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)"

ftp_upload: publish
	lftp ftp://$(FTP_USER)@$(FTP_HOST) -e "mirror -R $(OUTPUTDIR) $(FTP_TARGET_DIR) ; quit"

css:
	sass "$(SASS_INPUT)" "$(CSS_OUTPUT)"

pullSL:
	"./$(PULL_PUSH_SCRIPT)" pull

pushSL:
	"./$(PULL_PUSH_SCRIPT)" push '$(COMMIT_MSG)'

.PHONY: html help clean regenerate serve serve-global devserver publish ssh_upload rsync_upload ftp_upload css pullSL pushSL
