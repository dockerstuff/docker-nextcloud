FROM centos:8

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
    && yum install -y nextcloud-client \
    && yum clean all

