# Ansible serverless frameworks on Kubernetes

Repository which contains Ansible playbooks to deploy differents serverless frameworks on top of Kubernetes.

Note: Each of the frameworks uses the simplest configuration to reduce complexity as much as possible.

Available serverless frameworks:

- Knative v0.25.0.
  - Serving.
  - Eventing.
- OpenWhisk.

## Previous requirements

It is assumed that a Kubernetes cluster exists and that it can be accessed using kubectl.

## Usage

Create virtualenv and install requirements.txt.
   ```sh
   make all
   ```
Activate virtualenv.
   ```sh
   source .venv/bin/activate
   ```
Run desired playbook.
   ```sh
   ansible-playbook <framework>/<playbook> -e 'ansible_python_interpreter="$(which python3)"'
   ```
