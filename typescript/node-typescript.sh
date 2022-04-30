echo "$0 script is working ..."

echo "creating directory ..." 
mkdir $1
while ! test -r "$1"; do
    echo "waiting for creating ${$1} folder..."
    sleep 20  
done
mkdir $1/src || (echo "Couldn't create src folder ")

cd $1  || (echo "Error" && exit 1)
echo "Initiate Git ..."
git init
echo "___________${UGreen}Install Packaeges___________"
echo "1-Creating package.json..."
npm init -y
echo "2-Install typescript and Node dependencies..."
npm i -D typescript ts-node @types/node
echo "3-Install nodemon" 
npm i -D nodemon
echo "4-Install Jasmin && jasmine-spec-reporter for testing..."
npm i -D jasmine @types/jasmine jasmine-spec-reporter
echo "___________${UGreen}Initiate Packaeges___________" 
echo "Typescript ..."
npx tsc --init || (echo "Couden't run tsc --init  you should run npm install tsc-init -g" && exit) 
echo "Jasmine ..."
npx jasmine init || (echo "Couden't run npx jasmine init" && exit) 





