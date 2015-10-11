{Transform} = require 'stream'
class JSONParseStream extends Transform
  constructor: (options) ->
    super objectMode: true

  _transform:(chunk, enc, next) =>
    @push JSON.parse(chunk.toString())
    next()

module.exports = JSONParseStream
