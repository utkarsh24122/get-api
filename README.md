# get-api 🎯
Template based scanning for API endpoints for further exploitation
- Detecting API endpoints for multiple domains

# Setup 🛠
```
git clone https://github.com/utkarsh24122/get-api
cd get-api
chmod +x *
```
Make sure you have installed [nuclei](https://github.com/projectdiscovery/nuclei) ---> [Learn How](https://github.com/projectdiscovery/nuclei#install-nuclei)

Install [httpx](https://github.com/projectdiscovery/httpx)

# Usage ⚙
```
make target file :
cat > target.txt
subdomain.target.com
test.target.como
^C
```
- Run:
 ``` ./getapi.sh target.txt ```
 
 # Screenshots 📸
![1](https://user-images.githubusercontent.com/54320208/131228303-b43a74b8-e23c-4032-a85f-670440afc9c4.PNG)
![2](https://user-images.githubusercontent.com/54320208/131228408-acebd3bd-7342-44e3-aada-14849878c1df.PNG)
![3](https://user-images.githubusercontent.com/54320208/131228484-35a10f4c-64d4-4f50-83e4-31ef2193b42b.PNG)


template cc : github.com/panch0r3d
