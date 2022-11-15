Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\administrator>git clone https://github.com/Azure-Samples/azure-voting-app-redis.git
Cloning into 'azure-voting-app-redis'...
remote: Enumerating objects: 174, done.
Receiving objects: 100% (174/174), 37.21 KiB | 3.72 MiB/s, done.

Resolving deltas: 100% (78/78), done.

C:\Users\administrator>cd azure-voting-app-redis

C:\Users\administrator\azure-voting-app-redis>ls
'ls' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator\azure-voting-app-redis>dir
 Volume in drive C is Windows
 Volume Serial Number is D883-8C59

 Directory of C:\Users\administrator\azure-voting-app-redis

11/15/2022  07:35 AM    <DIR>          .
11/15/2022  07:35 AM    <DIR>          ..
11/15/2022  07:35 AM             1,258 .gitignore
11/15/2022  07:35 AM    <DIR>          azure-vote
11/15/2022  07:35 AM             1,613 azure-vote-all-in-one-redis.yaml
11/15/2022  07:35 AM               451 docker-compose.yaml
11/15/2022  07:35 AM    <DIR>          jenkins-tutorial
11/15/2022  07:35 AM             1,183 LICENSE
11/15/2022  07:35 AM             1,837 README.md
               5 File(s)          6,342 bytes
               4 Dir(s)  111,610,572,800 bytes free

C:\Users\administrator\azure-voting-app-redis>cd azure-vote

C:\Users\administrator\azure-voting-app-redis\azure-vote>az acr build --image azure-vote-front:v1 --registry useracr --file Dockerfile
the following arguments are required: <SOURCE_LOCATION>

Examples from AI knowledge base:
az acr build --image sample/hello-world:{{.Run.ID}} --registry MyRegistry .
Queue a local context as a Linux build, tag it, and push it to the registry.

az acr build --registry MyRegistry --file Windows.Dockerfile --platform windows https://github.com/Azure/acr-builder.git
Queue a remote GitHub context as a Windows build, tag it, and push it to the registry.

https://docs.microsoft.com/en-US/cli/azure/acr#az_acr_build
Read more about the command in reference docs

C:\Users\administrator\azure-voting-app-redis\azure-vote>az acr build --image azure-vote-front:v1 --registry useracr --file Dockerfile.
the following arguments are required: <SOURCE_LOCATION>

Examples from AI knowledge base:
az acr build --image sample/hello-world:{{.Run.ID}} --registry MyRegistry .
Queue a local context as a Linux build, tag it, and push it to the registry.

az acr build --registry MyRegistry --file Windows.Dockerfile --platform windows https://github.com/Azure/acr-builder.git
Queue a remote GitHub context as a Windows build, tag it, and push it to the registry.

https://docs.microsoft.com/en-US/cli/azure/acr#az_acr_build
Read more about the command in reference docs

