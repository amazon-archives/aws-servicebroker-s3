FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 python-boto && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions
COPY bin/16to62 /usr/bin/16to62

LABEL "com.redhat.apb.spec"=\

USER apb
