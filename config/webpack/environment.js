const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

environment.config.merge({
  performance: {
    maxEntrypointSize: 512000,
    maxAssetSize: 512000
  }
})

module.exports = environment