C:\Users\administrator\azure-voting-app-redis\azure-vote>az acr build --image azure-vote-front:v1 --registry useracr --file Dockerfile .
Packing source code into tar to upload...
Uploading archived source code from 'C:\Users\administrator\AppData\Local\Temp\build_archive_66662f0e283d4fed8b575ead56b52767.tar.gz'...
Sending context (3.054 KiB) to registry: useracr...
Queued a build with ID: de1
Waiting for an agent...
2022/11/15 07:44:10 Downloading source code...
2022/11/15 07:44:12 Finished downloading source code
2022/11/15 07:44:12 Using acb_vol_4f12006a-0156-403f-9744-bb47d70cccb4 as the home volume
2022/11/15 07:44:12 Setting up Docker configuration...
2022/11/15 07:44:13 Successfully set up Docker configuration
2022/11/15 07:44:13 Logging in to registry: useracr.azurecr.io
2022/11/15 07:44:14 Successfully logged into useracr.azurecr.io
2022/11/15 07:44:14 Executing step ID: build. Timeout(sec): 28800, Working directory: '', Network: ''
2022/11/15 07:44:14 Scanning for dependencies...
2022/11/15 07:44:15 Successfully scanned dependencies
2022/11/15 07:44:15 Launching container with name: build
Sending build context to Docker daemon  17.41kB
Step 1/3 : FROM tiangolo/uwsgi-nginx-flask:python3.6
python3.6: Pulling from tiangolo/uwsgi-nginx-flask
9b99af5931b3: Pulling fs layer
b6013b3e77fe: Pulling fs layer
bbced17b6899: Pulling fs layer
8b609dabefa8: Pulling fs layer
50544bfef33d: Pulling fs layer
964244a92902: Pulling fs layer
ef5d3eb9cc29: Pulling fs layer
82cee9e5607e: Pulling fs layer
1d082f1c77ef: Pulling fs layer
8d6b30d0e553: Pulling fs layer
5cb0f7acfc83: Pulling fs layer
8ee2f08f531c: Pulling fs layer
28df01ee45f9: Pulling fs layer
a0f5778154c6: Pulling fs layer
cff3c850d501: Pulling fs layer
c934b2593186: Pulling fs layer
8300124e774a: Pulling fs layer
f23aab48ac49: Pulling fs layer
f042d906466d: Pulling fs layer
04c701dd371e: Pulling fs layer
a0af295700c0: Pulling fs layer
bd910a400ced: Pulling fs layer
e6fb12a5dd31: Pulling fs layer
12083324fdd0: Pulling fs layer
c65969efe73d: Pulling fs layer
37a44218b9e9: Pulling fs layer
7632bc8515f8: Pulling fs layer
ada5be935136: Pulling fs layer
98820b1efcf5: Pulling fs layer
02f2a1674bb0: Pulling fs layer
8b609dabefa8: Waiting
50544bfef33d: Waiting
964244a92902: Waiting
ef5d3eb9cc29: Waiting
82cee9e5607e: Waiting
1d082f1c77ef: Waiting
8d6b30d0e553: Waiting
5cb0f7acfc83: Waiting
8ee2f08f531c: Waiting
28df01ee45f9: Waiting
a0f5778154c6: Waiting
cff3c850d501: Waiting
c934b2593186: Waiting
8300124e774a: Waiting
f23aab48ac49: Waiting
f042d906466d: Waiting
04c701dd371e: Waiting
a0af295700c0: Waiting
bd910a400ced: Waiting
e6fb12a5dd31: Waiting
12083324fdd0: Waiting
c65969efe73d: Waiting
37a44218b9e9: Waiting
7632bc8515f8: Waiting
ada5be935136: Waiting
98820b1efcf5: Waiting
02f2a1674bb0: Waiting
bbced17b6899: Verifying Checksum
bbced17b6899: Download complete
b6013b3e77fe: Verifying Checksum
b6013b3e77fe: Download complete
9b99af5931b3: Verifying Checksum
9b99af5931b3: Download complete
964244a92902: Verifying Checksum
964244a92902: Download complete
8b609dabefa8: Verifying Checksum
8b609dabefa8: Download complete
82cee9e5607e: Verifying Checksum
82cee9e5607e: Download complete
ef5d3eb9cc29: Verifying Checksum
ef5d3eb9cc29: Download complete
1d082f1c77ef: Verifying Checksum
1d082f1c77ef: Download complete
8d6b30d0e553: Verifying Checksum
8d6b30d0e553: Download complete
50544bfef33d: Download complete
5cb0f7acfc83: Verifying Checksum
5cb0f7acfc83: Download complete
8ee2f08f531c: Verifying Checksum
8ee2f08f531c: Download complete
28df01ee45f9: Verifying Checksum
28df01ee45f9: Download complete
a0f5778154c6: Verifying Checksum
a0f5778154c6: Download complete
cff3c850d501: Verifying Checksum
cff3c850d501: Download complete
9b99af5931b3: Pull complete
c934b2593186: Verifying Checksum
c934b2593186: Download complete
8300124e774a: Verifying Checksum
8300124e774a: Download complete
f23aab48ac49: Verifying Checksum
f23aab48ac49: Download complete
f042d906466d: Verifying Checksum
f042d906466d: Download complete
b6013b3e77fe: Pull complete
04c701dd371e: Verifying Checksum
04c701dd371e: Download complete
a0af295700c0: Verifying Checksum
a0af295700c0: Download complete
bbced17b6899: Pull complete
bd910a400ced: Verifying Checksum
bd910a400ced: Download complete
8b609dabefa8: Pull complete
12083324fdd0: Verifying Checksum
12083324fdd0: Download complete
e6fb12a5dd31: Verifying Checksum
e6fb12a5dd31: Download complete
c65969efe73d: Verifying Checksum
c65969efe73d: Download complete
ada5be935136: Verifying Checksum
ada5be935136: Download complete
37a44218b9e9: Verifying Checksum
37a44218b9e9: Download complete
98820b1efcf5: Verifying Checksum
98820b1efcf5: Download complete
02f2a1674bb0: Verifying Checksum
02f2a1674bb0: Download complete
7632bc8515f8: Verifying Checksum
7632bc8515f8: Download complete
50544bfef33d: Pull complete
964244a92902: Pull complete
ef5d3eb9cc29: Pull complete
82cee9e5607e: Pull complete
1d082f1c77ef: Pull complete
8d6b30d0e553: Pull complete
5cb0f7acfc83: Pull complete
8ee2f08f531c: Pull complete
28df01ee45f9: Pull complete
a0f5778154c6: Pull complete
cff3c850d501: Pull complete
c934b2593186: Pull complete
8300124e774a: Pull complete
f23aab48ac49: Pull complete
f042d906466d: Pull complete
04c701dd371e: Pull complete
a0af295700c0: Pull complete
bd910a400ced: Pull complete
e6fb12a5dd31: Pull complete
12083324fdd0: Pull complete
c65969efe73d: Pull complete
37a44218b9e9: Pull complete
7632bc8515f8: Pull complete
ada5be935136: Pull complete
98820b1efcf5: Pull complete
02f2a1674bb0: Pull complete
Digest: sha256:62e3a1af69245b23a6e9386354d8878f7880a9ee6a8aa3ab161a665ed72712f2
Status: Downloaded newer image for tiangolo/uwsgi-nginx-flask:python3.6
 ---> 3d1535ffb932
