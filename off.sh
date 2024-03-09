#!/usr/bin/expect -f

set prompt "#"

spawn bluetoothctl
send "clear\r"
send "mgmt.connectable off\r"
send "advertise.data 0 0x1f 0x02 0x01 0x01 0x1b 0x03 0xf9 0x08 0x49 0x13 0xf0 0x69 0x25 0x4e 0x31 0x51 0xba 0xae 0xe5 0x50 0x59 0x93 0xfa 0x49 0x71 0xa3 0xf4 0x55 0x68 0xf6 0xdd 0x00\r"
send "advertise.interval 20 20\r"
send "advertise on\r"
sleep 0.05
send "menu advertise\r"
send "clear data\r"
send "manufacturer 0x5570 0x18 0x87 0x52 0xb6 0x5f 0x2b 0x5e 0x00 0xfc 0x31 0x51 0x50 0xab 0x9b 0x08 0x24 0xcb 0x61 0xfc 0x08 0xda 0x27 0xac 0x36 0x23 0xff 0xff\r"
#send "service 000008f0-0000-1000-8000-00805f9b34fb 0x10 0x00 0xea 0xd5 0x96 0x0a 0x92 0x64 0x20 0xe6 0x2b 0xad 0x79 0xbb 0xf1 0x9f 0x2a 0x0e 0xb1 0xfb 0x0c 0xa9 0x1e 0x37\r"
send "back\r"
sleep 2
send "advertise off\r"
send "quit\r"
expect eof
