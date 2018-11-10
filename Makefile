
ACCESSOR_REPO="https://repo.eecs.berkeley.edu/svn-anon/projects/terraswarm/accessors/trunk/accessors"
DOCKERIMAGE="hellospencer/nodejs-accessor"

accessors:
	svn co --non-interactive --trust-server-cert ${ACCESSOR_REPO}

build: ${DOCKERIMAGE}
	
${DOCKERIMAGE}:	accessors
	docker build -t ${DOCKERIMAGE} .

test: 
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke test/auto/Stop

