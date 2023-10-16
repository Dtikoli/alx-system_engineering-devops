# Web stack debugging #4

## Concepts:

- `nofile (Number of File Descriptors)`: This resource limit specifies the maximum number of file descriptors (also known as file handles) that a user or process can have open simultaneously.
- `nproc (Number of Processes)`: This resource limit sets a cap on the maximum number of processes that a user or process can create. 
- Checking `nofile` ulimit from configuration /etc/nginx/conf.d/ and /etc/nginx/sites-available/
- checking `nofile` ulimit configuration settings in /etc/init.d/nginx startup script and following cues
- Checking `nofile` ulimit from /etc/default/nginx if indicated in startup scripts.
- Accesing system-wide ulimit settings/values in /etc/security/limits.conf or /etc/security/limits.d/
