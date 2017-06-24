# Ansible Filters: a short introduction

A introductory presentation (~20 minutes) on [Ansible
filters](http://docs.ansible.com/ansible/playbooks_filters.html).

## Run the Example Playbook

Run specific filter examples using associated tags:

```bash
ansible-playbook filter-examples.yaml --list-tags

ansible-playbook filter-examples.yaml --tag create
ansible-playbook filter-examples.yaml --tag subset
ansible-playbook filter-examples.yaml --tag manipulate
ansible-playbook filter-examples.yaml --tag other
ansible-playbook filter-examples.yaml --tag regex

ansible-playbook filter-examples.yaml --tag test
```

## Pipe or Method Call?

Jinja filters can be invoked using a method call:

```
- debug:
    msg: "{{ martin.name.upper() }}" # jinja filter
```

```
TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "MARTIN D'VLOPER"
}
```

This does not seem to work for Ansible filters, instead pipe:

```
- debug:
    msg: "{{ martin.name | hash }}" # ansible filter
```

```
TASK [debug] *******************************************************************
ok: [localhost] => {
    "msg": "77844c7c15c84f66aa6ada7c6e2761f4aecd52c0"
}
```



## Notes

- [Ansible](http://docs.ansible.com/ansible/index.html)
- [Ansible Filters](http://docs.ansible.com/ansible/playbooks_filters.html)
- [Jinja2](http://jinja.pocoo.org/docs/2.9/api/)
- [Jinja2 Better Ansible Playbooks Templates](https://blog.codecentric.de/en/2014/08/jinja2-better-ansible-playbooks-templates/)

Presentation produced using Beamer LaTeX:

- [Beamer](https://www.sharelatex.com/learn/Beamer)
- [Transitions](https://math-linux.com/latex-26/article/how-to-make-a-presentation-with-latex-introduction-to-beamer)

Logo created from montage of images in figures directory using
[ImageMagick](https://www.imagemagick.org/):

```bash
montage ansible-logo.png thelinuxfoundation-logo.png acm-logo.png themarlogroup-logo.png -geometry 48x48 logos.png
```

