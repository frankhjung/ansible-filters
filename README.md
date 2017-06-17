# Ansible Filters: How do they work?

## How do Jinja2 filters work?

A introductory presentation (~20 minutes) on [Ansible
filters](http://docs.ansible.com/ansible/playbooks_filters.html).

## Topics

- what are filters
- typical use cases
- debugging
- roll your own

## Examples

Run filter examples using:

```bash
ansible-playbook examples.yaml
ansible-playbook examples.yaml --list-tags
ansible-playbook examples.yaml --tag create
ansible-playbook examples.yaml --tag subset
ansible-playbook examples.yaml --tag manipulate
```

## Where do I use them?

```
  - name: set pages file permissions
    command: find "{{ ansible_user_dir }}/{{ wiki_dir }}/pages" -type f -exec chmod -c 0664 {} \;
    register: has_changed
    changed_when: not (has_changed.stdout | trim == '')
```

## Notes

- [Ansible](http://docs.ansible.com/ansible/index.html)
- [Ansible Filters](http://docs.ansible.com/ansible/playbooks_filters.html)
- [Jinja2](http://jinja.pocoo.org/docs/2.9/api/)
- [Jinja2 Better Ansible Playbooks Templates](https://blog.codecentric.de/en/2014/08/jinja2-better-ansible-playbooks-templates/)

Presentation produced using Beamer LaTeX:

- [Beamer](https://www.sharelatex.com/learn/Beamer)

Logo created from montage of images in figures directory using
[ImageMagick](https://www.imagemagick.org/):

```bash
montage ansible-logo.png thelinuxfoundation-logo.png acm-logo.png themarlogroup-logo.png -geometry 48x48 logos.png
```

