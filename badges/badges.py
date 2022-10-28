# Script for generating badges for this project

# copyright
# https://github.com/jongracecox/anybadge
# https://replit.com/@JonGrace_Cox/anybadge-demo

import os
from anybadge import Badge

LABEL_INDEX = 0
VALUE_INDEX = 1
FILENAME_INDEX = 2
VALUE_COLOR_INDEX = 3

badges = [
    ["flutter", "v3.3.5", "flutter.svg", "dodgerblue"],
    ["dart", "v2.18.2", "dart.svg", "dodgerblue"],
    ["license", "MIT", "license.svg", "yellowgreen"],
    # ["forks", "6", "forks.svg", "deepskyblue"],
    # ["downloads", "12k", "downloads.svg", "deepskyblue"],
]


def delete_badge_if_exists(filename):
    if (os.path.exists(filename)):
        os.remove(filename)


def create_badge(badge_data):
    filename = badge_data[FILENAME_INDEX]
    label = badge_data[LABEL_INDEX]
    value = badge_data[VALUE_INDEX]
    path = filename

    if VALUE_COLOR_INDEX < len(badge_data):
        value_color = badge_data[VALUE_COLOR_INDEX]
    else:
        value_color = "green"

    # create new badge
    Badge(label, value, default_color=value_color).write_badge(
        path, overwrite=True)
    print("new badge file named '" + filename + "' successfully created!")


for badge_data in badges:
    create_badge(badge_data)
