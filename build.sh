g++ -pthread -g prodmain.cpp prodcom.cpp prodnfc.cpp prodweb.cpp -o prodcom -lwiringPi -lnfc -lchilkat-9.5.0 -L/home/pi/chilkat-9.5.0/lib -L/home/pi/libnfc/libnfc -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc 
.c