/*
Richard Kim
CS 385
HW #1
*/

#include "types.h"
#include "stat.h"
#include "user.h"
//#include "types.h"
//#include <sys/sysinfo.h>


int main(int argc, char* argv[])
{
	int time    = (uptime()/100);

	int minutes = ((time % 3600) / 60); // 60 * 60
	int hours   = ((time % 86400) / 3600); //24 * 3600
	int seconds = (time % 60); // 60
//	int time    = (uptime()/100);
	//seconds = (time % 60);
	/*if(time < 60)
	{
	seconds = time;
	}
	else if(time > 60)
	{
	seconds = time % 60;
	}*/
/*	if(time % 60 == 0)
	{
		//seconds -= 60;
		minutes++;
	}
	if(minutes % 60 == 0 && minutes == 60)
	{
		minutes = 0;
		hours++;
	}
*/
	printf(1, "current uptime is %d:%d:%d \n", hours, minutes,seconds);
	exit();
}
