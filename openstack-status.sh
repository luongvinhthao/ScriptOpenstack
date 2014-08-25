#! /bin/bash
set -e 
echo "------------------------------Check status of openstack service ---------------------------------"
echo "=============================Controller Node============================="
echo "Check nova service ============================="
		if [ echo `service nova-api status | grep -q start` ]
			then
			        echo -e "nova-api \t\t\t\t active"
			else
			        echo -e "nova-api \t\t\t\t deactive"
		fi
		if [ echo `service nova-cert status | grep -q start` ]
			then
			        echo -e "nova-cert \t\t\t\t active"
			else
			        echo -e "nova-cert \t\t\t\t deactive"
		fi
		if [ echo `service nova-conductor status | grep -q start` ]
			then
			        echo -e "nova-conductor \t\t\t\t active"
			else
			        echo -e "nova-conductor \t\t\t\t deactive"
		fi
		if [ echo `service nova-cert status | grep -q start` ]
			then
			        echo -e "nova-conductor \t\t\t\t active"
			else
			        echo -e "nova-conductor \t\t\t\t deactive"
		fi
		if [ echo `service nova-novncproxy status | grep -q start` ]
			then
			        echo -e "nova-novncproxy \t\t\t active"
			else
			        echo -e "nova-novncproxy \t\t\t deactive"
		fi
		if [ echo `service nova-scheduler status | grep -q start` ]
			then
			        echo -e "nova-scheduler \t\t\t\t active"
			else
			        echo -e "nova-scheduler \t\t\t\t deactive"
		fi
	
echo "Check glance service ============================="

	if [ echo `service glance-registry status | grep -q start` ]
		then
		        echo -e "glance-registry \t\t\t active"
		else
		        echo -e "glance-registry \t\t\t deactive"
	fi

	if [ echo `service glance-api status | grep -q start` ]
		then
		        echo -e "glance-api \t\t\t\t active"
		else
		        echo -e "glance-api \t\t\t\t deactive"
	fi
echo "Check keystone service ============================="
	if [ echo `service keystone status | grep -q start` ]
			then
			        echo -e "keystone \t\t\t\t active"
			else
			        echo -e "keystone \t\t\t\t deactive"
	fi
echo "Check horizon service ============================="
	if [ echo `service apache2 status | grep -q start` ]
			then
			        echo -e "apache2 \t\t\t\t active"
			else
			        echo -e "apache2 \t\t\t\t deactive"
	fi
	if [ echo `service memcached status | grep -q start` ]
			then
			        echo -e "memcached \t\t\t\t active"
			else
			        echo -e "memcached \t\t\t\t deactive"
	fi
echo "Check cinder service ============================="
	if [ echo `service cinder-scheduler status | grep -q start` ]
			then
			        echo -e "cinder-scheduler \t\t\t active"
			else
			        echo -e "cinder-scheduler \t\t\t deactive"
	fi
	if [ echo `service cinder-api status | grep -q start` ]
			then
			        echo -e "cinder-api \t\t\t\t active"
			else
			        echo -e "cinder-api \t\t\t\t deactive"
	fi


echo "Check swift service ============================="
	if [ echo `service swift-proxy status | grep -q start` ]
			then
			        echo -e "swift-proxy \t\t\t\t active"
			else
			        echo -e "swift-proxy \t\t\t\t deactive"
	fi
echo "Check neutron service ============================="
	if [ echo `service neutron-server status | grep -q start` ]
			then
			        echo -e "neutron-server \t\t\t\t active"
			else
			        echo -e "neutron-server \t\t\t\t deactive"
	fi

echo "=============================Compute01 Node============================="
	if [ echo `ssh root@172.22.22.181 service nova-api-metadata status | grep -q start` ]
        then
            echo -e "nova-api-metadata \t\t\t\t active"
        else
            echo -e "nova-api-metadata \t\t\t\t deactive"
    fi
	if [ echo `ssh root@172.22.22.181 service  nova-compute  status | grep -q start` ]
	    then
	            echo -e "nova-compute  \t\t\t\t active"
	    else
	            echo -e "nova-compute  \t\t\t\t deactive"
	fi
	if [ echo `ssh root@172.22.22.181 service  nova-network status | grep -q start` ]
        then
            echo -e "nova-network \t\t\t\t active"
        else
            echo -e "nova-network \t\t\t\t deactive"
    fi
echo "=============================Network Node============================="
	if [ echo `ssh root@172.22.22.184 service nova-api-metadata status | grep -q start` ]
        then
            echo -e "nova-api-metadata \t\t\t\t active"
        else
            echo -e "nova-api-metadata \t\t\t\t deactive"
    fi
	if [ echo `ssh root@172.22.22.181 service  nova-compute  status | grep -q start` ]
	    then
	            echo -e "nova-compute  \t\t\t\t active"
	    else
	            echo -e "nova-compute  \t\t\t\t deactive"
	fi
	if [ echo `ssh root@172.22.22.181 service  nova-network status | grep -q start` ]
        then
            echo -e "nova-network \t\t\t\t active"
        else
            echo -e "nova-network \t\t\t\t deactive"
    fi
echo "=============================Cinder Node============================="
	if [ echo `service cinder-volume status | grep -q start` ]
			then
			        echo -e "cinder-volume \t\t\t active"
			else
			        echo -e "cinder-volume \t\t\t deactive"
	fi
	if [ echo `service tgt  status | grep -q start` ]
			then
			        echo -e "tgt  \t\t\t\t active"
			else
			        echo -e "tgt  \t\t\t\t deactive"
	fi