
ACCESSOR_REPO="https://repo.eecs.berkeley.edu/svn-anon/projects/terraswarm/accessors/trunk/accessors"
DOCKERIMAGE="hellospencer/nodejs-accessor"

accessors:
	svn co --non-interactive --trust-server-cert ${ACCESSOR_REPO}

build: ${DOCKERIMAGE}
	
${DOCKERIMAGE}:	accessors
	docker build -t ${DOCKERIMAGE} .

test: test1 test2 test3 test4

test1: 
	@echo "Test1: test/auto/Stop"
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke test/auto/Stop

test2:
	@echo "Test2: accessor.js"
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke -t 3000 -js /root/accessor.js

test3:
	@echo "Test3: test/TestSpontaneous + monitor.js"
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke test/TestSpontaneous -js /root/monitor.js

test4:
	@echo "Test4: test/auto/RampJSDisplay"
	@docker run --rm -it ${DOCKERIMAGE} nodeHostInvoke -timeout 3000 test/auto/RampJSDisplay

