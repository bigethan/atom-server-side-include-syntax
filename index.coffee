module.exports =
  activate: (state) ->
      atom.packages.activatePackage('server-side-include-syntax').then ->
          path = require 'path'
          atom.workspace.observeTextEditors (editor) ->
              if /^\.shtml?$/.test(path.extname(editor.getPath()))
                editor.setGrammar(atom.grammars.grammarForScopeName('text.html.ssi'))
