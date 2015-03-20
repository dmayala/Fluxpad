React = require 'react'

class DocumentPanel extends React.Component
  render: ->
    (<div id="main-region" className="col-xs-12 maxheight">
      <form className="maxheight">
        <div className="form-group">
          <input type="text" className="form-control" value={@props.document.title} />
        </div>
        <div className="form-group notepad" >
          <textarea type="text" className="form-control" value={@props.document.data}></textarea>
        </div>
        <button type="submit" className="btn btn-default">Save</button>
      </form>
    </div>)

module.exports = DocumentPanel
