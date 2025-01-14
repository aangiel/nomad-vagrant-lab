data_dir = "/tmp/nomad/client"

datacenter = "DC1"

client {
    enabled = true

    // Make tasks accessible to outside world. Otherwise they are bound to the NAT interface.
    // "The scheduler chooses from these IP addresses when allocating ports for tasks."
    // cp. https://www.nomadproject.io/docs/configuration/client.html#network_interface
    network_interface = "eth1"
}

ports {
    http = 5656
}

addresses {
    http = "{{ GetInterfaceIP `eth1` }}"
}

server_join {
  retry_join = [ "192.168.56.101", "192.168.56.102" ]
  retry_max = 3
  retry_interval = "15s"
}