React = require 'react'
DocumentStore = require '../stores/DocumentStore'

getState = ->
  documents: DocumentStore.getDocuments()

FluxpadApp = React.createClass

  getInitialState: -> getState()

  componentDidMount: ->
    DocumentStore.addChangeListener @_onChange

  componentWillUnmount: ->
    DocumentStore.removeChangeListener @_onChange

  _onChange: -> @setState getState()

  render: ->
    document = @state.documents
    <div>
      <p>Title: { document.title }</p>
      <p>Data: { document.data } </p>
      <p>Author: { document.author }</p>
    </div>

module.exports = FluxpadApp
