React = require 'react'

DocumentPanel = React.createClass
  render: ->
    <div id="main-region" className="col-xs-12 maxheight">
      { @props.document.data }
    </div>

module.exports = DocumentPanel