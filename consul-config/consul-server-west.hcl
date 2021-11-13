data_dir = "/tmp/consul/server"

server           = true
bootstrap_expect = 3
advertise_addr   = "{{ GetInterfaceIP `eth1` }}"
client_addr      = "0.0.0.0"
ui               = true
datacenter       = "vancouver"
retry_join       = ["192.168.56.201", "192.168.56.202", "192.168.56.203"]
