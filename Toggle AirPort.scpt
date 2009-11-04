-- 
-- Toggle AirPort.scpt
-- 
-- Author: Andrew Heiss - http://www.andrewheiss.com
-- Project site: http://github.com/andrewheiss/AirPort-Toggle
-- Description: Toggle AirPort.scpt is a simple AppleScript file that will 
--              either enable or disable your AirPort connection
-- License: Licensed under the MIT License (see README for full information)
-- Date: November 4, 2009 
-- Version: 1.0

--Figure out if the AirPort is on or off...
set airport_status to do shell script "/usr/sbin/networksetup -getairportpower AirPort"

--If it's on, turn it off, and vice versa
if airport_status is "AirPort Power (AirPort): On" then
	do shell script "/usr/sbin/networksetup -setairportpower AirPort off"
	set status to "AirPort turned off"
else
	do shell script "/usr/sbin/networksetup -setairportpower AirPort on"
	--In case you need to use administrator priveleges...
	--do shell script "" user name "admin name" password "password" with administrator privileges
	set status to "AirPort turned on"
end if

--Growl magic, if Growl is installed...
tell application "System Events"
	if (count of (every process whose name is "GrowlHelperApp")) > 0 then
		tell application "GrowlHelperApp"
			set the allNotificationsList to {"AirPort Toggle"}
			
			set the enabledNotificationsList to {"AirPort Toggle"}
			
			register as application "AirPort Toggle" all notifications allNotificationsList default notifications enabledNotificationsList icon of application "AirPort Utility"
			
			notify with name "AirPort Toggle" title "AirPort Toggle" description status application name "AirPort Toggle"
		end tell
	end if
end tell