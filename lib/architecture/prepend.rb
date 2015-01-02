module Architecture
  class Prepend
    include Entityable
    include Contentable

    def initialize(source:, content: "", context: {})
      @entity = Entity.new(path: source)
      @content = content
      @context = context
    end

    def call
      if entity.file?
        entity.write(text: data)
      else
        raise ArgumentError, "Source wasn't a file"
      end
    end

    private def content
      @content + entity.content
    end
  end
end
