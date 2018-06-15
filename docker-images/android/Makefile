#!/usr/bin/make -f

NAME=conveyer/android
TEMPLATE=Dockerfile.template
.PHONY: test all clean nexus5x_x86_default_23 nexus5x_x86_google_apis_23 nexus5x_x86_google_apis_24 nexus5x_x86_google_apis_25 nexus5x_x86_google_apis_27
.DEFAULT_GOAL := nexus5x_x86_default_23

all: nexus5x_x86_default_23 nexus5x_x86_google_apis_23 nexus5x_x86_google_apis_24 nexus5x_x86_google_apis_25 nexus5x_x86_google_apis_27

nexus5x_x86_default_23:
	mkdir -p $(@)
	cp -rp docker-assets $(@)
	cp -rp hooks $(@)
	cp Dockerfile.template $(@)/Dockerfile
	cp .dockerignore $(@)/.dockerignore
	sed -i -r 's/ARG DEVICE_NAME=.*/ARG DEVICE_NAME="Nexus 5X"/g' $(@)/Dockerfile
	sed -i -r 's/ARG DEVICE_MODEL=.*/ARG DEVICE_MODEL=Nexus_5X/g' $(@)/Dockerfile
	sed -i -r 's/ARG ARCH=.*/ARG ARCH=x86/g' $(@)/Dockerfile
	sed -i -r 's/ARG IMAGE_TYPE=.*/ARG IMAGE_TYPE=default/g' $(@)/Dockerfile
	sed -i -r 's/ARG API=.*/ARG API=23/g' $(@)/Dockerfile
	sed -i -r 's/emulator @.*/emulator @Nexus_5X_API_23/g' $(@)/docker-assets/entrypoint.sh
	sed -i -r 's/image.sysdir.1=.*/image.sysdir.1=system-images\/android-23\/default\/x86\//g' $(@)/docker-assets/config.ini
	sed -i -r 's/AvdID=.*/AvdID=Nexus_5X_API_23/g' $(@)/docker-assets/config.ini
	sed -i -r 's/abi.type=.*/abi.type=x86/g' $(@)/docker-assets/config.ini
	sed -i -r 's/hw.cpu.arch=.*/hw.cpu.arch=x86/g' $(@)/docker-assets/config.ini
	cd $(@) && docker build -t $(NAME):$(@) .

nexus5x_x86_google_apis_23:
	mkdir -p $(@)
	cp -rp docker-assets $(@)
	cp -rp hooks $(@)
	cp Dockerfile.template $(@)/Dockerfile
	cp .dockerignore $(@)/.dockerignore
	sed -i -r 's/ARG DEVICE_NAME=.*/ARG DEVICE_NAME="Nexus 5X"/g' $(@)/Dockerfile
	sed -i -r 's/ARG DEVICE_MODEL=.*/ARG DEVICE_MODEL=Nexus_5X/g' $(@)/Dockerfile
	sed -i -r 's/ARG ARCH=.*/ARG ARCH=x86/g' $(@)/Dockerfile
	sed -i -r 's/ARG IMAGE_TYPE=.*/ARG IMAGE_TYPE=google_apis/g' $(@)/Dockerfile
	sed -i -r 's/ARG API=.*/ARG API=23/g' $(@)/Dockerfile
	sed -i -r 's/emulator @.*/emulator @Nexus_5X_API_23/g' $(@)/docker-assets/entrypoint.sh
	sed -i -r 's/image.sysdir.1=.*/image.sysdir.1=system-images\/android-23\/google_apis\/x86\//g' $(@)/docker-assets/config.ini
	sed -i -r 's/AvdID=.*/AvdID=Nexus_5X_API_23/g' $(@)/docker-assets/config.ini
	sed -i -r 's/abi.type=.*/abi.type=x86/g' $(@)/docker-assets/config.ini
	sed -i -r 's/hw.cpu.arch=.*/hw.cpu.arch=x86/g' $(@)/docker-assets/config.ini
	cd $(@) && docker build -t $(NAME):$(@) .

