{Transform} = require 'stream'
class JSONParseStream extends Transform
  constructor: (options) ->
    super objectMode: true

  _transform:(chunk, enc, next) =>
    jsonObj = JSON.parse chunk.toString()
    next()
    @push jsonObj

module.exports = JSONParseStream
