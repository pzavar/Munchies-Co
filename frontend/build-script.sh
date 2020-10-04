# use the remote-url
mv ./src/Utils/url.js ./src/Utils/local-url.js
mv ./src/Utils/remote-url.js ./src/Utils/url.js

# Make the production build
npm run build 
# Zip it up to send it easily 
zip -r build.zip build
# send the build zip to the remote server
scp -r build.zip forkandspatula@daken.dreamhost.com:~/forkandspatula.com/
# Run these commands 
ssh forkandspatula "rm -r ~/forkandspatula.com/public && unzip -o -d ~/forkandspatula.com/ ~/forkandspatula.com/build && mv ~/forkandspatula.com/build ~/forkandspatula.com/public && rm -r ~/forkandspatula.com/build.zip"
# Remove the build locally
rm -r build.zip


# move the local-url
mv ./src/Utils/url.js ./src/Utils/remote-url.js
mv ./src/Utils/local-url.js ./src/Utils/url.js
