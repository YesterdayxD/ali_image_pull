

function print_stage() {

  echo "##############################$1######################################"

}

images_list=$(cat images_list)
echo ${images_list}
for i in ${images_list};do
	part1=$(echo ${i}|cut -d \< -f 1)
	part2=$(echo ${i}|cut -d \< -f 2)
	echo ${part1}
	echo ${part2}

	path_=$(echo ${part2}|cut -d \: -f 1)
	tag=$(echo ${part2}|cut -d \: -f 2)

	# 拉取
	print_stage "pull"
	nerdctl pull ${part2}
	# tag
	print_stage "tag"
	nerdctl tag ${part2} ${part1}

	# save
	print_stage "save"
	nerdctl image save  -o ${tag}.tar ${part1}

done


