# baSH очистка RAM
ClearRAM(){
	printf "### Очистка ОЗУ ###\nБыло:\n"
	free
	# Чистим pagecache:
	for (( i=1; i <= 4; i++ ))
		do
			printf "$i" | sudo tee -a /proc/sys/vm/drop_caches
		done
	printf "\nСтало:\n"
	free
	printf "### Выполнено ###\n"
}

ReadTimeFromUser(){
	printf "Укажите интервал времени в минутах:\n"
	read time
	echo "time = ${time}"
	let "time *= 60"
}

ReadTimeFromUser

while [ "true" ]
do

	ClearRAM
	# time = minutes * seconds
	# let "time *= 2"
	echo "time = ${time} sec"
	sleep $time
done