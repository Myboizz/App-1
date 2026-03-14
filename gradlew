#!/bin/sh

##############################################################################
#
# Copyright © 2015-2021 the original authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0, etc.

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    exit 1
}

# OS specific support.
case "`uname`" in
    Darwin*)
        # Mac
        APP_HOME="$HOME/Applications/Gradle.app/Contents/Home"
        ;;
    MINGW*)
        # Windows Git Bash
        APP_HOME="$APP_HOME/gradle-$APP_BASE_NAME"
        ;;
    *)
        # Linux
        APP_HOME="$HOME/.gradle"
        ;;
esac

# For Cygwin, switch paths to Windows format before running java
if [ "$OSTYPE" = "cygwin" ] ; then
    APP_HOME=$(cygpath --path "$APP_HOME")
fi

exec "$APP_HOME/bin/gradle" "$@"
