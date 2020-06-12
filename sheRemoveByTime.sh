
file=$(ls -t ${1} | head -n 1)
echo "the latest file is "
echo $file
echo "remove other files"

ls -t ${1} | grep -v ${file} | xargs rm -rf 
