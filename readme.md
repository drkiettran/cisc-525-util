# CISC 525 - Big Data Architecture - Spring 2021
This file is updated each semester and it is used as a starting point the the class.

Last updated: **`21 December 2020`**

## Important links:
You can download the airline performance data, the virtual machine (VM) and all 
the necessary tools for the CISC 525 Big Data Architecture class.

### Oracle Virtual Box:
  - https://www.virtualbox.org/
  
### Ubuntu 18.04 VM for the class is located here (Spring 2021):
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EeOpBEJHGXNDn5Cj4-j19RYBZ-Pa2AOEwMwP5mebaHdw5Q?e=rcJanE
  
## tools.zip file:
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EVTQDPLbK4pMrK_UK70_dOYBW75pbM4-01hq5Ofbo8HqyA?e=fX5agC
  
## apps.zip file:
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EX6suDepr4ZAr2o1ktWDEswBunXdx4B6IHEnvP872mVcrQ?e=VkK1EI

## Airline performance data is located here:
  - https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/HG7NV7

## hadoop.zip file:
  - https://myharrisburgu-my.sharepoint.com/:u:/g/personal/ktran_harrisburgu_edu/EZspkkfil1dPi7EpXviz3L8BY6pNTRcZTmErszd2p9nqPQ?e=e1t06I

## Instructions
Follow the following instructions:
- Download & Install Oracle Virtual Box software and the 'extension pack'
- Download the VM image (Oracle VM appliance)
- Import the appliance downloaded from step above
- Download and extract dev.zip file. Make sure to extract into the /home/student/dev folder.
- Update the /home/student/.bashrc with content of the 'bashrc' file located in this folder here.
- Update **`YOUR_FIRST_NAME_HERE`** at line 60 of the .bashrc file to your actual first name.


Exmaple only:

```bash
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export TOOLS_HOME=/home/student/tools

export ACTIVEMQ_HOME=$TOOLS_HOME/activemq
export FLUME_HOME=$TOOLS_HOME/flume
export HBASE_HOME=$TOOLS_HOME/hbase
export HIVE_HOME=$TOOLS_HOME/hive
export HCAT_HOME=$HIVE_HOME/hcatalog
export KAFKA_HOME=$TOOLS_HOME/kafka
export LUCENE_HOME=$TOOLS_HOME/lucene
export MAVEN_HOME=$TOOLS_HOME/maven
export PIG_HOME=$TOOLS_HOME/pig
export SOLR_HOME=$TOOLS_HOME/solr
export SPARK_HOME=$TOOLS_HOME/spark
export SQOOP_HOME=$TOOLS_HOME/sqoop
export ZOOKEEPER_HOME=$TOOLS_HOME/zookeeper

export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export PATH=$SPARK_HOME:$PATH

export HADOOP_HOME=/usr/local/hadoop
export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop
export HADOOP_MAPRED_HOME=/usr/local/hadoop
export HADOOP_COMMON_HOME=/usr/local/hadoop
export HADOOP_HDFS_HOME=/usr/local/hadoop
export YARN_HOME=/usr/local/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_PID_DIR=$HADOOP_HOME/hadoop2_data/hdfs/pid

readlink -f /usr/bin/java | sed "s:bin/java::"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$HADOOP_HOME/bin

export PATH=$PATH:$FLUME_HOME/bin
export PATH=$PATH:$HBASE_HOME/bin
export PATH=$PATH:$HIVE_HOME/bin
export PATH=$PATH:$KAFKA_HOME/bin
export PATH=$PATH:$LUCENE_HOME/bin
export PATH=$PATH:$PIG_HOME/bin
export PATH=$PATH:$SOLR_HOME/bin
export PATH=$PATH:$SPARK_HOME/bin
export PATH=$PATH:$SQOOP_HOME/bin
export PATH=$PATH:$ZOOKEEPER_HOME/bin

export PATH=$PATH:$MAVEN_HOME/bin
export PATH=$PATH:/home/student/.local/bin
```