Step 2/3 : RUN pip install redis
 ---> Running in 206c4501bc76
Collecting redis
  Downloading redis-4.3.4-py3-none-any.whl (246 kB)
Collecting async-timeout>=4.0.2
  Downloading async_timeout-4.0.2-py3-none-any.whl (5.8 kB)
Collecting deprecated>=1.2.3
  Downloading Deprecated-1.2.13-py2.py3-none-any.whl (9.6 kB)
Requirement already satisfied: importlib-metadata>=1.0 in /usr/local/lib/python3.6/site-packages (from redis) (4.8.3)
Requirement already satisfied: typing-extensions in /usr/local/lib/python3.6/site-packages (from redis) (4.1.1)
Collecting packaging>=20.4
  Downloading packaging-21.3-py3-none-any.whl (40 kB)
Collecting wrapt<2,>=1.10
  Downloading wrapt-1.14.1-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl (74 kB)
Requirement already satisfied: zipp>=0.5 in /usr/local/lib/python3.6/site-packages (from importlib-metadata>=1.0->redis) (3.6.0)
Collecting pyparsing!=3.0.5,>=2.0.2
  Downloading pyparsing-3.0.9-py3-none-any.whl (98 kB)
Installing collected packages: wrapt, pyparsing, packaging, deprecated, async-timeout, redis
Successfully installed async-timeout-4.0.2 deprecated-1.2.13 packaging-21.3 pyparsing-3.0.9 redis-4.3.4 wrapt-1.14.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
WARNING: You are using pip version 21.2.4; however, version 21.3.1 is available.
You should consider upgrading via the '/usr/local/bin/python -m pip install --upgrade pip' command.
Removing intermediate container 206c4501bc76
 ---> fedc5abb1858
Step 3/3 : ADD /azure-vote /app
 ---> 946ea50a4b95
