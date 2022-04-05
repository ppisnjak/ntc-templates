Value ENCAP_COUNT {\d+}
Value TUNNEL_NAME ([\S]+)
Value TUNNEL_TYPE (\S+)
Value EGRESS_PORT ([\S\s]+)
Value RX_FRAMES (\d+)
Value RX_BYTES (\d+)

Start
 ^Number of tunnel-encaps:\s+${ENCAP_COUNT}
 ^\s+Name\s+:\s+${TUNNEL_NAME}
 ^Tunnel Encapsulation Statistics\(${TUNNEL_TYPE}) 
 ^\s+Egress port\s+:\s+${EGRESS_PORT}
 ^\s+RX Frames\s+:\s+${RX_FRAMES} 
 ^\s+RX Bytes\s+:\s+${RX_BYTES} 
