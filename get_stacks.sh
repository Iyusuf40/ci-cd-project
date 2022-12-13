#!/bin/bash
list=$(aws cloudformation list-stacks \
	--query "StackSummaries[*].StackName" \
	--stack-status-filter CREATE_COMPLETE --no-paginate --output text)
# read -r -a array <<< "$list"
# echo "1st index == ${array[0]} --- 2nd index == ${array[3]}"

thirdItem=$(echo "$list" | cut -f2)
if [ "$thirdItem" ]
then
	echo "$thirdItem"
	if [[ "$(echo $thirdItem | cut -d- -f3)" =~ a1a095a ]]
	then
		echo "isCurrent"
	else
		echo "=== cleanup starting ==="
	fi
fi

