# conveyer

The following altertions need to be made to the gitlab runnuer's

`/etc/gitlab-runner/config.toml`

Note the volumes and network_mode

```
concurrent = 1
check_interval = 0

[[runners]]
  name = "react_native_runner"
  url = "https://wip-access-hub.com/gitlab/"
  token = "84116b9cf7a597139aac46df3181ef"
  executor = "docker"
  [runners.docker]
    tls_verify = false
    image = "node"
    privileged = false
    disable_cache = false
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
    network_mode = "buildserver_internal"
    shm_size = 0
  [runners.cache]
```

Build server
