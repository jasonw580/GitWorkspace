echo "compiling $1"
if [[ $1 == *.cpp ]]
then
	g++ -ggdb `pkg-config --cflags opencv` -o `basename $1` $1 `pkg-config --libs opencv`

else
	echo "Please compile only .c or .cpp files"
fi
echo "Output file => ${1%.*}"
