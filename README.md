# Easy SL VPN login 😉 
This is a fork of [@dlenski](https://github.com/dlenski/python-vipaccess)'s python-vipaccess, which in turn is a fork of  [@cyrozap](https://github.com/cyrozap/python-vipaccess)'s python-vipaccess

Your VIP code side by side to when you connect to SL VPN. 

## Requirements
1. Make sure openconnect is installed in your system  
`$ brew install openconnect`
1. Make sure you have git:  
`$ brew install git`

## Quick start (~6 min)
1. `$ git clone https://github.com/guicaro/python-vipaccess.git`
2. `$ cd python-vipaccess`
2. `$ sudo pip install lxml oath PyCrypto requests`
3. `$ sudo pip install .`
4. `$ vipaccess provision -t SYMC`
5. Call Soflayer at **XXX-XXX-4500** and tell them you'd like to **add another credential ID from Symantec VIP, say you got a new work phone**, then give them the **SYMCXXXXXXXX** number from step 5 (You can have up to 3 credential ID tied to your SL account). 
6. Make openconnect run without sudo by adding following line (it's likely that vi editor opens up, if so ask google or some vi jedi for help on how to add text to file and save)  
`$ sudo visudo`
>%admin  ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect
7. Add connect script on your Mac:  
`$ cat connectsl.sh >> ~/.profile`
8. Make sure this newly added function is available in your current session  
`$ source ~/.profile`
9. Cool! Now, every time you want to connect to Softlayer VPN run  
`$ connectsl <SoftLayer_username>`

If you want to know more about this try the following, very cool read:

Reverse engineering the Symantec VIP Access Provisioning Protocol  
[https://www.cyrozap.com/2014/09/29/reversing-the-symantec-vip-access-provisioning-protocol/]()

If you want to make the experience better for all of us, fork the project and add a pull request. Some ideas:

1. Add an array of all SL VPN endpoints we know of
1. Do some error checking, or save process to PID file for easy process kill, how about verbose mode?
1. Make everything automatic, even adding SL password and the VIP pin 😊 

Have fun!
