Before everything, install the modules first.
To install server modules:
```console
$ npm install
```

To install react modules:
```console
$ cd client
$ npm install
```

To run react app on local development
```console
$ cd client
$ npm start
```

To serve the react app locally using express server
```console
$ npm run build
$ npm start
```

To create docker image

```console
$ docker build -t coffeeshop/frontend .
```

To run docker image on port 3000

```console
$ docker run --name coffeeshop/frontend -p 3000:3000 coffeeshop/frontend
```