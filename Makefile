
ACCESSOR_REPO="https://repo.eecs.berkeley.edu/svn-anon/projects/terraswarm/accessors/trunk/accessors"
DOCKERIMAGE="hellospencer/nodejs-accessor"

accessors:
	svn co --non-interactive --trust-server-cert ${ACCESSOR_REPO}

build: accessors
	docker build -t ${DOCKERIMAGE} .

