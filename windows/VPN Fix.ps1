%userprofile%\AppData\Roaming\Microsoft\Network\Connections\PBK or C:\ProgramData\Microsoft\Network\Connections\Pbk).

Right click on the VPN's .pbk file and open it with Notepad. (Remember to untick 'Always use this program for this file type')
Roughly 5 lines down will be an entry 'UseRasCredentials=1'
Change this to 'UseRasCredentials=0'
Save the file.