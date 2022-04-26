# Nextcloud client docker

The goal of this image is simply to freeze and provide a running package to nextcloud-client.
Although just `nextcloudcmd` -- the command-line interface -- is of my interest (now), the
whole nextcloud client (GUI) is installed.

For the client docs about command-line use, make sure to check:
* https://docs.nextcloud.com/desktop/2.6/advancedusage.html.

## Docker image
The respective image is at [chbrandt/nextcloud](https://hub.docker.com/repository/docker/chbrandt/nextcloud).

### How to

The command-line is very simple, it is `nextcloudcmmd` inside docker, everything the same. Because it is inside
a (docker) container, you have to bind a local system directory where you want the files (from your nextcloud/webdav)
to be downloaded-to and/or uploaded-from.

In the next example, I'm going to mount/bind my filesystem's "`/data/project-X`" directory to the container's "`/data`",
and use this directory in the command-line:

```bash
# TMP_DIR='/data'
$ docker run -it --rm -v /data/project-X:$TMP_DIR chbrandt/nextcloud \
        nextcloudcmd -u <username> -p <password> $TMP_DIR https://hostname/remote.php/webdav/project-X
```

Notes:
* `<username>` and `<password>` are given in plain text (eg, 'carlos' and `123456`);
* `/data` (TMP_DIR) is just a proxy-directory, you can name however you want;
* `-it --rm` are also optional, if you are not sure what they mean, leave them there.


/.\

