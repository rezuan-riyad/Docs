# Webpack | Asset Management
To include any other type of file, besides JavaScript, there is a loader or built-in [Asset Modules](https://webpack.js.org/guides/asset-modules/) support
## Loading CSS
```npm install --save-dev style-loader css-loader``` 

**webpack.config.js**
```js
const path = require('path');

module.exports = {
  entry: './src/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist')
  },
  module: {
    rules: [
      { test: /\.css$/i, use: ['style-loader', 'css-loader'] },
    ],
  },
};
```
## Loading Images
As of webpack 5, using the built-in Asset Modules we can easily incorporate those in our system 
```js
// inside rules list
{
  test: /\.(png|svg|jpg|jpeg|gif)$/i,
  type: 'asset/resource',
}
```
## Loading Fonts
```js
{
  test: /\.(woff|woff2|eot|ttf|otf)$/i,
  type: 'asset/resource',
},
```
## Loading Data
To import CSVs and XML, ```csv-loader``` and ```xml-loader``` need to be installed.
```
{
  test: /\.(csv|tsv)$/i,
  use: ['csv-loader'],
},
{
  test: /\.xml$/i,
  use: ['xml-loader'],
},
```
Importing JSON data will work by default.

# Output Management
## html
