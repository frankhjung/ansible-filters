# Ansible Filters: How do they work?

## How do Jinja2 filters work?

A introductory presentation (~20 minutes) on [Ansible
filters](http://docs.ansible.com/ansible/playbooks_filters.html).

## Topics

- what are filters
- piping
- read the source
- debugging
- roll your own

## Notes

To create the logo montage I used the
[ImageMagick](https://www.imagemagick.org/) command:

```
montage ansible-logo.png thelinuxfoundation-logo.png acm-logo.png themarlogroup-logo.png -geometry 48x48 logos.png
```

### Where do I use them?

```
  - name: set pages file permissions
    command: find "{{ ansible_user_dir }}/{{ wiki_dir }}/pages" -type f -exec chmod -c 0664 {} \;
    register: has_changed
    changed_when: not (has_changed.stdout | trim == '')



```

* https://blog.codecentric.de/en/2014/08/jinja2-better-ansible-playbooks-templates/


## References

- [Ansible](http://docs.ansible.com/ansible/index.html)
- [Ansible Filters](http://docs.ansible.com/ansible/playbooks_filters.html)
- [Jinja2](http://jinja.pocoo.org/docs/2.9/api/)
- [Beamer](https://www.sharelatex.com/learn/Beamer)
