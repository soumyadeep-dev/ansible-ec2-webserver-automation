ANSIBLE PLAYBOOK FOR AWS EC2 WEBSITE DEPLOYMENT

OVERVIEW

This Ansible playbook streamlines the deployment of a website on an AWS EC2 instance, encompassing the following tasks:

1. SSH Key Pair Generation: Automates the creation of an SSH key pair for secure communication.
2. EC2 Instance Launch: Launches an EC2 instance on AWS, associating it with the generated SSH key pair.
3. Security Group Configuration: Sets up security groups to permit inbound SSH traffic (port 22) and web traffic (commonly port 80 or 443).
4. Web Server Installation: Installs a specified web server (e.g., Nginx) on the EC2 instance.
5. Website File Deployment: Copies website files from the source directory to the root directory of the instance's web server.
6. Website Unzipping: Extracts the contents of the website.zip archive at the destination.

PREREQUISITES

Ensure the following prerequisites are met before running the playbook:

- An AWS account with appropriate permissions.
- Ansible installed on your local machine.
- Python 3.6 or later.
- AWS CLI configured with your credentials.

INSTALLATION

1. Clone this repository:

   git clone https://github.com/<your-username>/<your-repository-name>.git
   
2. Customize parameters in the `playbook.yml` file, including:

   - AWS region (region)
   - AMI ID (image)
   - Security group ID (group_id)
   - key pair u generated in aws console(key_name)
   - Path to website files (src)

3. Run the playbook:

   ansible-playbook playbook.yml
   
KEY STEPS

1. Key Pair Generation: The playbook automates the creation of an SSH key pair, storing it in the specified path.

2. Instance Launch: An EC2 instance is launched with the associated key pair.

3. Security Group Configuration: Security groups are configured to allow inbound SSH and web traffic.

4. Web Server Installation: The specified web server (e.g., Nginx) is installed on the EC2 instance.

5. Website File Deployment: Website files are copied from the source directory to the web server's root directory.

6. Website Unzipping: The contents of the website.zip archive are extracted at the destination.

Feel free to use and modify this playbook for your specific website deployment needs. If you encounter any issues or have suggestions for improvements, please let me know!
