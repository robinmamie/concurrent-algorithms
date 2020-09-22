# Automation of remote testing for CS-453
## All submissions are archived with a timestamp in the folder 'archive'
## Output is logged by default in log.out, and also archived
## Files are archived as "SCIPER_DATE.[out|zip] (log and code)
## The date is in ISO format and UTC
## The script assumes that the code is present in a folder named 'src'

# Base variables
START_FOLDER=src
OUTPUT_NAME=log.out
##Please complete this information
SCIPER=
UUID=

# Create zip submission
cp -r $START_FOLDER $SCIPER
zip -r $SCIPER.zip $SCIPER
rm -r $SCIPER

# Submit
python3 submit.py --uuid $UUID $SCIPER.zip | tee $OUTPUT_NAME

# Archive
ARCHIVE_UID=$(date -u +%Y%m%dT%H%M%SZ)
mkdir -p archive
mv $SCIPER.zip archive/$SCIPER\_$ARCHIVE_UID.zip
cp $OUTPUT_NAME archive/$SCIPER\_$ARCHIVE_UID.out
