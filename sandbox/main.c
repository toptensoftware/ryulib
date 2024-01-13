#include <stdio.h>
#include "../ryu/ryu/ryu.h"

int main()
{
    char buf[32];
    d2s_buffered(123.123, buf);
    f2s_buffered(123.123f, buf);

    char buf2[32];
    d2fixed_buffered(123.128, 6, buf2);
    d2exp_buffered(123.128, 6, buf2);

    printf("R: %s F: %s\n", buf, buf2);
    return 0;
}