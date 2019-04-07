if [ -z "$1" ]; then
	directory=`pwd`
else
	directory="$1"
fi
if [ -d $directory ]; then
	mkdir -p $directory
fi

if ! [ -d "$directory/.git" ]; then
	echo "init: creating git repository in $directory"
	git init $directory
fi
echo $directory > ~/.recon-directory

echo "done: recon directory configured."