Successfully built 946ea50a4b95
Successfully tagged useracr.azurecr.io/azure-vote-front:v1
2022/11/15 07:44:47 Successfully executed container: build
2022/11/15 07:44:47 Executing step ID: push. Timeout(sec): 3600, Working directory: '', Network: ''
2022/11/15 07:44:47 Pushing image: useracr.azurecr.io/azure-vote-front:v1, attempt 1
The push refers to repository [useracr.azurecr.io/azure-vote-front]
ff203c26422c: Preparing
c19f83192103: Preparing
2f2a3bb888a7: Preparing
bb2201fcd27e: Preparing
338492f172f6: Preparing
67797a1e6e78: Preparing
d948a98fbcb6: Preparing
9d6c24f125d5: Preparing
0bde68876078: Preparing
32976d565b11: Preparing
6336662b3701: Preparing
2846428d74df: Preparing
57918a7ef404: Preparing
ef99f7732e83: Preparing
5f311633fa9d: Preparing
2799eb392352: Preparing
fd24d7c2f22c: Preparing
718422e1ef02: Preparing
466a0dfac1a6: Preparing
c821fb5c6e37: Preparing
f9d8e8b3b0e2: Preparing
5e3d9071e846: Preparing
947aa65df9c8: Preparing
2d3ee6e6c217: Preparing
cd408f7623af: Preparing
0b6b0cacd4b2: Preparing
bbbb6b6cf09b: Preparing
6ca8686315b6: Preparing
9c2b7d0c8e89: Preparing
79a45871588c: Preparing
bdfff16e8653: Preparing
dc4f2875405c: Preparing
67797a1e6e78: Waiting
d948a98fbcb6: Waiting
9d6c24f125d5: Waiting
0bde68876078: Waiting
32976d565b11: Waiting
6336662b3701: Waiting
2846428d74df: Waiting
57918a7ef404: Waiting
ef99f7732e83: Waiting
5f311633fa9d: Waiting
2799eb392352: Waiting
fd24d7c2f22c: Waiting
718422e1ef02: Waiting
466a0dfac1a6: Waiting
c821fb5c6e37: Waiting
f9d8e8b3b0e2: Waiting
5e3d9071e846: Waiting
947aa65df9c8: Waiting
2d3ee6e6c217: Waiting
cd408f7623af: Waiting
0b6b0cacd4b2: Waiting
bbbb6b6cf09b: Waiting
6ca8686315b6: Waiting
9c2b7d0c8e89: Waiting
79a45871588c: Waiting
bdfff16e8653: Waiting
dc4f2875405c: Waiting
ff203c26422c: Pushed
338492f172f6: Pushed
bb2201fcd27e: Pushed
2f2a3bb888a7: Pushed
67797a1e6e78: Pushed
c19f83192103: Pushed
0bde68876078: Pushed
9d6c24f125d5: Pushed
d948a98fbcb6: Pushed
32976d565b11: Pushed
6336662b3701: Pushed
2846428d74df: Pushed
57918a7ef404: Pushed
ef99f7732e83: Pushed
5f311633fa9d: Pushed
2799eb392352: Pushed
718422e1ef02: Pushed
fd24d7c2f22c: Pushed
f9d8e8b3b0e2: Pushed
466a0dfac1a6: Pushed
c821fb5c6e37: Pushed
947aa65df9c8: Pushed
cd408f7623af: Pushed
5e3d9071e846: Pushed
2d3ee6e6c217: Pushed
79a45871588c: Pushed
0b6b0cacd4b2: Pushed
bbbb6b6cf09b: Pushed
bdfff16e8653: Pushed
9c2b7d0c8e89: Pushed
dc4f2875405c: Pushed
6ca8686315b6: Pushed
v1: digest: sha256:173f440af3f296a069d06624f962843323b63fc81444a944b6e8b1493ccc3a42 size: 7004
2022/11/15 07:45:30 Successfully pushed image: useracr.azurecr.io/azure-vote-front:v1
2022/11/15 07:45:30 Step ID: build marked as successful (elapsed time in seconds: 33.242286)
2022/11/15 07:45:30 Populating digests for step ID: build...
2022/11/15 07:45:31 Successfully populated digests for step ID: build
2022/11/15 07:45:31 Step ID: push marked as successful (elapsed time in seconds: 42.149190)
2022/11/15 07:45:31 The following dependencies were found:
2022/11/15 07:45:31
- image:
    registry: useracr.azurecr.io
    repository: azure-vote-front
    tag: v1
    digest: sha256:173f440af3f296a069d06624f962843323b63fc81444a944b6e8b1493ccc3a42
  runtime-dependency:
    registry: registry.hub.docker.com
    repository: tiangolo/uwsgi-nginx-flask
    tag: python3.6
    digest: sha256:62e3a1af69245b23a6e9386354d8878f7880a9ee6a8aa3ab161a665ed72712f2
  git: {}

Run ID: de1 was successful after 1m22s

C:\Users\administrator\azure-voting-app-redis\azure-vote>
C:\Users\administrator\azure-voting-app-redis\azure-vote>dir
 Volume in drive C is Windows
 Volume Serial Number is D883-8C59

 Directory of C:\Users\administrator\azure-voting-app-redis\azure-vote

