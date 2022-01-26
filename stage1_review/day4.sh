for item in `ls *.*`
do
   fileName=`echo $item |grep -v .sh | awk -F . '{ print $1 }'`
   fileExt=`echo $item | grep -v .sh | awk -F . '{print $2}'`
   if [ -d $fileName $fileExt ]
then
   echo "iam standing in if condition"
rm -rf $fileName
rm -rf $fileExt
fi
mkdir $fileName
mkdir $fileExt
mv $item $fileExt
mv $fileExt $fileName

done
