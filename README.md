# Design Requirements
```
Site 2 Cloud Connectivity from Vendors to access busiess services in the cloud.
A Vendor can access multiple states e.g. APP-A, or APP-B 
A business servics can access multiple Vendors e.g. APP=A can access Vendor 1 and Vendor 2.
Each business APP will have its own S2C GW in HA.
Both ends IP to be virtualized.
Both VENDOR or CLOUD can initiate traffic.
```

# Solution
```
S2C tunnels will be using Policy based IPSEC, to support legacy site hardware.
S2C can’t be done on SPOKE as no Single IP HA available.
S2C Standalone gateways in HA are used as they provide single IP HA IPSEC.
Customized MAP NAT is used where both sides IP are mapped to virtual IP.
```

# Diagram

<img width="546" alt="image" src="https://user-images.githubusercontent.com/40156720/180131200-a94c4255-d571-459c-826a-84666c7233d2.png">


