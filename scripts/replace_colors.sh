#!/bin/sh

# First argument: previous color
# Second argument: new color
replace_color() {
    find src -type f -print0 | xargs -0 sed -i "s/\#$1/\#$2/g"
}

replace_color 444444 424242
replace_color 444 424242
replace_color 333333 303030
replace_color 333 303030
replace_color ddd fff
replace_color dddddd ffffff
replace_color eee fff
replace_color eeeeee ffffff
replace_color d8d8d8 b3b3b3

# Accent
replace_color f0544c 8bc34a
