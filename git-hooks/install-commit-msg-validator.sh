#!/bin/sh

# Install git commit message validator
# To validate following messages:
# 'SECSUB-#### [committer_name_1|committer_name_2] commit message'
# 'SECSUB-Tech [committer_name_1|committer_name_2] commit message'

VALIDATOR_FILE=".git/hooks/commit-msg"

echo "Creating validator file \xF0\x9F\x94\xA5"
touch $VALIDATOR_FILE

echo "Adding permission \xE2\x9C\xA8"
chmod +x $VALIDATOR_FILE

echo "Adding rules for validator \xF0\x9F\x94\x8E"
/bin/cat <<EOM >$VALIDATOR_FILE
#!/usr/bin/env ruby

message_file = ARGV[0]
message = File.read(message_file)

\$regex = /((SECSUB-(TECH|[0-9]))[\s](\[[\w\.]+[\|[\w\.]+]+\])[\s])/i 
if !\$regex.match(message) 
  puts "[POLICY] Your message is not formatted correctly" 
  puts "[STANDARD] Your message should be in the format: ‘SECSUB-#### [committer_name_1|committer_name_2] commit message’" 
  exit 1
end
EOM

# bat $VALIDATOR_FILE

echo "Commit message validator hook was installed successfully.\xE2\x98\xA0"
