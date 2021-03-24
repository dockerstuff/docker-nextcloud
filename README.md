# Nextcloud client docker

The goal of this image is simply to freeze and provide a running package to nextcloud-client.
Although just `nextcloudcmd` -- the command-line interface -- is of my interest (now), the
whole nextcloud client (GUI) is installed.

For the client docs about command-line use, make sure to check:
* https://docs.nextcloud.com/desktop/2.6/advancedusage.html.

## Docker image
The respective image is at [chbrandt/nextcloud](https://hub.docker.com/repository/docker/chbrandt/nextcloud).

### Examples

```bash
$ docker run -it --rm                        \
        -v /tmp/nextcloud/etc:/sourcedir     \
        chbrandt/nextcloud                   \
        nextcloudcmd -u <user> -p <password> \
        /sourcedir https://host.domain/remote.php/webdav/etc
```

/.\

