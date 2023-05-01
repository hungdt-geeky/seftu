# SEFTU

SEFTU is self-development project

## Code Status

## Documentation

## Platform

- Ubuntu
- Ruby 3.2.2 or higher
- Ruby on Rails 7.0.3
- Mysql 8.0
- ...

## Installation (Auto)

## Installation (Ubuntu 22.04)
### Clone the repository (master)

```shell
git clone git@github.com:damhung0113/seftu.git
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.2.2`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 3.2.2
```
Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
cd seftu
cp -n config/samples/*.{yml,rb} config/
bundle install --without development test
```

### Start web app
```shell
rails server
```

### Migration

```shell
rails db:drop
rails db:create db:migrate db:seed
```
