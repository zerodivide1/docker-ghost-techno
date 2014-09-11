docker-ghost-techno
==============

Docker container for Ghost with the Techno as the default theme

## Dependencies

* Docker


## Building

1. `https://github.com/zerodivide1/docker-ghost-techno.git`
2. `cd docker-ghost-techno`
3. `docker build -t <username>/<containername>:<tag> .`

## Starting Container

1. Create a directory for your blog data:
  ```
  $ mkdir -p data/content/{data,images}
  ```
2. Create a `config.js` file in the `./data` directory ([download this file](https://github.com/TryGhost/Ghost/blob/master/config.example.js), rename & configure accordingly)
3. Create a `theme-config.js` file in the `./data` directory ([download this file](https://github.com/zerodivide1/ghost-theme-techno/blob/master/config.js), rename & configure accordingly)
4. Start the container:
  ```
  $ docker run -d -p 80:2368 -v $(pwd)/data:/ghost-override <container name>
  ```
  Substitute `<container name>` with either the name of a locally-built container from scratch or `zerodivide1/docker-ghost-techno`
5. Use your browser to go to `localhost`

## Contributors

Pull requests always welcome! You can also hit me up on Twitter [@zero_divide_1](https://twitter.com/zero_divide_1).

## License

See [LICENSE](LICENSE) for more information.
