#! /bin/bash
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

Color_Dir='\033[0;34m'
clearColor='\033[0m' # No Color
RedColor='\033[0;31m'
yellowColor='\033[1;33m'

lookForDirectory(){
	dir="$1"
	echo -e "${clearColor}============the current directory is $dir=========="
	if [[ -d $dir ]]; then
		if [[ -z "$(ls -A $dir)" ]]; then
			echo -e "${Color_Dir}$dir ${clearColor} is empty"
			if [ -n "$2"  -a  "$2" = "-d" ]; then
				echo "#2 is 'id' "

			fi
			
		else
			#check and make sure $dir ends with a "/" like /usr/bin/
			suffixDir=${dir:${#dir}-1:1}
			if [[ $suffixDir != "/" ]]; then
				dir=$dir/
			fi
			# echo "changed directory is $dir"
			array=($dir*)
			# echo "${#array[@]} ${array[@]}"
			echo -e "${Color_Dir}$dir ${clearColor} contains ${yellowColor} ${#array[@]} ${clearColor}objects"
			for fileOrDir in ${array[@]}; do
				if [[ -d $fileOrDir ]]; then
					# echo "$fileOrDir is a directory"
					# lookForDirectory $fileOrDir 
					if [[ -z "$(ls -A $fileOrDir)" ]]; then
						if [[ "$2" = "-d" ]]; then
							rm -rf $fileOrDir
							echo -e "${Color_Dir}$fileOrDir ${RedColor} has been removed"
						else
							echo -e "${Color_Dir}$fileOrDir ${clearColor}is empty"
						fi
						
					else	
						lookForDirectory $fileOrDir $2
						# if [ -n "$2"  -a  "$2" = "-d" ]; then
						# 	lookForDirectory $fileOrDir $2
						# else
						# 	lookForDirectory $fileOrDir	
						# fi
					fi	
					
				#else
				#	echo " "
				fi

			done

		fi	
	fi	
}

if [ -n "$2"  -a  "$2" = "-d" ]; then
	echo "first #2 is 'id' "
	lookForDirectory $1 $2
else
	lookForDirectory $1	
fi


