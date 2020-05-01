# GitHub Action for Ansible

This action runs an ansible playbook

## Usage

1. Configure the action with the 1 required environment variable ANSIBLE_SSH_KEY
2. Pass the command to execute

Here's an example:

```yaml
      - name: Checkout
        uses: actions/checkout@v2
      - name: Run playbook
        uses: jawher/action-ansible@2.9.7
        env:
          ANSIBLE_SSH_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
        with:
          args: ansible-playbook -i deploy/inventories/ci.yml deploy/playbook.yml
```


### Secrets

- `SSH_PRIVATE_KEY` – **Required**: an SSH private key, which will be written in `~/.ssh.id_rsa`.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
