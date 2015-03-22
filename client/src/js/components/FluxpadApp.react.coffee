React = require 'react'
DocumentStore = require '../stores/DocumentStore'

# components
DocumentSidebar = require './DocumentSidebar.react'
DocumentPanel = require './DocumentPanel.react'

getState = ->
  documents: DocumentStore.getDocuments()
  selectedDocument: DocumentStore.getSelected()

class FluxpadApp extends React.Component

  constructor: ->
    @state = getState()

  componentDidMount: ->
    DocumentStore.addChangeListener @_onChange

  componentWillUnmount: ->
    DocumentStore.removeChangeListener @_onChange

  _onChange: => @setState getState()

  _onInputChange: (value) =>
    document = @state.documents[@state.selectedDocument]
    document['data'] = value
    @setState document: document

  render: =>
    documents = @state.documents
    selected = @state.selectedDocument

    (
      <div>
        <DocumentSidebar selected={selected} documents={documents} />
        <DocumentPanel document={ documents[selected] } onInputChange={@._onInputChange} />
      </div>
    )

module.exports = FluxpadApp
