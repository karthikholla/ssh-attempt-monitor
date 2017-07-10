# ssh-attempt-monitor

### Under the root folder, run below command to spin up 3 nodes;
1 AlphaServer
2 AlphaClients

`vagrant up`

### rsyslog

Using this approach way in order to monitor ssh log-in attempts.

#### In the AlphaServer,

Uncomment the below lines

`$ModLoad imtcp`

`$InputTCPServerRun 514`

Add these lines

`$template SshLog,"/var/log/custom/ClientSsh.log"`

`*.* ?SshLog`

restart rsyslog service

`systemctl restart rsyslog.service`

#### In the AlphaClients,

At the EOF, add below lines

`*.* @@<remoteserverip>:514`

Eg:
`*.* @@10.0.0.10:514`

restart rsyslog service

`systemctl restart rsyslog.service`

### Run the below script from the AlphaServer for count of SSH attempts

`./<scriptname>.sh`

`Eg: There were 0 attempts attempts from the AlphaClients`
