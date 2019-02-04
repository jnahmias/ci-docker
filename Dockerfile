FROM i386/centos:7

ADD redhat.sh /redhat.sh
COPY /checks/*.sh /checks/

ENV EXTRA_PACKAGES="\
  OpenIPMI-devel \
  ganglia-devel \
  gpsd-devel \
  gtk2-devel \
  hiredis-devel \
  iproute-devel \
  iptables-devel \
  java-1.7.0-openjdk-devel \
  java-devel \
  jpackage-utils \
  libatasmart-devel \
  libcap-devel \
  libcurl-devel \
  libdbi-devel \
  libesmtp-devel \
  libmemcached-devel \
  libmicrohttpd-devel \
  libmnl-devel \
  libmodbus-devel \
  libnotify-devel \
  liboping-devel \
  libpcap-devel \
  librabbitmq-devel \
  libudev-devel \
  libvirt-devel \
  libxml2-devel \
  lm_sensors-devel \
  lua-devel \
  lvm2-devel \
  mongo-c-driver-devel \
  mosquitto-devel \
  mysql-devel \
  net-snmp-devel \
  nut-devel \
  openldap-devel \
  openssl-devel \
  perl-ExtUtils-Embed \
  postgresql-devel \
  protobuf-c-devel \
  python-devel \
  qpid-proton-c-devel \
  riemann-c-client-devel \
  rrdtool-devel \
  varnish-libs-devel \
  xen-devel \
  xfsprogs-devel \
  xmms-devel \
  yajl-devel \
"

ENV SUPPORTED_PLUGIN_LIST="\
  libcollectdclient \
  aggregation \
  amqp \
  apache \
  apcups \
  ascent \
  battery \
  bind \
  ceph \
  cgroups \
  chrony \
  conntrack \
  contextswitch \
  cpu \
  cpufreq \
  cpusleep \
  csv \
  curl \
  curl_json \
  curl_xml \
  dbi \
  df \
  disk \
  dns \
  drbd \
  email \
  entropy \
  ethstat \
  exec \
  fhcount \
  filecount \
  fscache \
  gmond \
  gps \
  hddtemp \
  hugepages \
  interface \
  ipc \
  ipmi \
  iptables \
  ipvs \
  irq \
  java \
  load \
  log_logstash \
  logfile \
  lua \
  lvm \
  madwifi \
  match_empty_counter \
  match_hashed \
  match_regex \
  match_timediff \
  match_value \
  mbmon \
  mcelog \
  md \
  memcachec \
  memcached \
  memory \
  modbus \
  mqtt \
  multimeter \
  mysql \
  netlink \
  network \
  nfs \
  nginx \
  notify_desktop \
  notify_email \
  notify_nagios \
  ntpd \
  numa \
  nut \
  olsrd \
  openldap \
  openvpn \
  ovs_events \
  ovs_stats \
  perl \
  pinba \
  ping \
  postgresql \
  powerdns \
  processes \
  protocols \
  python \
  redis \
  rrdcached \
  rrdtool \
  sensors \
  serial \
  smart \
  snmp \
  snmp_agent \
  statsd \
  swap \
  synproxy \
  syslog \
  table \
  tail \
  tail_csv \
  target_notification \
  target_replace \
  target_scale \
  target_set \
  target_v5upgrade \
  tcpconns \
  teamspeak2 \
  ted \
  thermal \
  threshold \
  turbostat \
  unixsock \
  uptime \
  users \
  uuid \
  varnish \
  virt \
  vmem \
  vserver \
  wireless \
  write_graphite \
  write_http \
  write_log \
  write_prometheus \
  write_redis \
  write_riemann \
  write_sensu \
  write_tsdb \
  xencpu \
  xmms \
  zfs_arc \
  zookeeper \
"

RUN /redhat.sh
