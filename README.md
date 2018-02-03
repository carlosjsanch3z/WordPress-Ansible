# WordPress-Ansible
Deploy WordPress with Ansible and Vagrant

## Tested with:
- Vagrant: 2.0.0 
- Ansible: 2.4.3.0
- VirtualBox: 5.1.28 r117968
## Steps

1) Check that on our host machine, you do not use this network address in any network interface: 172.16.0.0/24.

2) Add as DNS server, the ip address of nodo1, by default the scenario uses 172.16.0.100 for node1.

## Example Usage (Ansible via Pip)

Install vagrant from apt:

~~~ 
apt install vagrant 
~~~

Clone the repository:

~~~ 
git clone git@github.com:carlosjsanch3z/WordPress-Ansible.git
~~~

Enable the Virtual environment:

~~~
cd WordPress-Ansible 
virtualenv venv
source venv/bin/activate
~~~

Install ansible 

~~~
pip install ansible
~~~

Up scenario within the cloned directory:

~~~
vagrant up --provision
~~~

Add dns server in our host (/etc/resolv.conf):

~~~ 
nameserver 172.16.0.100
~~~

Open your browser and type:

~~~
wordpress.example.com
~~~
