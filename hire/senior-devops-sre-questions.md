Questions on Senior SRE/DevOps/Infrastructure engineering positions on a russian-speaking market, summer 2020.

These are the questions and some answers on them collected on various interviews. Nothing company or person special.

Please feel free to open pull request if you want to add anything.

#### How Linux starts (linux boot sequence):
long - https://opensource.com/article/17/2/linux-boot-and-startup
long - https://en.wikipedia.org/wiki/Linux_startup_process
short - https://www.crybit.com/linux-boot-process/

#### K8S cluster autoscaler? In Yandex?

K8S cluster autoscaler (scaling worker nodes) is ok in a case you have a working cloud autoscaler provider. Autoscaler in AWS is the simplest one as I've read. I've used autoscaler in Digitalocean, works ok. Scaling down much slower than scaling up is a feature of all autoscaler providers that I've seen.
If Yandex provider doesn't do good, you need to overwrite it. Other option is to use a monitoring script that would scale nodes up and down with stuff like terraform and additional scripting to drain nodes.

#### Integrate Grafana+Prometheus+ELK to see stuff in one place like in Newrelic?

Two options. 1) Use ELK and make a connector between Grafana and Elastic and then collect data from Elastic and Prometheus in one Grafana Dashboard. 2) Use Loki instead of ELK, it has native Grafana support. Then collect data from Loki and Prometheus in one Grafana Dashboard.

####  Give soft to clients in Docker in a way so that they cannot get our code sources?

Use KVM virtual servers with an encrypted FS and an alarm if trying to run without permission

#### Blue-green depl?

#### Canary depl?

#### Blue/green, canary deploy differences, when and what is best

#### Load balancing the traf in aws

#### git pull vs git fetch?

#### git rebase vs git merge?

#### 3tier app: web + app + db service

#### AWS load balancers how you would use them.
Add 1 load balancer in front of web servers.
Add 1 load balacner in front of app servers.

#### Everything in S3

#### How to work with Amazon VPC?

#### VPC peering?

#### How to build 'web + db' servers group with ext access to web servers only

#### Hup-and-spoke VPC pattern / transit VPC

####  Connectivity between on-prem DC & our Amazon resources?

#### Amazon Direct connect?

#### Encryption in S3?

#### AD users access to Amazon resources?

#### AWS security approaches for configs

#### infrastructure migration with ansible - best practices

#### SAS/DAST test strategies

#### Artifacts and compilation do we compile them all the time

#### Experience w Terraform?

#### Kubernetes storage solutions, connecting with AWS storage solutions

#### aws ec2, vpc, s3, iam services

#### Mongodb clusterization, authorization, migration between versions

#### MongoDB vs MySQL what are the main differences?

#### What is the difference between SQL & NoSQL databases?

#### Docker if we make a layer with 100 gb (overall image 101 gb for now), on the next layer delete this 100 gb, how big is the image gonna be?

#### Docker entrypoint vs cmd?

#### Docker how we can pass env variables to Docker? On the run? In Dockerfile? Any other way?

#### AWS ec2, vpc, s3, iam services

#### 3 vpcs in Amazon, 3 network subnets
1 public
2 closed from internet but is able to access internet
3 all is closed, no access to internet
How do you make it?

#### How can you rule access to your machines in Amazon? Firewalls, etc.

#### How to backup data from EC2 to S3 buckets.

#### Can you install python with ansible if there is no python.

#### What is systemd and how it works?

#### pgsql database schema how it's different form mysql database schema

#### aws nat gateway vs internet gateway

#### dockerfile build in 2 runs instead of build in 1 run how it's different

#### 176.24.16.30/25 what is it?

#### mysql cluster setups what are they?

#### mysql engine types?

#### does galeradb have synchronous or asynchronous replication?

#### bash scripting with ! ($dbd==master) || ! ($aws_config_code) { exit 0 } what does it mean

#### Python database types: tuple, list, and what else? How are they different?

#### Kubernetes setup on project with 1C-Bitrix - why nginx, how ingress works, how and why ceph, how traffic goes from user to the end pod

#### Pods/deployments resource requests and limits

#### Service types in Kubernetes

#### TCP connection close flag?

#### What's 95% percentile?

#### How would you take 95% percentile?

#### How would you take 95% percentile in bash/python (need to write the code)?
