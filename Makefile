all: nginx-tweak-master/nginx/sbin/nginx nginx-tweak-master/disktest/disktest nginx-tweak-master/stresstest/stresstest nginx-tweak-master/filecreate/filecreate

nginx-tweak-master.zip:
	wget https://github.com/tangxinfa/nginx-tweak/archive/master.zip -O nginx-tweak-master.zip

nginx-tweak-master: nginx-tweak-master.zip
	unzip nginx-tweak-master.zip

nginx-tweak-master/nginx/sbin/nginx: nginx-tweak-master
	cd nginx-tweak-master &&\
	make -f nginx.Makefile

nginx-tweak-master/disktest/disktest: nginx-tweak-master
	cd nginx-tweak-master &&\
	make -C disktest

nginx-tweak-master/stresstest/stresstest: nginx-tweak-master
	cd nginx-tweak-master &&\
	make -C stresstest

nginx-tweak-master/filecreate/filecreate: nginx-tweak-master
	cd nginx-tweak-master &&\
	make -C filecreate
