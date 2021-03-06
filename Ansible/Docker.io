---
  - name: My Docker Playbook
    hosts: webservers
    become:  true
    tasks: 
    
      - name: Uninstall apache2 on webservers
        apt:
           name: apache2
           state: absent
      
      - name: Install docker.io  
        apt:
          update_cache: yes
          name: docker.io
          state: present

      - name: Install python3-pip
        apt:
          name: python3-pip
          state: present

      - name: Install docker module
        pip:
          name: docker
          state: present

      - name: download and launch DVWA
        docker_container:
          name: dvwa
          image: cyberxsecurity/dvwa
          state: started
          restart_policy: always 
          published_ports: 80:80
