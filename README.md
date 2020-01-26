# Nagios-Line-Notification
    * This project use Nagios Core v.4.4.5
## Getting Start with Line

   1. Sign in Line from link >> https://notify-bot.line.me/en/
   
   2. Click Account >> MY Page >> Generate Token 
   
   3. Choose your group to notify (You must add friend named "Line Notify" to your group)
   
   4. Copy your key and paste to file "line.sh" 
    Ex. `"Authorization: Bearer 123AWES231AWE12345"`


## Getting Start with Nagios

   1. Copy command.cfg to your Nagios command.cfg
      Ex. Path `/usr/local/nagios/etc/objects/commands.cfg`
  
   2. Copy "line.sh" to plugin path ex. `/etc/nagios-plugins/plugins/` (If you change line.sh path , you choose change path in file "command.cfg" too)

   2. Verify configuration
      Ex. `sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg`
     
   3. Restart Nagios service
      `sudo service nagios restart`

## Line Notify
<img src="./markdown/img1.png" width="500px">

## Nagios Core
<img src="./markdown/img4.png" >

<img src="./markdown/img2.png" >

<img src="./markdown/img3.png" >
