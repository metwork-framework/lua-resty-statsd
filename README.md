# lua-resty-statsd

## Status

Experimental

## What is it ?

This is a fork of [lua-resty-stats](http://github.com/bakins/lua-resty-statsd).

The referenced project does not work at all for us but is built on good
ideas. We plan to maintain this fork with some modifications for our use case.

But we are waiting for [license clarification](https://github.com/bakins/lua-resty-statsd/issues/2)
for the moment.

## Usage

```
init_worker_by_lua_block {
  statsd = require("resty.statsd").new({host="127.0.0.1", port=12345, delay=100})
}

server {
  log_by_lua_block{
    statsd.count(statsd, "requests", 1, 1, {tag1="foo1", tag2="foo2"})
  }
}
```