nexus5x_x86_google_apis_24:
	mkdir -p $(@)
	cp -rp docker-assets $(@)
	cp -rp hooks $(@)
	cp Dockerfile.template $(@)/Dockerfile
	cp .dockerignore $(@)/.dockerignore
	sed -i -r 's/ARG DEVICE_NAME=.*/ARG DEVICE_NAME="Nexus 5X"/g' $(@)/Dockerfile
	sed -i -r 's/ARG DEVICE_MODEL=.*/ARG DEVICE_MODEL=Nexus_5X/g' $(@)/Dockerfile
	sed -i -r 's/ARG ARCH=.*/ARG ARCH=x86/g' $(@)/Dockerfile
	sed -i -r 's/ARG IMAGE_TYPE=.*/ARG IMAGE_TYPE=google_apis/g' $(@)/Dockerfile
	sed -i -r 's/ARG API=.*/ARG API=24/g' $(@)/Dockerfile
	sed -i -r 's/emulator @.*/emulator @Nexus_5X_API_24/g' $(@)/docker-assets/entrypoint.sh
	sed -i -r 's/image.sysdir.1=.*/image.sysdir.1=system-images\/android-24\/google_apis\/x86\//g' $(@)/docker-assets/config.ini
	sed -i -r 's/AvdID=.*/AvdID=Nexus_5X_API_24/g' $(@)/docker-assets/config.ini
	sed -i -r 's/abi.type=.*/abi.type=x86/g' $(@)/docker-assets/config.ini
	sed -i -r 's/hw.cpu.arch=.*/hw.cpu.arch=x86/g' $(@)/docker-assets/config.ini
	cd $(@) && docker build -t $(NAME):$(@) .

nexus5x_x86_google_apis_25:
	mkdir -p $(@)
	cp -rp docker-assets $(@)
	cp -rp hooks $(@)
	cp Dockerfile.template $(@)/Dockerfile
	cp .dockerignore $(@)/.dockerignore
	sed -i -r 's/ARG DEVICE_NAME=.*/ARG DEVICE_NAME="Nexus 5X"/g' $(@)/Dockerfile
	sed -i -r 's/ARG DEVICE_MODEL=.*/ARG DEVICE_MODEL=Nexus_5X/g' $(@)/Dockerfile
	sed -i -r 's/ARG ARCH=.*/ARG ARCH=x86/g' $(@)/Dockerfile
	sed -i -r 's/ARG IMAGE_TYPE=.*/ARG IMAGE_TYPE=google_apis/g' $(@)/Dockerfile
	sed -i -r 's/ARG API=.*/ARG API=25/g' $(@)/Dockerfile
	sed -i -r 's/emulator @.*/emulator @Nexus_5X_API_25/g' $(@)/docker-assets/entrypoint.sh
	sed -i -r 's/image.sysdir.1=.*/image.sysdir.1=system-images\/android-25\/google_apis\/x86\//g' $(@)/docker-assets/config.ini
	sed -i -r 's/AvdID=.*/AvdID=Nexus_5X_API_25/g' $(@)/docker-assets/config.ini
	sed -i -r 's/abi.type=.*/abi.type=x86/g' $(@)/docker-assets/config.ini
	sed -i -r 's/hw.cpu.arch=.*/hw.cpu.arch=x86/g' $(@)/docker-assets/config.ini
	cd $(@) && docker build -t $(NAME):$(@) .

nexus5x_x86_google_apis_27:
	mkdir -p $(@)
	cp -rp docker-assets $(@)
	cp -rp hooks $(@)
	cp Dockerfile.template $(@)/Dockerfile
	cp .dockerignore $(@)/.dockerignore
	sed -i -r 's/ARG DEVICE_NAME=.*/ARG DEVICE_NAME="Nexus 5X"/g' $(@)/Dockerfile
	sed -i -r 's/ARG DEVICE_MODEL=.*/ARG DEVICE_MODEL=Nexus_5X/g' $(@)/Dockerfile
	sed -i -r 's/ARG ARCH=.*/ARG ARCH=x86/g' $(@)/Dockerfile
	sed -i -r 's/ARG IMAGE_TYPE=.*/ARG IMAGE_TYPE=google_apis/g' $(@)/Dockerfile
	sed -i -r 's/ARG API=.*/ARG API=27/g' $(@)/Dockerfile
	sed -i -r 's/emulator @.*/emulator @Nexus_5X_API_27/g' $(@)/docker-assets/entrypoint.sh
	sed -i -r 's/image.sysdir.1=.*/image.sysdir.1=system-images\/android-27\/google_apis\/x86\//g' $(@)/docker-assets/config.ini
	sed -i -r 's/AvdID=.*/AvdID=Nexus_5X_API_27/g' $(@)/docker-assets/config.ini
	sed -i -r 's/abi.type=.*/abi.type=x86/g' $(@)/docker-assets/config.ini
	sed -i -r 's/hw.cpu.arch=.*/hw.cpu.arch=x86/g' $(@)/docker-assets/config.ini
	cd $(@) && docker build -t $(NAME):$(@) .

test: test-nexus5x_x86_default_23

test-nexus5x_x86_default_23:
	if [ "`docker run conveyer/android cat /template/version.txt`" != "0.1.0" ]; then exit 1;fi

clean:
	rm -rf nexus5x_x86_default_23
	rm -rf nexus5x_x86_google_apis_23
	rm -rf nexus5x_x86_google_apis_24
	rm -rf nexus5x_x86_google_apis_25
	rm -rf nexus5x_x86_google_apis_27
