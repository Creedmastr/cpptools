current_path=$(dirname $0)
path=$($current_path/cpptools/get_path)

if [ $1 == "new" ]; then 
    git clone https://github.com/Creedmastr/cpptools-basics.git 
    mv cpptools-basics $2
fi

if [ $1 == "run" ]; then
    clang++ $path
    ./a.out
    rm ./a.out
fi

if [ $1 == "build" ]; then
    clang++ $path
fi