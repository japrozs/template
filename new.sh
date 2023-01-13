#!/bin/sh

RED_BOLD="\033[1;31m"
GRAY="\033[0;37m"
RESET="\033[0m"


if [ -z "$1" ]
  then
    echo "${RED_BOLD}error${GRAY}: location not supplied${RESET}

${GRAY}usage: \$${RESET} ./new.sh ${GRAY}<location>${RESET}
${GRAY}example: \$${RESET} ./new.sh ${GRAY}project_folder${RESET}"
	exit
fi

git clone https://github.com/japrozs/template.git $1
cd $1
rm -rf .git new.sh README.md assets
chmod +x ./make.sh
./make.sh
if ./out/main; then
	echo "✅ project created successfully"
else
	echo "❌ an error occured"
fi