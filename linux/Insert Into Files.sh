# Writing into a file without sudo permission required
echo "this is a line" > file.txt # Single Shevron will overwrite entire file contents
echo "this is a line" >> file.txt # Double Shevron will append file contents

#Uses tee to echo into a file - tee allows sudo as oppesed to just echoing
#-a is append
echo "This is the $HOSTNAME" | sudo tee -a file.txt