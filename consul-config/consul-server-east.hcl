data_dir = "/tmp/consul/server"

server           = true
bootstrap_expect = 3
advertise_addr   = "{{ GetInterfaceIP `eth1` }}"
client_addr      = "0.0.0.0"
ui               = true
datacenter       = "toronto"
retry_join       = ["192.168.56.101", "192.168.56.102", "192.168.56.103"]
