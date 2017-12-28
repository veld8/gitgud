# Git Gud *or git rekt*

![Cover image](https://imgur.com/PNT7Wk6.jpg)

A GitHub clone written in Elixir with almost no-dependencies.

* [x] HTTP and SSH support.
* [x] Single-page application with REST API backend.
* [x] User authentication and permissions.
* [x] Customizable Webhooks.
* [x] Native implementation of Git commands.
* [ ] Customizable Git storage backend.
* [ ] Issue tracker, code review, continuous integration, ...

## Install dependencies

First, ensure you have ~~Git and~~ the [libgit2](https://libgit2.github.com) libraries installed on your system:

#### OSX
```bash
brew install libgit2
```

#### Ubuntu
```bash
sudo apt-get install libgit2-dev
```

~~The former is necessary in temporarily because `git-upload-pack` and `git-receive-pack` server side commands use Erlang ports to execute the correspondent binaries. In future versions, those functions will be implemented natively and the dependency to Git will not be required anymore.~~

## Generate SSH public keys

In order to provide SSH as a Git transport protocol, you must generate a valid SSH public key for the server:

```bash
ssh-keygen -t rsa -f /tmp/ssh-keys/ssh_host_rsa_key
```

In your `config/config.exs` file, add following entry:

```elixir
config :gitgud, :ssh_key_dir: "/tmp/ssh-keys"
```
