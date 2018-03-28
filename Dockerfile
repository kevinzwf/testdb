FROM 10.19.150.173:5000/centos:7.3.1611
MAINTAINER zhuweifeng "wfzhu@alauda.io"
RUN yum makecache && yum install -y httpd && yum clean all
ADD run.sh /
RUN chmod a+x /run.sh
EXPOSE 80
CMD ["/run.sh"]