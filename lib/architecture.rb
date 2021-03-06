require "mustache"

module Architecture
  require_relative "architecture/contentable"
  require_relative "architecture/entityable"
  require_relative "architecture/replicatable"
  require_relative "architecture/entity"
  require_relative "architecture/append"
  require_relative "architecture/copy"
  require_relative "architecture/delete"
  require_relative "architecture/create"
  require_relative "architecture/move"
  require_relative "architecture/overwrite"
  require_relative "architecture/prepend"
  require_relative "architecture/replace"
  require_relative "architecture/version"

  EMPTY_CONTEXT = {}
  EMPTY_PATTERN = ""
  EMPTY_CONTENT = ""

  private def architecture(source:, destination:, &block)
    ::Architecture::DSL.new(source: source, destination: destination, &block)
  end
end
