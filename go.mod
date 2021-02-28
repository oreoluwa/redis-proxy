module github.com/Codility/redis-proxy

go 1.16

require (
	github.com/beorn7/perks v0.0.0-20160804104726-4c0e84591b9a // indirect
	github.com/golang/protobuf v0.0.0-20170712042213-0a4f71a498b7 // indirect
	github.com/kr/pretty v0.0.0-20160823170715-cfb55aafdaf3 // indirect
	github.com/kr/text v0.0.0-20160504234017-7cafcd837844 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/prometheus/client_golang v0.8.1-0.20170712165359-95b6848b5c5b
	github.com/prometheus/client_model v0.0.0-20170216185247-6f3806018612 // indirect
	github.com/prometheus/common v0.0.0-20170707053319-3e6a7635bac6 // indirect
	github.com/prometheus/procfs v0.0.0-20170703101242-e645f4e5aaa8 // indirect
	github.com/stvp/assert v0.0.0-20170616060220-4bc16443988b
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	redisgreen.net/respio v0.0.0-00010101000000-000000000000
)

replace redisgreen.net/respio => ./vendor/redisgreen.net/respio
