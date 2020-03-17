Fork of [fgorbat/docker-esniper](https://github.com/fgorbat/docker-esniper), changed to work with mounted config files instead of command line arguments.

## Containerized esniper for sniping eBay auctions.

- based on the latest (June-2018) esniper version 2.35.0

## Quick Start

The quickest way to get the service up is to use Docker.

To run it, just type the following command mounting `/config` to wherever you store your `esniper.conf` and `auction` file.

Documentation and example configuration files can be found on the [esniper manual page](http://esniper.sourceforge.net/esniper_man.html).

```sh
docker run --rm -v /local/config:/config gu5taf/docker-esniper
```

#### Want to know how to install docker on Windows, MacOS or Linux?
* Use Docker official [installation instuctions](https://docs.docker.com/engine/installation/)

#### More details about auction sniping practice:
* Auction sniping practice [wiki](https://en.wikipedia.org/wiki/Auction_sniping)

#### For FAQs and more info about esniper visit home page:
* Home Page [esniper](http://esniper.sourceforge.net/index.html)
