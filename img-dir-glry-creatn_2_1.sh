

read -p "Directory name: " dir_var

if [[ -z "$dir_var" ]]; then
	echo ""
	echo "Please put in a directory name."
	exit

else
  # Loop through each filename in the inputted directory and create list of those files
	for filename in ../resources/images/"$dir_var"/*
	do
		echo "$filename" >> "$dir_var"_list.txt
	done

  while read image_var; do
    # Then place the directory name and the filename from image_var into the url paths as values of dir_var and image_var variable, respectively
		echo '<div class="responsive">' >> "$dir_var".txt
		echo '	<div class="gallery">' >> "$dir_var".txt
		echo '		<a target="_blank" href="'$image_var'">' >> "$dir_var".txt
		echo '			<img src="'$image_var'" alt="Northern Lights" width="600" height="400">' >> "$dir_var".txt
		echo '		</a>' >> "$dir_var".txt
		echo '	</div>' >> "$dir_var".txt
		echo '</div>' >> "$dir_var".txt
		echo '' >> "$dir_var".txt
  done < "$dir_var"_list.txt

fi
