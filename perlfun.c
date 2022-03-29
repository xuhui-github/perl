#include<perl.h>
 static void
        call_Inc(a, b)
        int a;
        int b;
        {
            dSP;
            int count;
            SV * sva;
            SV * svb;

            ENTER;
            SAVETMPS;

            sva = sv_2mortal(newSViv(a));
            svb = sv_2mortal(newSViv(b));

            PUSHMARK(SP);
            XPUSHs(sva);
            XPUSHs(svb);
            PUTBACK;

            count = call_pv("Inc", G_DISCARD);

            if (count != 0)
                croak ("call_Inc: expected 0 values from 'Inc', got %d\n",
                       count);

            printf ("%d + 1 = %d\n", a, SvIV(sva));
            printf ("%d + 1 = %d\n", b, SvIV(svb));

            FREETMPS;
            LEAVE;
        }

