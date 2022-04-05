Value Filldown lpolicy_name ([\-\w]+)
Value Filldown fw_action (permit|deny)
Value Filldown seq_num (\d+)
Value acl_type (ip|ipv6|mac)
Value acl_name ([\w\-]+)
Value truncate (\d+)
Value strip (vn-tag|br-tag|vlan-tag)
Value packets (\d+)
Value bytes (\d+)
Value packet_rate (\d+)
Value bit_rate (\d+)


Start
  ^\s*listener-policy\s+${lpolicy_name}\s+${seq_num} -> Record
  ^\s*forward-action\s+${fw_action} -> Record
  ^\s*match\s+${acl_type}\s+access-list\s+${acl_name} -> Continue.Record
  ^\s*truncate\s+${truncate} -> Record
  ^\s*strip\s+${strip} -> Record
  ^\s*Policy\s+matches:\s+${packets}\s+packets,\s+${bytes}\s+bytes,\s+${packet_rate}\s+PacketRate,\s+${bit_rate}\s+BitRate\s* -> Record

