## スコアボード初期化

scoreboard objectives add MT-Const dummy
scoreboard objectives add MT-Calc dummy
scoreboard objectives add MT-Input1 dummy
scoreboard objectives add MT-Input2 dummy
scoreboard objectives add MT-Output dummy
scoreboard objectives add MT-Index dummy


## 定数
scoreboard players set $MT_-2^31 MT-Const -2147483648
scoreboard players set $MT_-1 MT-Const -1
scoreboard players set $MT_2 MT-Const 2
scoreboard players set $MT_2^2 MT-Const 4
scoreboard players set $MT_2^3 MT-Const 8
scoreboard players set $MT_2^4 MT-Const 16
scoreboard players set $MT_2^5 MT-Const 32
scoreboard players set $MT_2^6 MT-Const 64
scoreboard players set $MT_2^7 MT-Const 128
scoreboard players set $MT_2^8 MT-Const 256
scoreboard players set $MT_2^9 MT-Const 512
scoreboard players set $MT_2^10 MT-Const 1024
scoreboard players set $MT_2^11 MT-Const 2048
scoreboard players set $MT_2^12 MT-Const 4096
scoreboard players set $MT_2^13 MT-Const 8192
scoreboard players set $MT_2^14 MT-Const 16384
scoreboard players set $MT_2^15 MT-Const 32768
scoreboard players set $MT_2^16 MT-Const 65536
scoreboard players set $MT_2^17 MT-Const 131072
scoreboard players set $MT_2^18 MT-Const 262144
scoreboard players set $MT_2^19 MT-Const 524288
scoreboard players set $MT_2^20 MT-Const 1048576
scoreboard players set $MT_2^21 MT-Const 2097152
scoreboard players set $MT_2^22 MT-Const 4194304
scoreboard players set $MT_2^23 MT-Const 8388608
scoreboard players set $MT_2^24 MT-Const 16777216
scoreboard players set $MT_2^25 MT-Const 33554432
scoreboard players set $MT_2^26 MT-Const 67108864
scoreboard players set $MT_2^27 MT-Const 134217728
scoreboard players set $MT_2^28 MT-Const 268435456
scoreboard players set $MT_2^29 MT-Const 536870912
scoreboard players set $MT_2^30 MT-Const 1073741824

scoreboard players set $MT_69069 MT-Const 69069

scoreboard players set $MT-a MT-Const -1727483681
scoreboard players set $MT-b MT-Const -1658038656
scoreboard players set $MT-c MT-Const -272236544
scoreboard players set $MT-n MT-Const 624
scoreboard players set $MT-m MT-Const 397

## 変数
scoreboard players set $MT-Seed MT-Index 0
scoreboard players set $MT-Index1 MT-Index 0