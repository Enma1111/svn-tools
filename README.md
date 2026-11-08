# svn-tools

Minimal container image with the Subversion command line tools (`svn`, `svnlook`, …),
built on Alpine Linux. Made for CI/CD and Kubernetes, for example as a step image in Tekton tasks.

> **Unofficial.** This project is not affiliated with or endorsed by the Apache Software Foundation.
> Apache and Subversion are trademarks of the Apache Software Foundation.

## Image

```
ghcr.io/enma1111/svn-tools
```

| Tag        | Meaning                                         |
|------------|-------------------------------------------------|
| `latest`   | Newest build, for development only              |
| `1.14`     | Latest build with this Subversion minor version |
| `1.14.5`   | Specific Subversion version                     |
| `20261108` | Build date, never changes. Best for pinning     |

## Usage

```bash
docker run --rm ghcr.io/enma1111/svn-tools:1.14 svn --version
docker run --rm -v "$PWD:/workspace" ghcr.io/enma1111/svn-tools:1.14 \
  svn checkout https://example.org/repo/trunk .
```

In Tekton, use it as the `image:` of a step. In production, pin a date tag or a digest instead of `latest`.

## Security and updates

The image is rebuilt every week from the current Alpine base image, so security fixes
arrive without any change in this repository. Dependabot keeps the Alpine version and
the GitHub Actions up to date.

## Details

- Runs as a non-root user (UID 1000)
- Working directory: `/workspace`
- No entrypoint, so the command is whatever you pass

## License

Apache-2.0