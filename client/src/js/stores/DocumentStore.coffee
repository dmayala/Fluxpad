AppDispatcher = require '../dispatcher/AppDispatcher'
EventEmitter = require('events').EventEmitter
Constants = require '../constants/Constants'
_ = require 'underscore'

_documents = {}

loadDocumentData = (data) -> _documents = data[0]

DocumentStore = _.extend {}, EventEmitter::,
  getDocuments: -> _documents

  emitChange: -> @emit 'change'
  addChangeListener: (cb) -> @on 'change', cb
  removeChangeListener: (cb) -> @removeListener 'change', cb

AppDispatcher.register (payload) ->
  action = payload.action

  switch action.actionType
    when Constants.RECEIVE_DATA then loadDocumentData(action.data)
    else return true

  DocumentStore.emitChange()
  return true

module.exports = DocumentStore
