# Sudo User Password to Root Password

How to edit the sudoers file to make 'sudo' prompt you to enter the root password instead of the user password:


```bash
edit sudoers with 'sudo visudo'

add 'Defaults rootpw' at the top
```
'
