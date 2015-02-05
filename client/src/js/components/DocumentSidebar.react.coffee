React = require 'react'
Actions = require '../actions/Actions'

DocumentSidebar = React.createClass
  _onClick: (i) -> Actions.setCurrentDocument i

  render: ->
    documents = @props.documents.map (doc, i) =>
      <li onClick={ @_onClick.bind(@, i) } key={i}>{ doc.title }</li>

    (<ul>
      {documents}
    </ul>)

module.exports = DocumentSidebar
