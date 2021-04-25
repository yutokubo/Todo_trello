const { environment } = require('@rails/webpacker')

module.exports = environment

//コード追加
const webpack = require('webpack')
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)
