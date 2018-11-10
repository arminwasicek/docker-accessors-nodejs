
ACCESSOR_REPO="https://repo.eecs.berkeley.edu/svn-anon/projects/terraswarm/accessors/trunk/accessors"
DOCKERIMAGE="hellospencer/nodejs-accessor"

accessors:
	svn co --non-interactive --trust-server-cert ${ACCESSOR_REPO}

build: ${DOCKERIMAGE}
	
${DOCKERIMAGE}:	accessors
	docker build -t ${DOCKERIMAGE} .

test1: 
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke test/auto/Stop

test2:
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke -t 3000 -js /root/accessor.js

