# performance-testing
An additional module that has programs/config required to monitor v14+ instances for performance testing.


# Installation

Instructions:

    $ bash <(curl -Ls https://github.com/fw-dev/performance-testing/raw/master/patch-v14-server.sh)
    $ fwcontrol server restart
   
# TODO
1. Change mtail configuration to NOT hit access_log for Apache.
2. Change logging configurationt to use ERROR status for the filewave_django.log error file.