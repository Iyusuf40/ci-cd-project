#!/bin/bash

init_list="udapeople-f2e24ac udapeople-f5b1bb1 udapeople-df9de48 udapeople-ca1f542 \
	udapeople-bffc414 udapeople-b9bd246 udapeople-a1a095a udapeople-98d02de\
	udapeople-98bb3b6 udapeople-8f29892 udapeople-8e59559 udapeople-8a5c947\
	udapeople-6baef01 udapeople-43c0e44 udapeople-29e4b8f udapeople-1c771df\
	udapeople-1c0174b udapeople-0fce768 udapeople-05a3397"

list=$(aws s3api list-buckets --output text | cut -f3)

for i in $list
do
	echo $i;
	aws s3 rm s3://$i --recursive
	aws s3api delete-bucket --bucket $i
done
