## Requires you to run "Install-Module -Name AudioDeviceCmdlets" as an admin in powershell first
## This will change Microphone and Audio between a desk mic and speakers and headset/headset's microphone
## Remember to run "Get-AudioDevice -List" and identify the index numbers for your mic and headset for this to work properly
## S1 & M1 are speakers/desk mic
## S2 & M2 are headset/headset mic

$S = Get-audiodevice -Playback
$V = Get-audiodevice -RecordingCommunication

if ($S.Index -eq S1) # Set this number to the ID of your speakers
    {set-audiodevice -index S2} # Set this number to the ID of your headset
else 
    {set-audiodevice -index S1} ## Speakers

if ($V.Index -eq M1) # Set this number to the ID of your desk mic
    {set-audiodevice -index M2} # Set this number to the ID of your headset
else
    {set-audiodevice -index M1} # Desk mic
