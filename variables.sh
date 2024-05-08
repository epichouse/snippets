# Returning a value from a sub-script using echo

##Calling Script
VMID=$(modules/get-next-vmid.sh)

##Sub Script
NextVMID=$(( $LatestVMID + 1 ))
echo $NextVMID



# Get variable on script execution
#Variables
ID=$1

#If ID is not set, script will ask for ID
if [ -z "$VMID" ]
then
    echo ""
    read -p "Please enter ID: " ID
fi