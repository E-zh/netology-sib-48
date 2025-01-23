import nmap3

nmap = nmap3.Nmap()
result = nmap.nmap_version_detection("192.168.1.15")
print("PORT SERVICE VERSION")
for i in result["192.168.1.15"]["ports"]:
    print(i["portid"], i["service"]["name"], i["service"].get('version', '-'))
