source config.cnf
#/etc/cron.daily/logrotate

set -e
echo "---------------------------- Config logging on Controller using Syslog ----------------------------"

echo "---------------------------- Enable logging on nova ----------------------------"
	if [[ ! -f /etc/nova/nova.conf.bak.logging ]]; then
		#statements
		cp /etc/nova/nova.conf /etc/nova/nova.conf.bak.logging
	echo "backup config logging ----------------------------------------- done"
	fi
	echo "----------------------------------Edit file nova.conf -----------------------------------------"
	sed -i "/enabled_apis=ec2,osapi_compute,metadata/a\use_syslog = True\nsyslog_log_facility = LOG_LOCAL0\n\
			log-config=/etc/nova/logging.conf" /etc/nova/nova.conf




echo "---------------------------- Enable logging on glance ----------------------------"
	echo "---------------------------- Edit glance-api.conf ----------------------------"
	if [[ ! -f /etc/glance/glance-api.bak.logging ]]; then
		#statements
		cp /etc/glance/glance-api.conf /etc/glance/glance-api.bak.logging
	echo "backup config logging ----------------------------------------- done"
	fi
	sed -i "s/#verbose = False/verbose = False/" /etc/glance/glance-api.conf 
	sed -i "s/#debug = False/debug = False/" /etc/glance/glance-api.conf 
	sed -i "s/#use_syslog = False/use_syslog = True/" /etc/glance/glance-api.conf
	sed -i "s/#syslog_log_facility = LOG_LOCAL0/syslog_log_facility = LOG_LOCAL1/" /etc/glance/glance-api.conf


	echo "---------------------------- Edit glance-registry.conf ----------------------------"
	if [[ ! -f /etc/glance/glance-registry.conf.bak.logging ]]; then
		#statements
		cp /etc/glance/glance-registry.conf /etc/glanceglance-registry.bak.logging
	echo "backup config logging ----------------------------------------- done"
	fi
	sed -i "s/#verbose = False/verbose = False/" /etc/glance/glance-registry.conf 
	sed -i "s/#debug = False/debug = False/" /etc/glance/glance-registry.conf 
	sed -i "s/#use_syslog = False/use_syslog = True/" /etc/glance/glance-registry.conf
	sed -i "s/#syslog_log_facility = LOG_LOCAL1/syslog_log_facility = LOG_LOCAL1/" /etc/glance/glance-registry.conf

echo "---------------------------- Enable logging on keystone ----------------------------"
	if [[ ! -f /etc/keystone/keystone.conf .bak.logging ]]; then
		#statements
		cp /etc/keystone/keystone.conf  /etc/keystone/keystone.conf.bak.logging
	echo "backup config logging ----------------------------------------- done"
	fi
	echo "---------------------------- Edit keystone.conf ----------------------------"
	sed -i "s/#verbose=false/verbose = False/" /etc/keystone/keystone.conf 
	sed -i "s/#debug=false/debug = False/" /etc/keystone/keystone.conf 
	sed -i "s/#use_syslog=false/use_syslog = True/" /etc/keystone/keystone.conf
	sed -i "s/#syslog_log_facility=LOG_USER/syslog_log_facility = LOG_LOCAL2/" /etc/keystone/keystone.conf

echo "---------------------------- Enable logging on cinder ----------------------------"
	if [[ ! -f /etc/cinder/cinder.conf.bak.logging ]]; then
		#statements
		cp /etc/cinder/cinder.conf /etc/cinder/cinder.conf.bak.logging
	echo "backup config logging ----------------------------------------- done"
	fi
	sed -i "s/verbose = True/verbose = False/" /etc/cinder/cinder.conf
	sed -i "/verbose = False/a\debug = False\nuse_syslog = True\nsyslog_log_facility = LOG_LOCAL3" /etc/cinder/cinder.conf
