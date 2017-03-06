# Least
A pager that can dynamically filter log lines

## Description


## Usage

`$ long_running_process.sh | least` will tail the output of a process and allow you to filter it.
`$ least log_file` will watch the file and allow you to filter it.

Once inside least, you have the following command keys:
* `?` - Display these commands
* `Ctrl-c` - Quit
* `/` - Start filtering on a given pattern
* `<Space>` - Pause/Resume
* `Page up`/`Ctrl-u` - Going up a page
* `Page down`/`Ctrl-d` - Going down a page
* `Ctrl-p`/`k` - Go up one line
* `Ctrl-n`/`j` - Go down one line

## Installation
