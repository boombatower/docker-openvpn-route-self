openvpn-route-self
==================
Append a route to self in openvpn server config to be pushed to clients.

usage
-----
```sh
$ docker run --rm --volumes-from openvpn-data --net=host boombatower/openvpn-route-self
```

Where `openvpn-data` container has configs located at `/etc/openvpn/openvpn.conf`.

docker registry
---------------
The Docker registry repository can be found at https://registry.hub.docker.com/u/boombatower/openvpn-route-self.
