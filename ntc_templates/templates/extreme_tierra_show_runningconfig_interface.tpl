Value port (\d/\d+)
Value mtu (\d+)
Value List ingress_group ([\w\-]+)
Value desc ([\w\s]+)
Value shut (shutdown|no shutdown)

Start
  ^\s*interface\s+ethernet\s+${port}
  ^\s*mtu\s+${mtu}
  ^\s*ingress-group\s+${ingress_group} -> Continue
  ^\s*description\s+${desc}
  ^\s*${shut} -> Record
