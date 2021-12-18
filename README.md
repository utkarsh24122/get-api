# get-api 🎯
Template based scanning for API endpoints for further exploitation
- Detecting API endpoints for multiple domains. Check [Screenshots](https://github.com/utkarsh24122/get-api#screenshots-)

<br/><br/>
You may integrate the ["api_endpoints.yaml"](https://github.com/utkarsh24122/get-api/blob/main/api_endpoints.yaml) template in your own workflow.

If you don't have one, feel free to checkout my workflow automation: [Vulnhunt](https://github.com/utkarsh24122/VulnHunt)

Read about how this tool helped me get sensitive information and PII leakage of employees in my [Blog](https://utkarsh24122.gitbook.io/findings/api-endpoints-lead-to-sensitive-information-disclosure-and-pii-leakage-of-employees)
<br/><br/>

# Setup 🛠
```
git clone https://github.com/utkarsh24122/get-api
cd get-api
chmod +x getapi.sh
```
Make sure you have installed [nuclei](https://github.com/projectdiscovery/nuclei) ---> [Learn How](https://github.com/projectdiscovery/nuclei#install-nuclei)

Install [httpx](https://github.com/projectdiscovery/httpx)

# Usage ⚙
```
make target file :
cat > target.txt
subdomain.target.com
test.target.com
^C
```
- Run:
 ``` ./getapi.sh target.txt ```
 
 # Screenshots 📸
![image](https://user-images.githubusercontent.com/54320208/146634609-6c2e7120-8ce3-4cf5-83e5-a202ddd96ea2.png)


template cc : github.com/panch0r3d
