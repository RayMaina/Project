# Project
#Contains a summary of a few topics covered 
Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
Note: The following image link needs to be updated. Replace diagram_filename.png with the name of your diagram image file.




These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the __filebeatplaybook___ file may be used to install only certain pieces of it, such as Filebeat.

Enter the Playbook file: filebeat.yml

This document contains the following details:

Description of the Topologu
Access Policies
ELK Configuration

Beats in Use
Machines Being Monitored


How to Use the Ansible Build


Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly reliable, in addition to restricting traffic to the network

What aspect of security do load balancers protect?Confidentiality  What is the advantage of a jump box?Gives the user access from a single node that can be easily monitored  and is more secure

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the __logs___ and system _traffic__.

 What does Filebeat watch for?Log Files from specific files
 What does Metricbeat record? Records metrics from a system and other services running on a server

The configuration details of each machine may be found below.
Note: Use the Markdown Table Generator to add/remove values from the table.

|Name       | Function | IP Address  |Operating System|
|-----------|:--------:|-------:     | --------:      |
|Jumpbox2   |Gateway   |10.0.0.7     |Linux           |
|Sys-ELK    |Server    |10.1.0.4     |Linux           |
|Sysadmin   |Server    |10.0.0.5     |Linux           | 
|Sysadmin-2 |Server    |10.0.0.6     |Linux           |



Access Policies
The machines on the internal network are not exposed to the public Internet.
Only the _Jumpbox2____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

 Add whitelisted IP addresses:154.122.6.246
 
Machines within the network can only be accessed by __Jumpbox2 ___.

Which machine did you allow to access your ELK VM? Jumpbox2 What was its IP address?10.0.0.7

A summary of the access policies in place can be found in the table below.




|Name       |Publicly Accessible   |Allowed IP Address|
|---------- |:--------------------:|-----------------:|
|Jumpbox2   |NO                    |154.122.6.246     |
|Sys-ELK    |NO                    |10.1.0.4          |
|Sysadmin   |NO                    |10.0.0.5          |
|Sysadmin-2 |NO                    |10.0.0.6          |




Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...This makes work easy through automation of tasks.It also saves on time

What is the main advantage of automating configuration with Ansible?Significantly reduces work load and it is time saving

The playbook implements the following tasks:

In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.


Install Docker
Install python3-pip
Increase virtual memory by setting vm.max_map_count=262144
Download and launch the docker elk container 
Run systemd to enable the service docker to start on boot


The following screenshot displays the result of running docker ps after successfully configuring the ELK instance.



  ![docker_ps](https://github.com/RayMaina/Project/blob/main/Image/Docker_PS_.png)



Target Machines & Beats
This ELK server is configured to monitor the following machines:

 List the IP addresses of the machines you are monitoring
 
   Sysadmin- 10.0.0.5
 
   Sysadmin-2 -10.0.0.6

We have installed the following Beats on these machines:

Specify which Beats you successfully installed 

Filebeat

MetricBeat

These Beats allow us to collect the following information from each machine:

In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., Winlogbeat collects Windows logs, which we use to track user logon events, etc.


Metricbeat records metrics and stats that are running on a server from this one can see what CPU memory is being used by a server at a particular time


Filebeat records log files in specified location such as audit logs that would enable a user to monitor what has occured in a system by reviewing the audit trail


Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:
SSH into the control node and follow the steps below:

Copy the and file to 
Update the file to include 
Run the playbook, and navigate to to check that the installation worked as expected.

TODO: Answer the following questions to fill in the blanks:

Which file is the playbook? myELK.yml and filebeat.yml  Where do you copy it? /etc/ansible
Which file do you update to make Ansible run the playbook on a specific machine? hosts How do I specify which machine to install the ELK server on versus which to install Filebeat on?Using each machines unique private IP with ansible_python_interpreter=/usr/bin/python3 and assigning the correct server group for each
_Which URL do you navigate to in order to check that the ELK server is running?
http://IP Address of new VM:5601/app/kibana
As a Bonus, provide the specific commands the user will need to run to download the playbook, update the files, etc.
