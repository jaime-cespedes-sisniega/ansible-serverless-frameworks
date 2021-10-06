# OpenWhisk

In order to set up OpenWhisk on top of Kubernetes, it is mandatory to define a manifest to configure different parameters. In this case a file called `cluster.yaml` is provided inside `cluster` folder. This file acts as a template which has to be completed, so it is not ready to use.

Different parameters that can be included or modified on `cluster.yaml` can be found at https://github.com/apache/openwhisk-deploy-kube/blob/master/helm/openwhisk/values.yaml.

Once the `cluster.yaml` file is ready, the playbooks can be executed.

   ```sh
   ansible-playbook openwhisk/add-openwhisk -e 'ansible_python_interpreter="$(which python3)"'
   ```

To be able to use OpenWhisk, the OpenWhisk CLI has to be installed following the instructions at https://openwhisk.apache.org/documentation.html#wsk-cli. In addition, the settings `--apihost` and the `--auth` have to be configured.

   ```sh
   wsk property set --apihost <PUBLIC-NODE-IP-K8S-CLUSTER>:<API-HOST-PORT>
   wsk property set --auth 23bc46b1-71f6-4ed5-8c54-816aa4f8c502:123zO3xZCLrMN6v2BKK1dXYFpXlPkccOFqm12CdAsMgRU4VrNZ9lyGVCGuMDGIwP
   ```

More information about deploying OpenWhisk on top of Kubernetes or configuring OpenWhisk CLI can be found at https://github.com/apache/openwhisk-deploy-kube#deploying-openwhisk