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

print_grid()
{
	for ((i=0; i < grid_height; i++))
	do
		cursor_x=${grid_xmin}
		cursor_y=$((grid_ymin + i))
		place_cursor
		
		for ((j=0; j < grid_width; j++))
		do
			case "${grid["${j},${i}"]}" in
				0)
					printf " " >> $buffer
					;;
				1)
					printf "o" >> $buffer
					;;
			esac
		done
	done
	
	cursor_x=0
	cursor_y=${term_height}
	place_cursor
}

