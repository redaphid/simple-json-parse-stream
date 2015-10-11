{Transform} = require 'stream'
class JSONParseStream extends Transform
  constructor: (options={}) ->
    super objectMode: true

  _transform:(chunk, enc, next) =>
    jsonString = chunk.toString().trim()    
    next()
    return if jsonString == ''
    @push JSON.parse(jsonString)

module.exports = JSONParseStream
