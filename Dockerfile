FROM 10.29.0.5:5000/centos:7.3.1611
MAINTAINER zhuweifeng "wfzhu@alauda.io"
RUN yum makecache && yum install -y mariadb-server wget && yum clean all
ADD run.sh /
RUN chmod a+x /run.sh
EXPOSE 3306
CMD ["/run.sh"]
