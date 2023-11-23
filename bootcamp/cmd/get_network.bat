echo off
echo getting network information...
ipconfig /all > network.txt
type network.txt
echo network information saved to network.txt
pause

