#!/bin/bash

link_one=$1
link_two=$2
create_symlink () 
{
   echo "Binding path $1 \\n to \\n $2" 
}

create_symlink $link_one $link_two


