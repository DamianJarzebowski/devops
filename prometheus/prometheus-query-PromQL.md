## Selectors & Matches
### SELECTORS
```
process_cpu_seconds_tota{instance="<value>"}
process_cpu_seconds_total{job="example", app="example2"}
```
### MATCHER
```
=
!=
=~              Select labels that regex-match with the provided string
~!              Select labels that do not regex-match with the provided string


prometheus_http_requests_total{handler=~"/api.*"}

# Limit time vector selector
[1m]

prometheus_http_requests_total{handler=~"/api.*"}[1m]

```
## Binary Operators

### Arithmetic binary operators
```
+ (addition)
- (subtraction)
* (multiplication)
/ (division)
% (modulo)
^ (power/exponentiation)

node_memory_MemTotal_bytes/1024/1024
```

### Comparison binary operators
```
== (equal)
!= (not-equal)
> (greater-than)
< (less-than)
>= (greater-or-equal)
<= (less-or-equal)

node_cpu_seconds_total>500
```

### Logical/set binary operators
```
and (intersection)
or (union)
unless (complement)

node_memory_MemTotal_bytes and prometheus_http_requests_total
```

## Aggregation Operators
```
sum                 (calculate sum over dimensions)
avg                 (calculate the arithmetic average over dimensions)
min                 (select minimum over dimensions)
max                 (select maximum over dimensions)
bottomk             (smallest k elements by sample value)
topk                (largest k elements by sample value)
limitk              (sample k elements, experimental, must be enabled with --enable-feature=promql-experimental-functions)
limit_ratio         (sample a pseudo-randem ratio r of elements, experimental, must be enabled with --enable-feature=promql-experimental-functions)
group               (all values in the resulting vector are 1)
count               (count number of elements in the vector)
count_values        (count number of elements with the same value)
stddev              (calculate population standard deviation over dimensions)
stdvar              (calculate population standard variance over dimensions)
quantile            (calculate φ-quantile (0 ≤ φ ≤ 1) over dimensions)

sum(prometheus_http_requests_total) by (code)
```

## Functions

```
https://prometheus.io/docs/prometheus/latest/querying/functions/

rate(http_requests_total{job="api-server"}[5m])
```