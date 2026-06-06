<a id="readme-top"></a>


<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/platypod/cyber-chef">
    <img src="https://github.com/platypod/stack/raw/main/doc/images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">cyber-chef</h3>

  <p align="center">
    Multi-arch Docker image for <a href="https://github.com/gchq/CyberChef">CyberChef</a>,
    the Cyber Swiss Army Knife — a web app for encryption, encoding, compression and data analysis.
    <br />
    <a href="https://github.com/platypod/cyber-chef/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/platypod/cyber-chef/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#build">Build</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

A multi-arch (`linux/amd64` + `linux/arm64`) Docker image for
[gchq/CyberChef](https://github.com/gchq/CyberChef).
Built from source with Node.js, served as a static site via nginx.

Images are published to [ghcr.io/platypod/cyber-chef](https://ghcr.io/platypod/cyber-chef).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) with [buildx](https://docs.docker.com/buildx/working-with-buildx/) support
- Authenticated to GHCR:
  ```sh
  echo $GITHUB_TOKEN | docker login ghcr.io -u <username> --password-stdin
  ```

### Build

```sh
make build                      # build v11.0.0 + latest, push to GHCR
make build VERSION=v10.19.4     # build a specific upstream tag
```

The `build` target automatically creates a `platypod-multiarch` buildx builder
(using the `docker-container` driver) on first run.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE -->
## Usage

CyberChef is served on port `80`.

```sh
docker run -p 8080:80 ghcr.io/platypod/cyber-chef:latest
```

Then open [http://localhost:8080](http://localhost:8080) in your browser.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are welcomed, either as issues tagged "enhancement" or pull requests. Ideally, please follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary) standards.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feat/<feature>`)
3. Commit your Changes (`git commit -m '<type>[optional scope]: <description>'`)
4. Push to the Branch (`git push origin feat/<feature>`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [gchq/CyberChef](https://github.com/gchq/CyberChef) — the upstream project this image is built from.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/platypod/cyber-chef.svg?style=for-the-badge
[contributors-url]: https://github.com/platypod/cyber-chef/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/platypod/cyber-chef.svg?style=for-the-badge
[forks-url]: https://github.com/platypod/cyber-chef/network/members
[stars-shield]: https://img.shields.io/github/stars/platypod/cyber-chef.svg?style=for-the-badge
[stars-url]: https://github.com/platypod/cyber-chef/stargazers
[issues-shield]: https://img.shields.io/github/issues/platypod/cyber-chef.svg?style=for-the-badge
[issues-url]: https://github.com/platypod/cyber-chef/issues
[license-shield]: https://img.shields.io/github/license/platypod/cyber-chef.svg?style=for-the-badge
[license-url]: https://github.com/platypod/cyber-chef/blob/master/LICENSE.txt
