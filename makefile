prodcomx : prodmain.o prodcom.o prodnfc.o prodweb.o
	  g++ -o prodcomx prodmain.o prodcom.o prodnfc.o prodweb.o -pthread -lwiringPi -lnfc -lchilkat-9.5.0 -L/home/pi/chilkat-9.5.0/lib -L/home/pi/libnfc/libnfc

prodmain.o: prodmain.cpp prodcom.h
	  g++ -c prodmain.cpp -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc

prodcom.o: prodcom.cpp prodcom.h
	  g++ -c prodcom.cpp -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc

prodnfc.o: prodnfc.cpp prodcom.h
	  g++ -c prodnfc.cpp -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc

prodweb.o: prodweb.cpp prodcom.h
	  g++ -c prodweb.cpp -I/home/pi/chilkat-9.5.0/include -I/home/pi/libnfc/include/nfc

clean :
	rm prodmain.o prodcom.o prodnfc.o prodweb.o 