# bash-life

***

## Contents
 1. About
 2. License
 3. Prerequisites
 4. Exit status
 5. How to use
 6. Further development

***

## 1. About

A [Game of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) simulator written in Bash.

> The Game of Life is a cellular automaton devised by the British mathematician John Horton Conway in 1970.
> 
> The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, _alive_ or _dead_. Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:
> 
> 1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
> 2. Any live cell with two or three live neighbours lives on to the next generation.
> 3. Any live cell with more than three live neighbours dies, as if by overcrowding.
> 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
> 
> The initial pattern constitutes the _seed_ of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a _tick_ (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.

Source: [Conway's Game of Life - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Conway's_Game_of_Life)

## 2. License

This project is licensed under GNU General Public License Version 3+. For the full license, see `LICENSE`.

## 3. Prerequisites

 * Bash shell ≥ 4.2
 * `tput` for terminal handling. Can be found in different `ncurses` packages on Linux distributions (see the table below for major distros).

| Distrbution | Package name    |
| ----------- | --------------- |
| Arch Linux  | `ncurses`       |
| Debian      | `ncurses-bin`   |
| Fedora      | `ncurses`       |
| openSUSE    | `ncurses-utils` |
| Ubuntu      | `ncurses-bin`   |

## 4. Exit status

 * `0` bash-life exited successfully.
 * `1` Missing necessary programs to run bash-gorillas. (not implemented yet)

## 5. How to use

`TODO`

## 6. Further development

 * Check for prerequisites, add exit status `1`, on missing programs, that are necessary for bash-life to run. (high priority)
 * Add licensing information to each file. (high priority)
 * Add code comments. (normal priority)
 * Fill section '5. How to use' in README. (normal priority)

