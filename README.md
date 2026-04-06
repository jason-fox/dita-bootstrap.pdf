# DITA Bootstrap Print

A plug-in for [DITA Open Toolkit][1] that adds PDF print output to the [DITA Bootstrap plug-in][2].


- [Installing](#installing)
- [Using](#using)
- [Featured Bootstrap components](#featured-bootstrap-components)
- [Customizing](#customizing)
- [License](#license)

## Installing

Use the `dita` command to add this plug-in and its requirements to your DITA Open Toolkit installation:

```console
dita install net.infotexture.dita-bootstrap
dita install https://github.com/infotexture/dita-bootstrap.print/archive/master.zip
```

## Using

Specify the `pdf` format when building output with the `dita` command. If the plug-in is installed, the Bootstrap-based XSL-FO overrides will be applied automatically.

```console
dita --input=path/to/your.ditamap \
     --format=pdf
```

## Featured Bootstrap components

The plug-in includes XSL-FO specializations for the following Bootstrap components, allowing you to use the same `outputclass` values as the HTML5 version to achieve a consistent look in print:

- [Accordions](https://getbootstrap.com/docs/5.3/components/accordion/)
- [Alerts](https://getbootstrap.com/docs/5.3/components/alerts/)
- [Badges](https://getbootstrap.com/docs/5.3/components/badge/)
- [Buttons](https://getbootstrap.com/docs/5.3/components/buttons/)
- [Cards](https://getbootstrap.com/docs/5.3/components/card/)
- [Carousels](https://getbootstrap.com/docs/5.3/components/carousel/)
- [Figures](https://getbootstrap.com/docs/5.3/content/figures/)
- [Grid layout](https://getbootstrap.com/docs/5.3/layout/grid/)
- [Icons](https://icons.getbootstrap.com)
- [List groups](https://getbootstrap.com/docs/5.3/components/list-group/)
- [Notes](https://getbootstrap.com/docs/5.3/components/alerts/) (Specialized as Bootstrap Alerts)
- [Tables](https://getbootstrap.com/docs/5.3/content/tables/)

## Customizing

### Common Bootstrap utility classes

Many of the common Bootstrap utility classes for borders, background, text, and spacing can be used via the `outputclass` attribute in DITA topics. The print plug-in interprets these classes and applies corresponding XSL-FO styling.

For more information on the available classes, see the [main DITA Bootstrap documentation][2].



## License

[Apache 2.0](LICENSE) © 2026 Jason Fox

[1]: http://www.dita-ot.org
[2]: https://github.com/infotexture/dita-bootstrap