11/15/2022  08:05 AM    <DIR>          .
11/15/2022  07:35 AM    <DIR>          ..
11/15/2022  07:35 AM               166 app_init.supervisord.conf
11/15/2022  07:35 AM    <DIR>          azure-vote
11/15/2022  07:35 AM                88 Dockerfile
11/15/2022  07:35 AM               711 Dockerfile-for-app-service
11/15/2022  08:03 AM        45,612,032 helm.exe
11/15/2022  07:35 AM               348 sshd_config
               5 File(s)     45,613,345 bytes
               3 Dir(s)  111,492,878,336 bytes free

C:\Users\administrator\azure-voting-app-redis\azure-vote>helm
The Kubernetes package manager

Common actions for Helm:

- helm search:    search for charts
- helm pull:      download a chart to your local directory to view
- helm install:   upload the chart to Kubernetes
- helm list:      list releases of charts

Environment variables:

| Name                               | Description                                                                                       |
|------------------------------------|---------------------------------------------------------------------------------------------------|
| $HELM_CACHE_HOME                   | set an alternative location for storing cached files.                                             |
| $HELM_CONFIG_HOME                  | set an alternative location for storing Helm configuration.                                       |
| $HELM_DATA_HOME                    | set an alternative location for storing Helm data.                                                |
| $HELM_DEBUG                        | indicate whether or not Helm is running in Debug mode                                             |
| $HELM_DRIVER                       | set the backend storage driver. Values are: configmap, secret, memory, sql.                       |
| $HELM_DRIVER_SQL_CONNECTION_STRING | set the connection string the SQL storage driver should use.                                      |
| $HELM_MAX_HISTORY                  | set the maximum number of helm release history.                                                   |
| $HELM_NAMESPACE                    | set the namespace used for the helm operations.                                                   |
| $HELM_NO_PLUGINS                   | disable plugins. Set HELM_NO_PLUGINS=1 to disable plugins.                                        |
| $HELM_PLUGINS                      | set the path to the plugins directory                                                             |
| $HELM_REGISTRY_CONFIG              | set the path to the registry config file.                                                         |
| $HELM_REPOSITORY_CACHE             | set the path to the repository cache directory                                                    |
| $HELM_REPOSITORY_CONFIG            | set the path to the repositories file.                                                            |
| $KUBECONFIG                        | set an alternative Kubernetes configuration file (default "~/.kube/config")                       |
| $HELM_KUBEAPISERVER                | set the Kubernetes API Server Endpoint for authentication                                         |
| $HELM_KUBECAFILE                   | set the Kubernetes certificate authority file.                                                    |
| $HELM_KUBEASGROUPS                 | set the Groups to use for impersonation using a comma-separated list.                             |
| $HELM_KUBEASUSER                   | set the Username to impersonate for the operation.                                                |
| $HELM_KUBECONTEXT                  | set the name of the kubeconfig context.                                                           |
| $HELM_KUBETOKEN                    | set the Bearer KubeToken used for authentication.                                                 |
| $HELM_KUBEINSECURE_SKIP_TLS_VERIFY | indicate if the Kubernetes API server's certificate validation should be skipped (insecure)       |
| $HELM_KUBETLS_SERVER_NAME          | set the server name used to validate the Kubernetes API server certificate                        |
| $HELM_BURST_LIMIT                  | set the default burst limit in the case the server contains many CRDs (default 100, -1 to disable)|

Helm stores cache, configuration, and data based on the following configuration order:

- If a HELM_*_HOME environment variable is set, it will be used
- Otherwise, on systems supporting the XDG base directory specification, the XDG variables will be used
- When no other location is set a default location will be used based on the operating system

By default, the default directories depend on the Operating System. The defaults are listed below:

| Operating System | Cache Path                | Configuration Path             | Data Path               |
|------------------|---------------------------|--------------------------------|-------------------------|
| Linux            | $HOME/.cache/helm         | $HOME/.config/helm             | $HOME/.local/share/helm |
| macOS            | $HOME/Library/Caches/helm | $HOME/Library/Preferences/helm | $HOME/Library/helm      |
| Windows          | %TEMP%\helm               | %APPDATA%\helm                 | %APPDATA%\helm          |

Usage:
  helm [command]

