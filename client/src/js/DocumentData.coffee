module.exports =
  init: ->
    localStorage.clear()
    localStorage.setItem 'document', JSON.stringify [
      { title: 'Test 1', data: 'Lorem onesum', author: 'Me' }
      { title: 'Test 2', data: 'Lorem twosum', author: 'Me' }
      { title: 'Test 3', data: 'Lorem threesum', author: 'Me' }
    ]

