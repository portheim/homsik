## Requires you to run "Install-Module -Name AudioDeviceCmdlets" as an admin in powershell first
## This will change Microphone and Audio between a desk mic and speakers and headset/headset's microphone
## Remember to run "Get-AudioDevice -List" and identify the index numbers for your mic and headset for this to work properly

$S = Get-audiodevice -Playback
$V = Get-audiodevice -RecordingCommunication

if ($S.Index -eq 2) # Set this number to the ID of your speakers
    {set-audiodevice -index 3} # Set this number to the ID of your headset
else 
    {set-audiodevice -index 2} ## Speakers

if ($V.Index -eq 5) # Set this number to the ID of your desk mic
    {set-audiodevice -index 4} # Set this number to the ID of your headset
else
    {set-audiodevice -index 5} # Desk mic