Available Commands:
  completion  generate autocompletion scripts for the specified shell
  create      create a new chart with the given name
  dependency  manage a chart's dependencies
  env         helm client environment information
  get         download extended information of a named release
  help        Help about any command
  history     fetch release history
  install     install a chart
  lint        examine a chart for possible issues
  list        list releases
  package     package a chart directory into a chart archive
  plugin      install, list, or uninstall Helm plugins
  pull        download a chart from a repository and (optionally) unpack it in local directory
  push        push a chart to remote
  registry    login to or logout from a registry
  repo        add, list, remove, update, and index chart repositories
  rollback    roll back a release to a previous revision
  search      search for a keyword in charts
  show        show information of a chart
  status      display the status of the named release
  template    locally render templates
  test        run tests for a release
  uninstall   uninstall a release
  upgrade     upgrade a release
  verify      verify that a chart at the given path has been signed and is valid
  version     print the client version information

Flags:
      --burst-limit int                 client-side default throttling limit (default 100)
      --debug                           enable verbose output
  -h, --help                            help for helm
      --kube-apiserver string           the address and the port for the Kubernetes API server
      --kube-as-group stringArray       group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --kube-as-user string             username to impersonate for the operation
      --kube-ca-file string             the certificate authority file for the Kubernetes API server connection
      --kube-context string             name of the kubeconfig context to use
      --kube-insecure-skip-tls-verify   if true, the Kubernetes API server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kube-tls-server-name string     server name to use for Kubernetes API server certificate validation. If it is not provided, the hostname used to contact the server is used
      --kube-token string               bearer token used for authentication
      --kubeconfig string               path to the kubeconfig file
  -n, --namespace string                namespace scope for this request
      --registry-config string          path to the registry config file (default "C:\\Users\\administrator\\AppData\\Roaming\\helm\\registry\\config.json")
      --repository-cache string         path to the file containing cached repository indexes (default "C:\\Users\\administrator\\AppData\\Local\\Temp\\helm\\repository")
      --repository-config string        path to the file containing repository names and URLs (default "C:\\Users\\administrator\\AppData\\Roaming\\helm\\repositories.yaml")

Use "helm [command] --help" for more information about a command.

C:\Users\administrator\azure-voting-app-redis\azure-vote>dir
 Volume in drive C is Windows
 Volume Serial Number is D883-8C59

 Directory of C:\Users\administrator\azure-voting-app-redis\azure-vote

11/15/2022  08:10 AM    <DIR>          .
11/15/2022  07:35 AM    <DIR>          ..
11/15/2022  07:35 AM               166 app_init.supervisord.conf
11/15/2022  07:35 AM    <DIR>          azure-vote
11/15/2022  08:10 AM               375 azure-vote-front.yml.txt
11/15/2022  07:35 AM                88 Dockerfile
11/15/2022  07:35 AM               711 Dockerfile-for-app-service
11/15/2022  08:03 AM        45,612,032 helm.exe
11/15/2022  07:35 AM               348 sshd_config
               6 File(s)     45,613,720 bytes
               3 Dir(s)  111,500,533,760 bytes free

C:\Users\administrator\azure-voting-app-redis\azure-vote>copy azure-vote-front.yml.txt azure-vote-front.yml
        1 file(s) copied.

C:\Users\administrator\azure-voting-app-redis\azure-vote>dir
 Volume in drive C is Windows
 Volume Serial Number is D883-8C59

 Directory of C:\Users\administrator\azure-voting-app-redis\azure-vote

11/15/2022  08:11 AM    <DIR>          .
11/15/2022  07:35 AM    <DIR>          ..
11/15/2022  07:35 AM               166 app_init.supervisord.conf
11/15/2022  07:35 AM    <DIR>          azure-vote
11/15/2022  08:10 AM               375 azure-vote-front.yml
11/15/2022  08:10 AM               375 azure-vote-front.yml.txt
11/15/2022  07:35 AM                88 Dockerfile
11/15/2022  07:35 AM               711 Dockerfile-for-app-service
11/15/2022  08:03 AM        45,612,032 helm.exe
11/15/2022  07:35 AM               348 sshd_config
               7 File(s)     45,614,095 bytes
               3 Dir(s)  111,499,038,720 bytes free

C:\Users\administrator\azure-voting-app-redis\azure-vote>helm dependency update azure-vote-front.yml
Error: only unpacked charts can be updated

