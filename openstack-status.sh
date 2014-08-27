#! /bin/bash
set -e 
echo "------------------------------Check status of openstack service ---------------------------------"
echo "=============================Controller Node============================="
echo "Check nova service ============================="
 

		if [[ `service nova-api status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-api \t\t\t\t active"
			else
			        echo -e "nova-api \t\t\t\t deactive"
		fi
		if [[ `service nova-cert status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-cert \t\t\t\t active"
			else
			        echo -e "nova-cert \t\t\t\t deactive"
		fi
		if [[ `service nova-conductor status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-conductor \t\t\t\t active"
			else
			        echo -e "nova-conductor \t\t\t\t deactive"
		fi
		if [[ `service nova-consoleauth status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-consoleauth \t\t\t\t active"
			else
			        echo -e "nova-consoleauth \t\t\t\t deactive"
		fi
		if [[ `service nova-novncproxy status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-novncproxy \t\t\t active"
			else
			        echo -e "nova-novncproxy \t\t\t deactive"
		fi
		if [[ `service nova-scheduler status | grep -c start` -eq 1 ]]
			then
			        echo -e "nova-scheduler \t\t\t\t active"
			else
			        echo -e "nova-scheduler \t\t\t\t deactive"
		fi
	
echo "Check glance service ============================="

	if [[  `service glance-registry status | grep -c start` -eq 1 ]]
		then
		        echo -e "glance-registry \t\t\t active"
		else
		        echo -e "glance-registry \t\t\t deactive"
	fi

	if [[  `service glance-api status | grep -c start` -eq 1 ]]
		then
		        echo -e "glance-api \t\t\t\t active"
		else
		        echo -e "glance-api \t\t\t\t deactive"
	fi
echo "Check keystone service ============================="
	if [[  `service keystone status | grep -c start` -eq 1 ]]
			then
			        echo -e "keystone \t\t\t\t active"
			else
			        echo -e "keystone \t\t\t\t deactive"
	fi
echo "Check horizon service ============================="
	if [[ `service apache2 status | grep -c running` -eq 1 ]]
			then
			        echo -e "apache2 \t\t\t\t active"
			else
			        echo -e "apache2 \t\t\t\t deactive"
	fi
	if [[ `service memcached status | grep -c running` -eq 1 ]]
			then
			        echo -e "memcached \t\t\t\t active"
			else
			        echo -e "memcached \t\t\t\t deactive"
	fi
echo "Check cinder service ============================="
	if [[  `service cinder-scheduler status | grep -c start` -eq 1 ]]
			then
			        echo -e "cinder-scheduler \t\t\t active"
			else
			        echo -e "cinder-scheduler \t\t\t deactive"
	fi
	if [[  `service cinder-api status | grep -c start`  -eq 1 ]]
			then
			        echo -e "cinder-api \t\t\t\t active"
			else
			        echo -e "cinder-api \t\t\t\t deactive"
	fi


echo "Check swift service ============================="
	if [[  `service swift-proxy status | grep -c start` -eq 1 ]]
			then
			        echo -e "swift-proxy \t\t\t\t active"
			else
			        echo -e "swift-proxy \t\t\t\t deactive"
	fi
echo "Check neutron service ============================="
	if [[  `service neutron-server status | grep -c start` -eq 1 ]]
			then
			        echo -e "neutron-server \t\t\t\t active"
			else
			        echo -e "neutron-server \t\t\t\t deactive"
	fi

echo "=============================Compute01 Node============================="
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.181 service nova-api-metadata status | grep -c start` -eq 1 ]]
        then
            echo -e "nova-api-metadata \t\t\t\t active"
        else
            echo -e "nova-api-metadata \t\t\t\t deactive"
    fi
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.181 service  nova-compute  status | grep -c start` -eq 1 ]]
	    then
	            echo -e "nova-compute  \t\t\t\t active"
	    else
	            echo -e "nova-compute  \t\t\t\t deactive"
	fi
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.181 service  nova-network status | grep -c start` -eq 1 ]]
        then
            echo -e "nova-network \t\t\t\t active"
        else
            echo -e "nova-network \t\t\t\t deactive"
    fi
    if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.181 service  neutron-ovs-cleanup  status | grep -c start` -eq 1 ]]
        then
            echo -e "neutron-ovs-cleanup  \t\t\t\t active"
        else
            echo -e "neutron-ovs-cleanup  \t\t\t\t deactive"
    fi
    if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.181 service  neutron-plugin-openvswitch-agent status | grep -c start` -eq 1 ]]
        then
            echo -e "neutron-plugin-openvswitch-agent \t\t\t\t active"
        else
            echo -e "neutron-plugin-openvswitch-agent \t\t\t\t deactive"
    fi
echo "=============================Network Node============================="
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.184 service openvswitch-switch status | grep -c start` -eq 1 ]]
        then
            echo -e "openvswitch-switch \t\t\t\t active"
        else
            echo -e "openvswitch-switch \t\t\t\t deactive"
    fi
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.184 service  neutron-plugin-openvswitch-agent  status | grep -c start` -eq 1 ]]
	    then
	            echo -e "neutron-plugin-openvswitch-agent  \t\t\t\t active"
	    else
	            echo -e "neutron-plugin-openvswitch-agent  \t\t\t\t deactive"
	fi
	if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.184 service  neutron-l3-agent status | grep -c start` -eq 1 ]]
        then
            echo -e "neutron-l3-agent \t\t\t\t active"
        else
            echo -e "neutron-l3-agent \t\t\t\t deactive"
    fi
    if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.184 service  neutron-metadata-agent status | grep -c start` -eq 1 ]]
        then
            echo -e "neutron-metadata-agent \t\t\t\t active"
        else
            echo -e "neutron-metadata-agent \t\t\t\t deactive"
    fi
    if [[  `ssh -i /root/.ssh/id_rsa root@172.22.22.184 service  neutron-dhcp-agent status | grep -c start` -eq 1 ]]
        then
            echo -e "neutron-dhcp-agent \t\t\t\t active"
        else
            echo -e "neutron-dhcp-agent \t\t\t\t deactive"
    fi
echo "=============================Cinder Node============================="
	if [[  `service cinder-volume status | grep -c start` -eq 1 ]]
			then
			        echo -e "cinder-volume \t\t\t active"
			else
			        echo -e "cinder-volume \t\t\t deactive"
	fi
	if [[  `service tgt  status | grep -c start` -eq 1 ]]
			then
			        echo -e "tgt  \t\t\t\t active"
			else
			        echo -e "tgt  \t\t\t\t deactive"
	fi
	