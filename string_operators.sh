# 1 Use of {:-}
# A is defined and echo returns its value instead D_A
A="defined variable"
D_A="default value for A"
echo "${A:-$D_A}"

# 2a use of {:-}
# B is not initially defined but {:-} returns its default value
D_B="default value for B"
echo "${B:-$D_B}"

# 2b use of {:-}
# B is not initially defined but {:-} returns its default value WITHOUT defining B
echo "${B:-"B is not defined"}"
echo $B

# 3 use of {:=}
# C is not defined, but {:=} re-define it to default value
echo "${C:="Now C is defined by string operators"}"
echo $C
