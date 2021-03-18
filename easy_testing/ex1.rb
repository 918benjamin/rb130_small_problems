# Write a minitest assertion that will fail if the value.odd? is not true.

assert(value.odd?)

# LS Solution
assert value.odd?, 'value is not odd'

# Better to use assert_equal(true, value.odd?) so we are explicit that the
# return value is true and not simply truthy