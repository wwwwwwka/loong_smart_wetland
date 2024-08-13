#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "executer.h"


int main(int arg, char *args[])
{
    
    executer_init();


    while(1)
    {
        executer_choose_run();
    }
    
    return 0;
}


