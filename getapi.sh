echo ""
echo "                                                                               _                       _  "
echo "                                                                     __ _  ___| |_          __ _ _ __ (_) "
echo "                                                                    / _  |/ _ \ __|  ___   / _  | '_ \| | "
echo "                                                                   | (_| |  __/ |_  |___| | (_| | |_) | | "
echo "                                                                    \__, |\___|\__|        \__,_| .__/|_| "
echo "                                                                    |___/                       |_|       "

echo ""
echo "                                                                             get-api by @utkarsh24122"


target=$1

echo ""
echo " "
echo "input file ===> $target"
echo ""

echo $target | cut -d . -f1 >> log.txt
read -r foo<log.txt ; rm -f log.txt

mkdir "$foo"_api

cp "$target" ./"$foo"_api/"$target"

cd "$foo"_api

pwd >> log.txt
read -r foo2<log.txt ;rm -f log.txt


echo ""
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Output directory : "$foo2" \e[0m\n" 
echo ""



echo ""
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Getting template ... \e[0m\n" 
echo ""
wget -q https://raw.githubusercontent.com/utkarsh24122/get-api/main/api_endpoints.yaml --show-progress
echo ""


echo ""
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Finding API Endpoints ... \e[0m\n" 
cat $target | httpx -silent | nuclei -silent -t api_endpoints.yaml -o apiget.txt
echo ""


echo ""
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Extracting links and sorting ... \e[0m\n" 
echo ""
echo ""

cat apiget.txt | cut -d " " -f6 | sort -u >> api-endpoints.txt
rm apiget.txt

cat api-endpoints.txt | wc -l >> log.txt
read -r foo3<log.txt ;rm -f log.txt
rm api_endpoints.yaml
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m "$foo3" API Endpoints found and saved in "$foo2"/api-endpoints.txt \e[0m\n" 
echo ""
echo ""
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Scan Complete!!! Exiting ... \e[0m\n" 
echo ""
