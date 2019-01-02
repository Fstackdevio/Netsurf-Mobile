#to run the api <br />
#http://localhost/netsurf/Netsurf_Api/public/Api_Name/

## Api Reconstruct

We will be tackling this with the netsurf version two in mind, while still building the version one for roll out.

The following are the list of api end point needed.

- Login Api (Login History automatic Logs of where it happened and time with its end point access || automatic app ID assigned to user at first login || 2FA)
- Buy Data Api (Buy History automatic Logs and its end point for access || buy data restriction if swift wallet is not linked to netsurf)
- Check Data Balance Api (V2 automatic fetch of balance as user is logged in)
- Share Data Api (Share History automatic Logs and its end point for access)
- Change Password (It logs and end point access)
- Data usage stats
- Push Notification (Make a connection to FCM with PHP and MYSQL)
- App Notification (To get who shared and who user shared to with time, image and qouta size)
- Logout
- Global Logout (To disconnect from all apps -- web, mobile and desktop)
- Check Cloud for App Update
- FAQ (json docs with questions and its answers to be fetched)
- Link to playstore and app store to rate app
- Help Center
- Report A Problem
- About App (Json content to be fetched)
- Privacy Policy (Json content to be fetched)
- Terms of use (Json content to be fetched)
- Remote Connect App Authorization to Swift Wallet Account (make it a web link as the app will open it and the user clicks authorize)

Please do check the app consumer.dart file it shows how the app will be interacting with the api for different operations

