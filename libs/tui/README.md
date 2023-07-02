# How to use this lib

**Example**
#!/bin/bash <~~ shebang, this should be added at the top of your script

source colorme.sh   <~~ This will import the lib into your script
echo -e "${RED}Hello, World!${ENDCOLOR}" <~~ This will make the text "Hello, World!" red. Dont forget to add "-e" else it wont work, along with "${ENDCOLOR}". 