C:\Users\administrator\azure-voting-app-redis\azure-vote>helm create azure-vote-front
Creating azure-vote-front

C:\Users\administrator\azure-voting-app-redis\azure-vote>helm dependency update azure-vote-front

C:\Users\administrator\azure-voting-app-redis\azure-vote>dir
 Volume in drive C is Windows
 Volume Serial Number is D883-8C59

 Directory of C:\Users\administrator\azure-voting-app-redis\azure-vote

11/15/2022  08:15 AM    <DIR>          .
11/15/2022  07:35 AM    <DIR>          ..
11/15/2022  07:35 AM               166 app_init.supervisord.conf
11/15/2022  07:35 AM    <DIR>          azure-vote
11/15/2022  08:15 AM    <DIR>          azure-vote-front
11/15/2022  08:10 AM               375 azure-vote-front.yml
11/15/2022  08:10 AM               375 azure-vote-front.yml.txt
11/15/2022  07:35 AM                88 Dockerfile
11/15/2022  07:35 AM               711 Dockerfile-for-app-service
11/15/2022  08:03 AM        45,612,032 helm.exe
11/15/2022  07:35 AM               348 sshd_config
               7 File(s)     45,614,095 bytes
               4 Dir(s)  111,498,145,792 bytes free

C:\Users\administrator\azure-voting-app-redis\azure-vote>cd azure-vote-front

C:\Users\administrator\azure-voting-app-redis\azure-vote\azure-vote-front>notepad values.yaml

C:\Users\administrator\azure-voting-app-redis\azure-vote\azure-vote-front>helm install azure-vote-front azure-vote front/
'helm' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator\azure-voting-app-redis\azure-vote\azure-vote-front>helm install azure-vote-front azure-vote-front/
'helm' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator\azure-voting-app-redis\azure-vote\azure-vote-front>cd ..

C:\Users\administrator\azure-voting-app-redis\azure-vote>helm install azure-vote-front azure-vote-front/
NAME: azure-vote-front
LAST DEPLOYED: Tue Nov 15 08:25:29 2022
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get the application URL by running these commands:
     NOTE: It may take a few minutes for the LoadBalancer IP to be available.
           You can watch the status of by running 'kubectl get --namespace default svc -w azure-vote-front'
  export SERVICE_IP=$(kubectl get svc --namespace default azure-vote-front --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")
  echo http://$SERVICE_IP:80

C:\Users\administrator\azure-voting-app-redis\azure-vote>az aks install-cli
The detected arch is intel64 family 6 model 63 stepping 2, genuineintel, would be treated as amd64, which may not match the actual situation due to translation and other reasons. If there is any problem, please download the appropriate binary by yourself.
Downloading client to "C:\Users\administrator\.azure-kubectl\kubectl.exe" from "https://storage.googleapis.com/kubernetes-release/release/v1.25.4/bin/windows/amd64/kubectl.exe"
Please add "C:\Users\administrator\.azure-kubectl" to your search PATH so the `kubectl.exe` can be found. 2 options:
    1. Run "set PATH=%PATH%;C:\Users\administrator\.azure-kubectl" or "$env:path += ';C:\Users\administrator\.azure-kubectl'" for PowerShell. This is good for the current command session.
    2. Update system PATH environment variable by following "Control Panel->System->Advanced->Environment Variables", and re-open the command window. You only need to do it once
The detected arch is intel64 family 6 model 63 stepping 2, genuineintel, would be treated as amd64, which may not match the actual situation due to translation and other reasons. If there is any problem, please download the appropriate binary by yourself.
Downloading client to "C:\Users\administrator\AppData\Local\Temp\tmp932im9bn\kubelogin.zip" from "https://github.com/Azure/kubelogin/releases/download/v0.0.21/kubelogin.zip"
Please add "C:\Users\administrator\.azure-kubelogin" to your search PATH so the `kubelogin.exe` can be found. 2 options:
    1. Run "set PATH=%PATH%;C:\Users\administrator\.azure-kubelogin" or "$env:path += 'C:\Users\administrator\.azure-kubelogin'" for PowerShell. This is good for the current command session.
    2. Update system PATH environment variable by following "Control Panel->System->Advanced->Environment Variables", and re-open the command window. You only need to do it once

C:\Users\administrator\azure-voting-app-redis\azure-vote>