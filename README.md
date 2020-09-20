# 🌐 [`mkws(1)`](https://mkws.sh)

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/mkws-1/netlify-blank) [![Deploy to Vercel](https://vercel.com/button)](https://vercel.com/new/git/external?repository-url=https://github.com/mkws-1/vercel-blank)


[![GitHub license](https://img.shields.io/github/license/mkws-1/mkws-1)](https://github.com/mkws-1/mkws-1/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Fgithub.com%2Fmkws-1%2Fmkws-1)](https://twitter.com/intent/tweet?text=Check%20out%20this%20static%20site%20generator!&url=https%3A%2F%2Fgithub.com%2Fmkws-1%2Fmkws-1)
![Twitter Follow](https://img.shields.io/twitter/follow/mkws_1?style=social)

> Efficient Static Site Generator

<img src=https://mkws.sh/images/gha.svg#>

⚙️While on a Linux machine, just:

```sh
mkdir -p ~/src/
cd ~/src/
wget -O - https://mkws.sh/mkws@4.0.3.tgz | tar -xzvf -
mv ws.sh example.com
cd example.com
cat <<EOF > index.upphtml
<p>
#!
echo hello, world
#!
</p>
EOF
./bin/mkws https://example.com

```

You can create more `*.upphtml` files to make additional pages, the
layout file is held in `./share/l.upphtml`.

Also, you can always modify your `./bin/mkws` script, if it's the case.

## ℹ️ Important

Because [`pp(1)`](https://mkws.sh/pp.html) uses
[`sh(1)`](
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)
internally, double quotes (`"`) must be escaped in templates, so to get
an actual double quote (`"`) you have to write `\"`. This isn't a
problem for `HTML` because [double quoting attribute values is
optional and double quotes and single quotes are
interchangeable](
https://html.spec.whatwg.org/multipage/syntax.html#attributes-2).
We recommend not quoting attribute values and using single quotes (`'`)
in special cases.
