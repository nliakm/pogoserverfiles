pause() {
 read -p "Press [Enter] key to exit"
}

cd $(dirname $0)

npm cache clean && npm install && npm run boot
