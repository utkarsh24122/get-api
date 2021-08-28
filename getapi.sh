
echo ""
echo "get-api by @utkarsh24122"
target=$1
echo ""
echo "input file ===> $target"
echo ""

echo $target | cut -d . -f1 >> log.txt
read -r foo<log.txt ; rm -f log.txt
mkdir "$foo"_api
cp "$target" ./"$foo"_api/"$target"
cd "$foo"_api
wget -q https://raw.githubusercontent.com/panch0r3d/nuclei-templates/1a1e3a8b8f6c45cfadcfff1078287339dd950896/api_endpoints.yaml 
pwd >> log.txt
read -r foo2<log.txt ; rm -f log.txt
cat "$target" | nuclei -silent -t "$foo2" -o temp.txt
cat temp.txt | sort -u >> api-endpoints.txt ; rm -f temp.txt
rm *.yaml
