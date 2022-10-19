# dotfile- and environment

### overview
a dotfile/environment automation influenced by [greg hurrell](https://github.com/wincent/wincent) which provides me a development environment just the way i like w/o having to remember too much.

### pre-requisite
- a reasonable version of `git`
- the 'hack' font within `tmp`

### clone
```shell
$ git clone --recursive https://github.com/servicelevel/dot
```

##### option
in case [ansible](https://www.ansible.com/) is not available, it can be installed via
```shell
$ pip install ansible
```

this however too is optional, as the repository does include [ansible](https://www.ansible.com/) as well as a fallback.

### usage
tonce the `.gitconfig` infromation in `roles/dot/files/` is correct (name and email), to execute the entrire playbook
```shell
$ ./environment
```

to execute a single task only (note internal dependencies)
```shell
# ALTERNATIVE
$ ./environment dot
```

to get a list of available options and tasks
```shell
$ ./environment --help
```
