Value Filldown ingressgroup_name ([\-\w]+)
Value rmap_name ([\-\w]+)
Value traffic_type ([\-\w+\s+]+)

Start
  ^\s*ingress-group\s+${ingressgroup_name} -> Record
  ^\s*route-map\s+${rmap_name} -> Record
  ^\s*traffic-type\s+${traffic_type} -> Continue.Record
