# Ansible
## Installation Guide
Ubuntu builds are available [in a PPA here.](https://launchpad.net/~ansible/+archive/ubuntu/ansible)  
To configure the PPA on your machine and install Ansible run these commands:
```
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

## Reference
Understand that docker will be deprecated, hence trying to install without docker.  
[How to install kubernetes with containderd](https://www.techrepublic.com/article/how-to-install-kubernetes-on-ubuntu-server-without-docker/)

Ansible Modules  
[Ansible official documentation](https://docs.ansible.com/ansible/2.5/modules/list_of_all_modules.html)

Copy variable output to a local file  
[local_action Module](https://stackoverflow.com/questions/26732241/ansible-save-registered-variable-to-file)
