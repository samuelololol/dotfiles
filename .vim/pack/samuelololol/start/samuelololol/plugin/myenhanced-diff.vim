"    EnhancedDiff <algorithm>
"
"    Algorithm       Description~
"    myers           Default diff algorithm
"    default         Alias for myers
"    minimal         Like myers, but tries harder to minimize the resulting
"                    diff
"    patience        Use the patience diff algorithm
"    histogram       Use the histogram diff algorithm (similar to patience but
"                    slightly faster)
let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
