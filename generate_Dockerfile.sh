images_list=$(cat images_list)
echo ${images_list}
for i in ${images_list};do
	path_=$(echo ${i}|cut -d \: -f 1)
	tag=$(echo ${i}|cut -d \: -f 2)
	echo ${path_}
	echo ${tag}
	mkdir -p ${path_}
	echo "from ${i}" > ${path_}/Dockerfile.${tag}
done
