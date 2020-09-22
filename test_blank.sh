# Automation of local testing for CS-453
## The script assumes that the code is present in a folder named 'src'

# Base variables
START_FOLDER=src
##Please complete this information
SCIPER=

# Grading
cp -r $START_FOLDER $SCIPER
cd grading
make build-libs run
cd ..

# Cleanup
rm -r $SCIPER
rm *.so
rm grading/grading
rm */*.o
