echo ""
echo "get-api by @utkarsh24122"
target=$1
echo ""
echo "input file ===> $target"
echo "" 
echo $target | cut -d . -f1 | read foo
echo $foo
echo "All Output stored in /"$target"_s3 "
echo "" 
mkdir $target_s3
cd $taget_s3
