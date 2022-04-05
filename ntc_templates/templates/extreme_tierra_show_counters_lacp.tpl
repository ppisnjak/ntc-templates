#Port                          in-pkts       out-pkts        TxErr         RxErr         unknownErr          LacpErr
#--------------------------------------------------------------------------------------------------------------------------
#Data
#
#
Value PORT ([\w\s\d/:]+)
Value PACKETS_RX (\d+)
Value PACKETS_TX (\d+)
Value ERRORS_RX (\d+)
Value ERRORS_TX (\d+)
Value UNKNOWNERR (\d+)
Value LACP_ERR (\d+)



Start
 ^===== ->  TABLE

TABLE
 ^${PORT}\s+${PACKETS_RX}\s+${PACKETS_TX}\s+${ERRORS_TX}\s+${ERRORS_RX}\s+${UNKNOWNERR}\s+${LACP_ERR} -> Record