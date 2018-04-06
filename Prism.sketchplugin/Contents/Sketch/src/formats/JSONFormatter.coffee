
class JSONFormatter extends FormatterBase

  id: ->
    "JSON"
  name: ->
    "JSON rgba"
  format: ->
    "colors.json"

  supportClipboard: ->
    true

  exportAsString: (colorDictionaries) ->
    result = {}

    for colorDictionary in colorDictionaries
      log colorDictionary
      result["#{colorDictionary.name.trim()}"] = "rgba(#{Math.round(colorDictionary.red * 255)},#{Math.round(colorDictionary.green * 255)},#{Math.round(colorDictionary.blue * 255)},#{Math.round(colorDictionary.alpha * 100) / 100})"

    JSON.stringify(result, undefined, 4)
