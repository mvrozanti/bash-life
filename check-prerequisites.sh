#!/bin/bash

# bash-life is a Game of Life simulator written in Bash.
# Copyright (C) 2013 Istvan Szantai <szantaii at sidenote dot hu>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program (LICENSE).
# If not, see <http://www.gnu.org/licenses/>.

check_prerequisites()
{
	# Check if 'tput' command is available
	which tput > /dev/null
	
	# If 'tput' is not available, then print
	# error message and exit with status code '1'
	if (($? != 0))
	then
		# Restore terminal screen
		tput rmcup
		
		printf "Your system is missing the program 'tput' which is necessary \
for bash-life\nto run. 'tput' can be found in the following packages on \
the following distributions:\n    Distribution        Package name\n\
    ---------------------------------\n    Arch Linux          ncurses\n    \
Debian              ncurses-bin\n    Fedora              ncurses\n    \
openSUSE            ncurses-utils\n    Ubuntu              ncurses-bin\n"
		
		exit 1
	fi
	
	# Check if terminal has at least $min_term_width columns and
	# $min_term_height lines
	#
	# If either terminal width or height is less than
	# $min_term_width and $min_term_height print error message
	# and exit with status code '2'
	if ((term_width < min_term_width || term_height < min_term_height))
	then
		# Restore terminal screen
		tput rmcup
		
		printf "bash-life needs a terminal with size of at least \
${min_term_width}x${min_term_height} (${min_term_width} columns, \
${min_term_height} lines).\n"
		
		exit 2
	fi
}
