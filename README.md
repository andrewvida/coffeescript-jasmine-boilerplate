# coffeescript-jasmine-boilerplate

coffeescript-jasmine-boilerplate is a small framework that was created with code katas in mind.  It gives you quick way
to begin writing and testing CoffeeScript with Jasmine.

## Getting Started

First, you'll need [node.js](http://nodejs.org) and [PhantomJS](http://phantom.js) installed.

Next, clone the repo and create your project:

``` bash
$ git clone git://github.com/andrewvida/coffeescript-jasmine-boilerplate <your-project-name>
```

Then, install grunt and all of its dependencies:
``` bash
$ npm install
```

## About
coffeescript-jasmine-boilerplate includes several plugins that allow you to focus on your kata.  grunt-contrib-watch has been configured
to keep an eye on whenever CoffeeScript files change. grunt-contrib-coffee will automatically compile your CoffeeScript into JavaScript and grunt-contrib-jasmine
executes your jasmine specs.

Also included is [jasmine-given](https://github.com/searls/jasmine-given).  It is a jasmine helper that encourages leaner, meaner specs using `Given`, `When`, and `Then`.

## Usage

Once you're ready, kick it off by executing:

``` bash
$ grunt watch
```
