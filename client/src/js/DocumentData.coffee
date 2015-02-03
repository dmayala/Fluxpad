module.exports =
  init: ->
    localStorage.clear()
    localStorage.setItem 'document', JSON.stringify [
      { title: 'Test', data: 'Lorem ipsum', author: 'Me' }
    ]

