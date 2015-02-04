React = require 'react'

DocumentSidebar = React.createClass
  render: ->
    documents = @props.documents.map (doc) ->
      <li>
        <p>Title: { doc.title }</p>
        <p>Data: { doc.data } </p>
        <p>Author: { doc.author }</p>
      </li>

    (<ul>
      {documents}
    </ul>)

module.exports = DocumentSidebar
