This will switch your headset and microphone without having to open up your settings and manually clicking them each time you want to switch between them. 
Set up
  1. Open up powershell as an admin
  2. run "Install-Module -Name AudioDeviceCmdlets", click yes to all. 
  3. run "Get-Audiodevice -list"
  4. Note the Index #'s associated with each different audio device. You'll need to open up the power shell script and change the numbers according to the index  # given. 
