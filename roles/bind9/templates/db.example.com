$TTL    86400
@       IN      SOA     example.com.      root.example.com. (
                        2       ; Serial
                        3600    ; Refresh
                        600     ; Retry
                        120   ; Expire
                        600 )   ; Negative Cache
$ORIGIN example.com.
@               IN      NS      nodo1.example.com.
nodo1     IN    A       {{ ip_nodo1 }}
nodo2     IN    A       {{ ip_nodo2 }}
mariadb   IN    CNAME   nodo1
wordpress IN    CNAME   nodo2
