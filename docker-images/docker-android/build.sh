#!/bin/sh
echo "Starting build"
# qucik dirty build script
# apis=(10 15 16 17 18 19 21 22 23 24 25 26 27 28)
# archs=(x86 x86_64 armeabi-v7a arm64-v8a)
# images=(default google_apis google_apis_playstore)

apis=(23 25 27)
archs=(x86)
images=(google_apis)

for arch in ${archs[*]}; do
  for image in ${images[*]}; do 
    mkdir -p build/${arch}/${image}
    for api in ${apis[*]}; do
      target=build/${arch}/${image}/api_${api}
      mkdir -p ${target}
      cp -rv docker-assets ${target}/
      version=${arch}_${image}_api_${api}
      gsed -e "s;%version%;${version};g" -e "s;%arch%;${arch};g" -e "s;%image%;${image};g" -e "s;%api%;${api};g" Dockerfile.template > ${target}/Dockerfile
      if [[ "${arch}" == "armeabi-v7a" ]]; then
        printf "`cat docker-assets/config.ini`" ${api} ${image} ${arch} ${api} ${arch} arm > ${target}/docker-assets/config.ini
        echo -e "\nhw.cpu.model=cortex-a8" >> ${target}/docker-assets/config.ini
      else
        printf "`cat docker-assets/config.ini`" ${api} ${image} ${arch} ${api} ${arch} ${arch}  > ${target}/docker-assets/config.ini
      fi
      printf "`cat docker-assets/entrypoint.sh`" ${api}  > ${target}/docker-assets/entrypoint.sh
      #docker build -t jamesbrink/android:${arch}_${image}_${api} ${target}
    done
  done
done

