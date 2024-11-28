# EXA-Sub-Domain

(EXA, Example)

Contains a working example of using Flask in the context of a domain
subdirectory.

### Setup

Install Docker and Docker Compose.

Add the following to your `hosts` file:

```bash
127.0.0.1       example.go
```

**Linux most common `hosts` file location**

`/etc/hosts`

(open with sudo if needed, edit, then save)

**Windows `hosts` file location**

`c:\Windows\System32\drivers\etc\hosts`

(copy to desktop, edit, then paste back to folder)

### Run

```bash
docker-compose up --build
```

### Info

This example is set up in a way that you will see both the Nginx
logs and Flask logs in the terminal, after running the above command.

A blueprint is used to match the subdirectory that Flask sits under in the
Nginx site config [5050.app.nginx](nginx_sites_enabled/5050.app.nginx).

The root of the `example.go` domain will show the html page in the
`[nginx_html](nginx_html)` folder. The Flask app will be available at `/subdir`
of the domain.
