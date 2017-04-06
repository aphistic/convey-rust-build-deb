# aphistic/convey-rust-build-deb

This image is a build task for [Convey](https://bitbucket.org/rw_grim/convey/) to enable
building Debian packages for a [Rust](https://www.rust-lang.org/).

## Example

    tasks:
      build-debs:
        image: aphistic/convey-rust-build-deb:latest
        environment:
          - DEBIAN_PATH=pkg/debian
          - DEB_OUTPUT=debs

## Environment Variables

### DEBIAN_PATH

The path of the `debian` directory to use within the workspace. It will be symlinked to the
root of the workspace so packages that put it in something like `pkg/debian` will work.

### DEB_OUTPUT

The path in the workspace where the files built by the Debian packaging will be put.
